---
description: Интеграция Loginom с REST-сервисом. Параметры подключения. Авторизация при выполнении запроса.
---
# ![](./../../../images/icons/common/data-sources/web-rest_default.svg) REST Service Connection

Parameters of the REST service connection, request and response are set. The output connection data is used by the [REST Request](./../../../processors/integration/rest-request.md) node.

## Connection Parameters

* **Service URL**: address of request sending to REST service is set.
* **Метод** — выбирается один из HTTP-методов, используемых при отправке запросов к сервису: GET, DELETE, POST, PUT, PATCH.

   * При выборе методов GET, DELETE доступны настройки:
      * *Допустимый Content-type ответа* — узел REST-запрос, использующий данное подключение, проверяет тип ответа на соответствие заявленному в данном параметре. If the types are inconsistent, the output data set of this node will contain an error message. Данная проверка не осуществляется, если параметр имеет значение `*/*`.
      * *Параметры запроса* — задается перечень параметров запроса, их имена и типы данных. В последующем, в узле вызова REST-сервиса значения параметров подставляются в URL запроса.
   * При выборе методов POST, PUT, PATCH доступны настройки:
      * *Тип Content-type запроса* — задается значение заголовка `Content-type` HTTP-запроса к REST-сервису. It is allowed both to select from the list of predefined values, and to enter a random value.
      * *Допустимый Content-type ответа* — то же, что и для *GET*, *DELETE* методов (см. above).
* **Таймаут подключения (мс)** — максимальное время установки TCP-соединения с сервером в миллисекундах, по истечении которого соединение будет прервано со статусом ошибки. If this parameter is equal to 0, timeout is not limited.
* **Таймаут обмена данными (мс)** — максимальное время, которое будет затрачено на отправку HTTP-запроса и получение ответа, по истечении которого обмен будет прерван со статусом ошибки. If this parameter is equal to 0, timeout is not limited.
* **Ignore SSL certificate errors**: if this checkbox is selected, the errors detected while testing the server certificate to be connected with are ignored.

## Authentification for Request Execution

* **Authentification type** provides a drop-down list with authentification options:
   * **Not required**: when selecting this option, Megaladata does not perform authentification when connecting to the service.
   * **Имя пользователя и пароль** — выбирается, если требуется аутентификация по имени/паролю. Поддерживаются следующие типы аутентификации по имени пользователя и паролю:
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
* **Хранилище сертификатов** — выпадающий список, который становится доступен при выборе *Клиентский сертификат из хранилища*. One of the certificate stores available in the system is selected from the list. Then the certificate used for authentification is selected in the table under the list.
* **User certificate** field becomes active when selecting *Client certificate files* in which certificate location is specified (in file storage) that is used for connection to REST service.
* **Private key** field becomes active when selecting *Client certificate files* in which private key location is specified (in file storage) that is used for connection to REST service.
* **Private key password** field becomes active if *Client certificate files* type is selected. This password enables to decrypt the key.