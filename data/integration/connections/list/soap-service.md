---
description: Подключение Loginom к внешнему SOAP-сервису. Параметры подключения. Авторизация для выполнения запроса.
---
# ![ ](./../../../images/icons/common/data-sources/web-soap_default.svg) SOAP Service Connection

Loginom gives an opportunity to connect to the external SOAP service and import the data provided by it for further processing and analysis.

## Connection Parameters

The following parameters are set during the connection setup:

* **Authentification type** provides a drop-down list with authentification options.
   * **Not required**: when selecting this option, Megaladata does not perform authentification when connecting to the service.
   * **Username and password**: this option is selected when authentification by name/password is required by SOAP service for work.
   * **OAuth token** is selected when connecting to SOAP service via [OAuth](https://ru.wikipedia.org/wiki/OAuth) protocol.
   * **Client certificate from store** is selected for SSL authentification by certificate.
   * **Client certificate files** is selected if authentification by the client certificate is required. If this authentification type is used, it is required to select necessary certificate and private key from file storage and enter the private key password.
* **Username** field becomes active if *Username and password* type is selected. It uses the name set by a user during his registration in the SOAP service system for the authentification purposes.
* **Password** field becomes active if *Username and password* type is selected. It uses the password set by a user during his registration in the SOAP service system for the authentification purposes.
* **OAuth token**: the field becomes active if *OAuth token* type is selected. The authentification process is implemented via OAuth protocol that grants rights to one service (application) to get access to the user resources available in another service. For example, authorization via social networks.
* **Certificate store**: the drop-down list that becomes available when selecting *Client certificate from store*. One of the certificate stores available in the system is selected from the list. Then the certificate used for authentification is selected in the table under the list.
* **User certificate** field becomes active when selecting *Client certificate files* in which certificate location is specified (in file storage) that is used for connection to SOAP service.
* **Private key** field becomes active when selecting *Client certificate files* in which private key location is specified (in file storage) that is used for connection to SOAP service.
* **Private key password** field becomes active if *Client certificate files* type is selected. This password enables to decrypt the key.
* **WSDL source**: URL or path (in file storage) of WSDL file with the service description is specified in this field.
* **Enable reserve WSDL source**: when selecting this checkbox, *Reserve WSDL source* is enabled.
   * **Reserve WSDL source**: the reserve WSDL source is specified. It will be used by the application if the main source is not available, or if errors occur while parsing the main WSDL.
* **Transform WSDL description using XSLT**: selection of this checkbox enables to introduce changes into the received WSDL file using XSLT transformation.
   * **XSLT path**: URL or path (in file storage) of XSLT file is specified in this field.
* **Connection timeout (ms)**: the maximum timeout of server response wait expressed in milliseconds upon expiration of which the access will be terminated with an error status providing that there is no response.
* **Data exchange timeout (ms)**: the maximum timeout of data wait from server expressed in milliseconds upon expiration of which the access will be terminated with an error status providing that there is no response.
* **Ignore SSL certificate errors**: when SSL connecting, the server certificate can fail the test due to some reasons. If this checkbox is selected, errors caused by untested certificate are ignored, otherwise connection will not be established.

## Authentification for Request Execution

* **Authentification is the same as for WSDL**: when this checkbox is selected, the same authentification parameters are used as for WSDL. If the request execution authentification differs from the WSDL authentification, it is required to deselect the checkbox and set the required parameters. Options are similar to *Authentification Type* settings from *Connection parameters*.

## Node Description

* **Caption** contains the connection name set by a user.
* **Comment**: it is possible to provide any reference data concerning connection in this form.
