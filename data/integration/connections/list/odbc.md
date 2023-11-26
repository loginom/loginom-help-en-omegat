---
description: Интеграция Loginom с одним из источников данных ODBC. Параметры подключения. Список предустановленных в ОС Windows драйверов ODBC.
---
# ![ ](../../../images/icons/common/data-sources/driver-odbc_default.svg) ODBC Connection

It is used for connection to one of the [ODBC](https://wiki.loginom.ru/articles/odbc.html) data sources.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `DSN | ODBC connection string` kind. Выбирается один из настроенных в системе источников данных или указывается строка подключения в формате установленного в системе драйвера ODBC.

> **Примечание:** В Loginom Desktop может указываться File DSN (файл с настройками подключения).

Список источников вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). The available ODBC data sources are listed. Настройка источников осуществляется в [администраторе источников данных ODBC Windows](https://docs.microsoft.com/ru-ru/sql/database-engine/configure-windows/open-the-odbc-data-source-administrator). Там же содержится информация об установленных в системе драйверах и можно узнать формат строки подключения.

> **Примечание:** Необходимо учитывать, что источники данных, заданные в разделе "Пользовательский DSN" администратора источников данных ODBC, доступны только создавшим их пользователям. Поэтому эти источники могут быть недоступны пользователю, из-под которого запускается приложение/служба Loginom. Рекомендуется создавать источники данных ODBC в разделе "Системный DSN", поскольку они доступны всем пользователям.


* **Test**: test of the specified connection settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.
* **Показывать системные таблицы** — при установке этого флага в мастере импорта, использующего данное подключение, становятся видимы доступные пользователю системные таблицы БД (необходимо ставить при подключении к файлу Excel).
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Не использовать клиент СУБД** — для подключений ODBC эта опция не используется.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail. Параметр активен, если поддерживается драйвером.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection, it is required to install the ODBC driver with the same bitness as the Loginom application/server bitness. Two ODBC data sources administrators are used in 64 bit OS - 32 bit C:\Windows\SysWOW64\odbcad32.exe and 64 bit C:\Windows\System32\odbcad32.exe.

List of the ODBC drivers preinstalled in Windows OS:

32 bit:

* SQL Server
* Microsoft ODBC for Oracle
* Microsoft Access Driver (*.mdb)
* Microsoft dBase Driver (*.dbf)
* Microsoft Excel Driver (*.xls)
* Microsoft Paradox Driver (*.db )
* Microsoft Text Driver (*.txt; *.csv)
* Microsoft Visual FoxPro Driver

64 bit:

* SQL Server

List of the ODBC drivers for which it is recommended to use the connection string:

* Different drivers for SQL Server
* Microsoft Text Driver
* Firebird/InterBase® driver
* Microsoft Excel Driver
* Microsoft Access Driver
* Microsoft dBASE Driver
* Drivers for Oracle
* SQLite3 ODBC Driver
* Drivers for MySQL
* Microsoft Paradox Driver
* Microsoft Visual FoxPro Driver
* Drivers for PostgreSQL
* Drivers for Sybase/Adaptive Server Enterprise
* Drivers for Apache Hive

If the driver is not listed, it is possible to set up a connection to it only by selecting already configured data source.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/ODBC);
* [Site with rules and examples of connection string writing](https://www.connectionstrings.com/);
* [Examples of writing of connection strings for different data sources](https://www.sqlmaestro.com/resources/all/anysql_maestro_connection_strings/).
