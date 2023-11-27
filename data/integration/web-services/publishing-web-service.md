---
description: Создание и публикация веб-сервиса в Loginom. Реализация методов сервиса. Настройка публикуемых узлов. Совместимость веб-сервисов Loginom с Deductor. Обращение к созданному сервису. SOAP-запрос. REST-запрос.
---
# Create and Publish Web Services

Publication and operation of the web services created in Loginom are available if the [Loginom Integrator](https://help.loginom.ru/adminguide/windows/integrator/) component is installed.

## Implementation of the Service Methods

Interaction with web service is performed using its methods. Each web service method has a particular identifier and performs the action that matches this identifier. As a rule, the method receives the input data and returns the response (but not necessarily). The action performed by the method is implemented in Loginom by the published Workflow node, and the structure of the input data and response is defined by the input and output ports of this node. The string that consists of the node name and name of the package with the node is used as the method identifier.

Most frequently, the *[Supernode](./../../processors/control/supernode.md)* is used as such node, because a user can implement the random logics in it and set the structure of the input and output data creating and configuring its ports. But, generally, any Workflow node with the settings described in *[Configure published nodes](#nastroyka-publikuemykh-uzlov)* section can be such node. If the package contains several such nodes and several packages are published, the SOAP service method and REST service operation are created for each of such nodes providing that it complies with it. In the case of REST service, the REST service endpoint is created for each of the published packages.

## Configure Published Nodes

The node published as the web service method must have the following settings:

* The following *[access modifier](./../../workflow/access-modifier.md)* is set: `Published`;
* The node name that is unique within the package is set in the *access modifier* selection window;
* The node must be visible from the workflow root, namely, if the node is nested (into the supernode or hierarchy of supernodes), `Public` *access modifier* must be installed for all supernodes that include it;
* The fields/variables that define the request structure and web service method response are set in the input and output ports.

> **Important:** When *[Automapping of fields](./../../workflow/ports/automapping-of-fields.md)* is used, there might be situations in which the fields/variables in ports are defined by the automapping mechanism based on structure of the data supplied to the port. If the port link with the data source is deleted when automapping is enabled, the fields/variables that have been earlier created from the data will be deleted from the port by the automapping mechanism as the temporary ones that are relevant only to the specific data. When publishing such node, the fields/variables in the ports will not be set, correspondingly, structures of the service request/response will not be defined.
>
> Consequently, ports of the published nodes must be configured using one of the following methods:
> * It is required to disable *Automapping of fields* and set the required fields/variables (recommended) when applicable.
> * If the required fields/variables have been already created by the automapping mechanism from the data supplied to the port, it is required to edit any of the following *[parameters](./../../processors/transformation/fields-features.md)* (*Name*, *Caption*, *Usage type*, etc.) of all required fields/variables. If the changed fields are highlighted in bold in the wizard, and they are reflected as the constant ones expected by the port.
> * Clean the list and create all required fields/variables manually.

*Usage type* parameter of the input field affects its property of obligatory specification in the service request. The fields with `Unspecified`or `Useless` *Usage type* are published as optional (they have `minOccurs="0"` attribute in WSDL of SOAP service, they are not included into *required* nodes in the request schema of REST service). The fields with other parameter values are required in the request. All fields are published as the required ones in the service response.

## Publication

When workflow nodes are set as the nodes required for publication, it is necessary to publish the package.

> **Note:** In order to minimise possible problems of connection to the web service using the external clients, it is recommended to use only the English alphabet characters, numbers and underscore character in the name of the published package.

To publish the package, it is required to go to [edit web service](./package-publishing-wizard.md#imagesiconssystemtoolbar48x48compasdefaultsvg-navigatsiya). When [navigation](./../../interface/main-menu.md) is opened, there are two methods:
* Go to [Web services](./administration-web-services.md) tab and press **Add** button;
* It is required to click on the published package using the right button and select **Publish**.

## Access to the Created Service

See the link below to get WSDL of the published SOAP service:

`http://<Server>/<App>/soap?wsdl` where `<Server>` — the Megaladata Integrator host, `<App>` is a name of the Megaladata Integrator application (it is set when installing Megaladata Integrator, when setting by default `<App>` = `lgi`).

Example: `http://localhost/lgi/?wsdl`

See the link below to get information on endpoints, operations, URL, structure of REST requests and responses:

`http://<Server>/<App>/rest/help` where `<Server>` — the Megaladata Integrator host, `<App>` is a name of the Megaladata Integrator application (it is set when installing Megaladata Integrator, when setting by default  `<App>` = `lgi`).

Example: `http://localhost/lgi/rest/help`

To provide access to the published services from the Loginom workflow, the [*SOAP request*](./../../processors/integration/soap-request.md) and [*REST request*](./../../processors/integration/rest-request.md) components are used.

Megaladata Integrator supports [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) and optionally includes Swagger UI. To test API, it is possible to execute requests on `http://<Server>/<App>/openapi/index.html` page.

Example: `http://localhost/lgi/openapi/index.html`

## Compatibility of the Loginom Web Services with Deductor

Web services were published using DIS ([Deductor Integration Server](https://basegroup.ru/deductor/components/integration-server)), DIS web services were accessed from the Deductor workflows using *WEB service* node in the past generation products ([Deductor](https://basegroup.ru/deductor/description)). In order to use this node to get access to the Loginom web services, *Use Loginom Integrator namespace* option must be used to publish packages.

> **Note:** When *Use Loginom Integrator namespace* option is used to publish several packages, it restricts naming of the published packages. The names set when selecting [access modifier](./../../workflow/access-modifier.md) must be unique within the whole set of the published packages.

The Loginom web services are distinguished by the following peculiarity: XML responses and requests of web services can have the following item in their structure: `<PortName>` (the item contains the port name). It is not available in the DIS web services. To eliminate this difference in the published Loginom supernodes, it is required to specify *<Unspecified>* in the port name.

> **Note:** *<Unspecified>* option is available while the port naming if this port is the only input or output one. In this case, to provide the request/response random structure, it is convinient to use as the *Supernode* ports the ports of the *Data tree* type that enable to set the data structure by the XSD schema, namely, to use the same mechanism that is used in Deductor Integration Server.