---
description: Интеграция Loginom к файлу Microsoft Excel как к базе данных . Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/file-excel_default.svg) MS Excel Connection

It is used for connection to the Microsoft Excel file as to a database.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Имя файла** — указывается путь к файлу, содержащему необходимые данные. Parameters can be manually entered, or it is possible to press ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button to call *Open file* window.
* **Тестировать** — тест указанных настроек подключения.
* **Показывать системные таблицы** — при установке этого флага в мастере импорта, использующем данное подключение, становятся видимы доступные пользователю системные таблицы БД.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Не использовать клиент СУБД** —  для Microsoft Excel изменение этого параметра не доступно.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

## Compatibility

Для подключения к файлам Microsoft Excel 2007 и выше  (*.xlsx) как к базе данных в системе необходимо наличие совпадающих по разрядности с приложением/сервером Loginom компонентов:
* Microsoft Excel 2007 and higher;
* [Microsoft Access Database Engine 2016 Redistributable](https://www.microsoft.com/en-us/download/details.aspx?id=54920).

Ошибки, возникающие с ODBC-драйвером, также решаются установкой данных компонентов, т.к. они содержат этот драйвер.

**See also:**

* [Official manufacturer website](https://www.microsoft.com/ru-ru);
* [Product Documentation](https://docs.microsoft.com/ru-ru/).
