---
description: Интеграция Loginom с базой данных Oracle. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-oracle_default.svg) Oracle Connection

It is used for connection to the Oracle database.

It is possible to provide connection both via DBMS client, and the internal Loginom driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: this string is used by the driver for database connection. The string connection format is defined by the used driver (refer to *Do not use DBMS client* parameter):
   * **When the inbox driver is used:** `host[:port]/ServiceName | host:port:SID` (parameter in [ ] is optional; the string format can be set as one of two options, | is used between options):
      * `host`: the DBMS server host.
      * `port`: the TCP port used by the DBMS server to provide interaction with the client.
      * `ServiceName`: service name.
      * `SID`: Oracle Database Instance (SID) that contains the required data.

   * **When DBMS client is used:** `net_service_name`: DBMS server host as it is specified in tnsnames.ora configuration file of the Oracle server.

%spoiler%Examples of connection string:%spoiler%

**When the inbox driver is used (without DBMS client use):**

`db-ora-03:1521:ORCL03`

`db-ora-03/orcl03.bg.local`

`db-ora-03:1521/orcl03.bg.local`

**With DBMS client use:**

`orcl.bg.local`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail. The field becomes active when "Do not use DBMS client" checkbox is selected. Timeout is configured in the connection string for the Oracle client if Easy Connect syntax is used, or in `tnsnames.ora` configuration file.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database via DBMS client, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

* Clients: 21c, 19c, 18c, 12c, 11g, 10g, 9i, 8i, 8.0
* Servers: 21c, 19c, 18c, 12c, 11g, 10g, 9i, 8i, 8.0, including Oracle Express Edition 11g and 10g

> **Important:** UTF8 encoding is used for data exchange with the server in Megaladata 7 and higher, and in previous versions - UTF16.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Official manufacturer website](https://www.oracle.com/)
* [Brief SQL Syntax Documentation](http://docs.oracle.com/database/122/SQLQR/toc.htm)
* [Full SQL Syntax Documentation](http://docs.oracle.com/database/122/SQLRF/toc.htm)
