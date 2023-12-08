---
description: Компонент REST-запрос в Loginom. Взаимодействие с внешним REST-сервисом. Отправка GET, PUT, DELETE, PATCH, POST запросов. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/web-rest-client_default.svg) REST Request

The component enables to interact with the external [REST service](https://ru.wikipedia.org/wiki/REST). It sends GET, PUT, DELETE, PATCH, POST requests to it and receives responses. The table with the request parameters is used as the input data set. REST service will get as many requests as there are rows in the input data set.

> **Note**: As the input data set with the request parameters is optional, when it is not provided, the REST service call node will send the only request without parameters.

The following data is generated in the output ports of the node:

- Table of the service responses.
- Additional data on the results of each request execution.

If GET и DELETE requests are sent, each row of the input data set must contain the request parameters, and in the case of PUT, PATCH, POST requests, the [HTTP request body](https://ru.wikipedia.org/wiki/HTTP#Тело_сообщения) must be provided. When configuring the node, the random number of [HTTP request headers](https://ru.wikipedia.org/wiki/HTTP#Заголовки) is set.

It is required to provide the configured [Connection to REST service](./../../integration/connections/list/rest-service.md) to work with REST service. The HTTP request method is selected, and the list of request parameters is defined when this connection is configured. The REST service call node checks the response type, and if the received response does not match the one stated in the `"Type of Response Content-Type"` parameter of the used connection, the output data sets of the node will contain error messages.

## Ports

### Input Ports

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) — Connection to REST service (connection to *REST Service Connection* component);
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) — Control variables (variables), optional;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) — Request data source (table with the request parameters), optional.

### Output Ports

* ![](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — Output data set (table with the service responses);
* ![](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — Additional data (table with the results of requests execution, errors description, exit codes and HTTP states).

## Wizard

The service call wizard consists of several steps.

### Configure Request

The request parameters are set at this stage. The list of the input data set fields is located on the left. The list of the parameters accepted by REST service is located on the right. It is required to establish the links between fields and parameters for provide further setup. It can be done in several ways:

* *Drag-and-drop* method: drag the field caption from the left list of the fields to the item of the request parameters list.
* It is necessary to select the required request parameter in the right table and select the field caption from the input data set from the drop-down list in the *Related fields* column.
* Use ![ ](./../../images/icons/common/toolbar-controls/auto-connect_default.svg) *Auto Link All* button. It providies auto linking of the input fields and request parameters based on values of captions and types of fields data of the input data set and parameters.

> **Note**: If the link between the field and object has been incorrectly established, it can be deleted. In order to do that, it is required to select the caption and press ![ ](./../../images/icons/link-grid/remove-link_hover.svg) button in the line. If all links are to be deleted, ![ ](./../../images/icons/common/toolbar-controls/remove-all-links_default.svg) *Delete all links* button is used.

 In the case of PUT, PATCH, POST requests, the input table fields are linked to the predefined `request` parameter that accepts the HTTP request body.

**Specify time zone** parameter defines whether the [time zone](https://ru.wikipedia.org/wiki/Список_часовых_поясов_по_странам) information is specified according to [ISO_8601](https://ru.wikipedia.org/wiki/ISO_8601) when request parameters of the `Date/Time` type are transferred. Possible values:

- Do not specify;
- Specify always.

### Custom User Headers

HTTP request headers and their values are set at this stage.

### Additional Parameters

- **Provide description of error codes** enables to display description of the errors that occurred while request sending, receipt and parsing of the service response.

> **Note**: When state code HTTP >= 400, *Exit code* = 6 (`HTTP client error`) and corresponding *Error description* is displayed.

- **Save Request Text to Disk**: all requests sent to the service are written to the specified folder in the file storage.
- **Simulate request with response in a file**: when this checkbox is selected, no actual request is sent to the service, and the node substitutes content of the specified file as the service response.