---
description: Механизмы интеграции Loginom с внешними веб-сервисами и публикации своих собственных веб-сервисов. Работа с веб-сервисами. SOAP-запрос. REST-запрос.
---
# Web Services

Loginom provides the tools used for integration with external web services and publication of the own ones. Consequently, the solutions created on the Loginom base can be easily built into IT landscape of any complexity.

> **Note:** The web service tools are available only in the [server Loginom editions](https://loginom.ru/platform/pricing#compare).

The following Loginom platform components are required for the web services integration and operation:

* [Server](https://loginom.ru/platform/pricing#component-server) is the main platform component. It completes the loading, calculation, model training, visualization, right management and other tasks.
* [Integrator](https://loginom.ru/platform/pricing#component-integrator): the component responsible for publication of own web services based on the packages created in Loginom. It is used in combination with [IIS](https://ru.wikipedia.org/wiki/Internet_Information_Services) creating a separate application in it.
* [Adapter](https://loginom.ru/platform/pricing#component-adapter): optional component. It is required for interaction with non-standard web services, for example, with credit reference bureau.

## Web Services Operation

### Integration with External Web Services

The Loginom platform provides integration with [SOAP](https://ru.wikipedia.org/wiki/SOAP) or [REST](https://ru.wikipedia.org/wiki/REST) services.
For this purpose, it is required to [create](./../connections/README.md#nastroyka-podklyucheniya) corresponding connection:

- [SOAP Service Connection](./../connections/list/soap-service.md) (SOAP service);
- [REST Service Connection](./../connections/list/rest-service.md) (REST service).

Later on, the output data of the created connection is used by corresponding node designated for service calling:

- [SOAP request](./../../processors/integration/soap-request.md) — SOAP request;
- [REST request](./../../processors/integration/rest-request.md) — REST request.

> **Note:**
> * Some services provide response in the form of nested XML. [XML parsing](./../../processors/integration/extracting-xml.md) component is designated for its transformation to the table form. To transform the response received in the form of JSON, it is possible to use [JSON.parse()](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse) construction in [Java-script](./../../processors/programming/java-script) component
> * It is required to take into account the restrictions that are imposed while using Megaladata on the older Windows versions that are not supported by the modern data exchange protocols (TLS 1.1 and higher). As these protocols are required for interaction with some services, absence of their support by the operating system causes an error on service access.

### Creation of Own Web Services

It is possible to [create own SOAP and REST services](./../../integration/web-services/publishing-web-service.md). In this case, the logics of data processing of the request to the web service is implemented in the package node published as a web service. Most frequently, such node is a [supernode](./../../processors/control/supernode.md), as it is possible to implement the random processing logics in it. The input supernode [ports](./../../workflow/ports/README.md) set the service request structure, whereas the output ones set the response structure.

> **Note:** It is possible to publish several supernodes (nodes) in different packages. A separate method of SOAP service and URL REST service is created for each of them.
