---
description: Подключение Loginom к внешнему SOAP-сервису. Параметры подключения. Авторизация для выполнения запроса.
---
# ![ ](./../../../images/icons/common/data-sources/web-soap_default.svg) SOAP Service Connection

Loginom gives an opportunity to connect to the external SOAP service and import the data provided by it for further processing and analysis.

## Connection Parameters

The following parameters are set during the connection setup:

* **Тип аутентификации** — представляет выпадающий список с вариантами аутентификации.
   * **Не требуется** — при выборе этого пункта, Loginom не проводит аутентификацию при подключении к сервису.
   * **Имя пользователя и пароль** — выбирается если SOAP-сервис для работы требует аутентификацию по имени/паролю.
   * **OAuth token** is selected when connecting to SOAP service via [OAuth](https://ru.wikipedia.org/wiki/OAuth) protocol.
   * **Клиентский сертификат из хранилища** — выбирается для аутентификации по SSL посредством сертификата.
   * **Файлы сертификата клиента** — выбирается, если требуется аутентификация по сертификату клиента. При этом типе аутентификации необходимо выбрать нужный сертификат и приватный ключ из файлового хранилища, а также ввести пароль приватного ключа.
* **Имя пользователя** — поле становится активным, если выбран тип *Имя пользователя и пароль*. Использует для аутентификации имя заданное пользователем при его регистрации в системе SOAP-сервиса.
* **Пароль** — поле становится активным, если выбран тип *Имя пользователя и пароль*. Использует для аутентификации пароль заданный пользователем при его регистрации в системе SOAP-сервиса.
* **OAuth token**: the field becomes active if *OAuth token* type is selected. Аутентификация осуществляется по протоколу OAuth, который позволяет выдать одному сервису (приложению) права на доступ к ресурсам пользователя на другом сервисе. For example, authorization via social networks.
* **Хранилище сертификатов** — это выпадающий список, который становится доступен при выборе *Клиентский сертификат из хранилища*. One of the certificate stores available in the system is selected from the list. Затем в таблице под списком выбирается используемый для аутентификации сертификат.
* **Сертификат пользователя** — поле становится доступно при выборе *Файлы сертификата клиента*, в нем указывается расположение (в файловом хранилище) сертификата, используемого для подключения к SOAP-сервису.
* **Приватный ключ** — поле становится доступно при выборе *Файлы сертификата клиента*, в нем указывается расположение (в файловом хранилище) приватного ключа, используемого для подключения к SOAP-сервису.
* **Пароль приватного ключа** — поле становится активным, если выбран тип *Файлы сертификата клиента*. Это пароль, позволяющий расшифровать ключ.
* **WSDL source**: URL or path (in file storage) of WSDL file with the service description is specified in this field.
* **Enable reserve WSDL source**: when selecting this checkbox, *Reserve WSDL source* is enabled.
   * **Reserve WSDL source**: the reserve WSDL source is specified. It will be used by the application if the main source is not available, or if errors occur while parsing the main WSDL.
* **Transform WSDL description using XSLT**: selection of this checkbox enables to introduce changes into the received WSDL file using XSLT transformation.
   * **XSLT path**: URL or path (in file storage) of XSLT file is specified in this field.
* **Таймаут подключения (мс)** — максимальное время ожидания ответа от сервера в миллисекундах, по истечении которого при отсутствии отклика обращение будет прервано со статусом ошибки.
* **Таймаут обмена данными (мс)** — максимальное время ожидания данных от сервера в миллисекундах, по истечении которого при отсутствии отклика обращение будет прервано со статусом ошибки.
* **Ignore SSL certificate errors**: when SSL connecting, the server certificate can fail the test due to some reasons. If this checkbox is selected, errors caused by untested certificate are ignored, otherwise connection will not be established.

## Аутентификация для выполнения запроса

* **Аутентификация та же, что и для получения WSDL** — при выставлении флажка использует те же параметры аутентификации, что и при получении WSDL. Если аутентификация для выполнения запроса отличается от аутентификации для получения WSDL, то необходимо снять флаг и настроить необходимые параметры. Опции аналогичны настройкам *Тип аутентификации* из *Параметры подключения*.

## Node Description

* **Caption** contains the connection name set by a user.
* **Comment**: it is possible to provide any reference data concerning connection in this form.
