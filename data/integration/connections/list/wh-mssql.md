---
description: Интеграция Loginom с хранилищем данных Deductor Warehouse, основанным на СУБД MS SQL Server. Параметры подключения. Совместимость.
---
# ![wh-mssql](./../../../images/icons/common/data-sources/wh-mssql_default.svg) Connection to Deductor Warehouse [MS SQL]

It is used for connection to the [Deductor Warehouse](./../../../data-format/data-warehouse.md) Data Warehouse based on MS SQL Server DBMS.


## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `host[:port]:database` kind (the parameters enclosed in [ ]is optional):

   * `host`: the DBMS server host.
   * `port`: the TCP port used by the DBMS server to provide interaction with the client. If the parameter is null, `1433` is used as the default port.
   * `database`: database name.

These settings are used by the OLE DB driver to connect to database.

It is possible to set the connection string manually or in a separate window that can be called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button.

The window includes two fields:
* **Server**: the SQL server host. If it is necessary, the named instance of SQL server is specified using «\».
* **Database**: database name.

%spoiler%Examples of connection string:%spoiler%

`srv-db:db`

`srv-db:1433:db`

%/spoiler%

* **Test**: connectivity test with the specified settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.

* **Parameters**:
   * **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Codepage** enables to set the message language of the DB server and codepage for the values related to the character types represented not in UNICODE: char, varchar, text.
   * **Do not use DBMS client**: this parameter is not available for MS SQL.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.

* **Data warehouse parameters**:

   * **Schema name in database**: name of the schema in which metadata and DW data are kept.

      > **Note:** If schema name contains `"`, `[` `]` characters, error messages can be displayed.

* **Comment**: It is possible to provide any reference connection data in this field.

> **Note:** It is required to install DBMS client on the user computer with the same bitness as the Loginom application/server bitness.

## Compatibility

Starting from Microsoft SQL Server 2000 and higher.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

**See also:**

* [Information on Microsoft SQL Server in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Microsoft_SQL_Server).
* [Official website of the MS SQL Server manufacturer](https://www.microsoft.com/ru-ru/sql-server).
