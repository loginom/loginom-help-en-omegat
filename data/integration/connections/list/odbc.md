---
description: Интеграция Loginom с одним из источников данных ODBC. Параметры подключения. Список предустановленных в ОС Windows драйверов ODBC.
---
# ![ ](../../../images/icons/common/data-sources/driver-odbc_default.svg) ODBC Connection

It is used for connection to one of the [ODBC](https://wiki.loginom.ru/articles/odbc.html) data sources.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `DSN | ODBC connection string` kind. It is possible to select one of the data sources configured in the system, or the connection string in the format set in the ODBC driver system is specified.

> **Note:** File DSN (file with connection settings) can be specified in Megaladata Desktop.

List of the sources is called by clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. The available ODBC data sources are listed. The sources are configured in [ODBC Windows data sources administrator](https://docs.microsoft.com/ru-ru/sql/database-engine/configure-windows/open-the-odbc-data-source-administrator). It also contains information on the drivers installed in the system, and it is possible to define the connection string format.

> **Note:** It is required to take into account that the data sources set in "User DSN" section of ODBC data sources administrator are available only to the users that have created them. That is why these sources can be unavailable to the user who starts the Megaladata application/service. It is recommended to create the ODBC data sources in "System DSN" section because they are available to all users.


* **Test**: test of the specified connection settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible (it is required to select when connecting to the Excel file).
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: this option is not used for the ODBC connections.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail. The parameter is active if it is supported by the driver.
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
