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

## Аутентификация для выполнения запроса

* **Тип аутентификации** — представляет выпадающий список с вариантами аутентификации:
   * **Не требуется** — при выборе этого пункта Loginom не проводит аутентификацию при подключении к сервису.
   * **Имя пользователя и пароль** — выбирается, если требуется аутентификация по имени/паролю. Поддерживаются следующие типы аутентификации по имени пользователя и паролю:
      * Basic;
      * Digest;
      * NTLM;
      * Passport;
      * Negotiate.
   * **OAuth token** is selected when connecting to the web service via [OAuth](https://ru.wikipedia.org/wiki/OAuth) 2.0 protocol.
   * **Клиентский сертификат из хранилища** — выбирается для аутентификации по SSL посредством сертификата. Данный тип аутентификации используется для операционной системы Windows.
   * **Файлы сертификата клиента** — выбирается, если требуется аутентификация по сертификату клиента. При этом типе аутентификации необходимо выбрать нужный сертификат и приватный ключ из файлового хранилища, а также ввести пароль приватного ключа.
* **Username, Password**: the field becomes active if *Username and password* type is selected. Задают параметры аутентификации пользователя при его регистрации в системе веб-сервиса.
* **OAuth token**: the field becomes active if *OAuth token* type is selected. The token string is entered.
* **Хранилище сертификатов** — выпадающий список, который становится доступен при выборе *Клиентский сертификат из хранилища*. One of the certificate stores available in the system is selected from the list. Затем в таблице под списком выбирается используемый для аутентификации сертификат.
* **Сертификат пользователя** — поле становится доступно при выборе *Файлы сертификата клиента*, в нем указывается расположение (в файловом хранилище) сертификата, используемого для подключения к REST-сервису.
* **Приватный ключ** — поле становится доступно при выборе *Файлы сертификата клиента*, в нем указывается расположение (в файловом хранилище) приватного ключа, используемого для подключения к REST-сервису.
* **Пароль приватного ключа** — поле становится активным, если выбран тип *Файлы сертификата клиента*. Это пароль, позволяющий расшифровать ключ.