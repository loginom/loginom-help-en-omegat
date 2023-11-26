---
description: Подключение Loginom к внешнему SOAP-сервису. Параметры подключения. Авторизация для выполнения запроса.
---
# ![ ](./../../../images/icons/common/data-sources/web-soap_default.svg) SOAP Service Connection

Loginom gives an opportunity to connect to the external SOAP service and import the data provided by it for further processing and analysis.

## Connection Parameters

The following parameters are set during the connection setup:

* **Authentification type** provides a drop-down list with authentification options.
   * **Not required**: when selecting this option, Megaladata does not perform authentification when connecting to the service.
   * **Имя пользователя и пароль** — выбирается если SOAP-сервис для работы требует аутентификацию по имени/паролю.
   * **OAuth token** is selected when connecting to SOAP service via [OAuth](https://ru.wikipedia.org/wiki/OAuth) protocol.
   * **Client certificate from store** is selected for SSL authentification by certificate.
   * **Client certificate files** is selected if authentification by the client certificate is required. If this authentification type is used, it is required to select necessary certificate and private key from file storage and enter the private key password.
* **Username** field becomes active if *Username and password* type is selected. Использует для аутентификации имя заданное пользователем при его регистрации в системе SOAP-сервиса.
* **Пароль** — поле становится активным, если выбран тип *Имя пользователя и пароль*. Использует для аутентификации пароль заданный пользователем при его регистрации в системе SOAP-сервиса.
* **OAuth token**: the field becomes active if *OAuth token* type is selected. Аутентификация осуществляется по протоколу OAuth, который позволяет выдать одному сервису (приложению) права на доступ к ресурсам пользователя на другом сервисе. For example, authorization via social networks.
* **Хранилище сертификатов** — это выпадающий список, который становится доступен при выборе *Клиентский сертификат из хранилища*. One of the certificate stores available in the system is selected from the list. Then the certificate used for authentification is selected in the table under the list.
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

* **Аутентификация та же, что и для получения WSDL** — при выставлении флажка использует те же параметры аутентификации, что и при получении WSDL. Если аутентификация для выполнения запроса отличается от аутентификации для получения WSDL, то необходимо снять флаг и настроить необходимые параметры. Опции аналогичны настройкам *Тип аутентификации* из *Параметры подключения*.

## Node Description

* **Caption** contains the connection name set by a user.
* **Comment**: it is possible to provide any reference data concerning connection in this form.
