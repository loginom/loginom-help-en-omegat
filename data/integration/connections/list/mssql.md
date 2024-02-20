---
description: Интеграция Loginom с  базой данных MS SQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-mssql_default.svg) MS SQL Connection

It is used for connection to the MS SQL database.

The connection is provided via Microsoft OLE DB Driver for SQL Server or SQL Server Native Client. Preinstallation is required for both drivers.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `host[:port]:database` kind (the parameters enclosed in [ ] is optional):

   * `host`: the DBMS server host.
   * `port`: the TCP port used by the DBMS server to provide interaction with the client. If the parameter is null, `1433` is used as the default port.
   * `database`: database name.

It is possible to set the connection string manually or in a separate window that can be called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button.

The window includes two fields:

* **Server**: the SQL server host. If it is necessary, the named instance of SQL server is specified using «\».

* **Database**: database name.

%spoiler%Examples of connection string:%spoiler%

`srv-db:db`

`srv-db:1433:db`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Codepage** enables to set the message language of the DB server and codepage for the values related to the character types represented not in UNICODE: char, varchar, text.
* **Do not use DBMS client**: this parameter is not available for MS SQL.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string) It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞**: wait period is not limited.
   * **Numeric values**: selection from the following values: 5, 10, 20, 30, 60, 120.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, the clients or ODBC driver must be with the same bitness as the Loginom application/server bitness.

## Compatibility

* Clients.
   * SQL Native Client.
   * Microsoft OLE DB Driver.

* Servers.
   * SQL Server 2016, 2014, 2012, 2008 R2, 2008.
   * SQL Server 2000 (including MSDE).
   * SQL Server 7.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Microsoft_SQL_Server).
* [Official vendor's website](https://www.microsoft.com/ru-ru/sql-server).
* [SQL Syntax Documentation](https://docs.microsoft.com/ru-ru/sql/t-sql/queries/queries).
