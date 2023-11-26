---
description: Интеграция Loginom с REST-сервисом. Параметры подключения. Авторизация при выполнении запроса.
---
# ![](./../../../images/icons/common/data-sources/web-rest_default.svg) REST Service Connection

Parameters of the REST service connection, request and response are set. The output connection data is used by the [REST Request](./../../../processors/integration/rest-request.md) node.

## Connection Parameters

* **Service URL**: address of request sending to REST service is set.
* **Method**: one of the HTTP methods used while request sending to the service is selected: GET, DELETE, POST, PUT, PATCH.

   * When selecting GET, DELETE methods, the following settings are available:
      * *Allowable Content-type of response*: the REST request node that uses this connection, checks the response type for consistency with the data specified in this parameter. If the types are inconsistent, the output data set of this node will contain an error message. This test is not performed in the case of the following parameter value: `*/*`.
      * *Request parameters*: list of request parameters is set, as well as their names and data types. Subsequently, parameter values are substituted into request URL in the node used for REST service calling.
   * When selecting POST, PUT, PATCH methods, the following settings are available:
      * *Type of the Content-type request*: the `Content-type` header value of HTTP request to REST service is set. It is allowed both to select from the list of predefined values, and to enter a random value.
      * *Allowable Content-type of response*: the same as for *GET*, *DELETE* methods (refer to above).
* **Connection timeout (ms)**: the maximum time required for TCP server connection expressed in milliseconds upon expiration of which the connection will be terminated with an error status. If this parameter is equal to 0, timeout is not limited.
* **Data exchange timeout (ms)**: the maximum time that is required to send HTTP request and receive response upon expiration of which the exchange will be terminated with an error status. If this parameter is equal to 0, timeout is not limited.
* **Ignore SSL certificate errors**: if this checkbox is selected, the errors detected while testing the server certificate to be connected with are ignored.

## Authentification for Request Execution

* **Authentification type** provides a drop-down list with authentification options:
   * **Not required**: when selecting this option, Megaladata does not perform authentification when connecting to the service.
   * **Username and password**: this option is selected when authentification by name/password is required. The following types of authentification by username and password are supported:
      * Basic;
      * Digest;
      * NTLM;
      * Passport;
      * Negotiate.
   * **OAuth token** is selected when connecting to the web service via [OAuth](https://ru.wikipedia.org/wiki/OAuth) 2.0 protocol.
   * **Client certificate from store** is selected for SSL authentification by certificate. This authentification type is used for Windows operating system.
   * **Client certificate files** is selected if authentification by the client certificate is required. If this authentification type is used, it is required to select necessary certificate and private key from file storage and enter the private key password.
* **Username, Password**: the field becomes active if *Username and password* type is selected. They set user authentification parameters during his registration in the web service system.
* **OAuth token**: the field becomes active if *OAuth token* type is selected. The token string is entered.
* **Certificate store**: the drop-down list that becomes available when selecting *Client certificate from store*. One of the certificate stores available in the system is selected from the list. Then the certificate used for authentification is selected in the table under the list.
* **User certificate** field becomes active when selecting *Client certificate files* in which certificate location is specified (in file storage) that is used for connection to REST service.
* **Private key** field becomes active when selecting *Client certificate files* in which private key location is specified (in file storage) that is used for connection to REST service.
* **Private key password** field becomes active if *Client certificate files* type is selected. This password enables to decrypt the key.