---
description: Интеграция Loginom с базой данных MySQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-mysql_default.svg) MySQL Connection

It is used for connection to the MySQL database.

It is possible to provide connection both via DBMS client, and the internal Loginom driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `host[:port][:database]` kind (the parameters enclosed in [ ] are optional):

   * `host`: the DBMS server host. The host value must be `localhost<x4/ to connect via the Shared Memory protocol.
   * `port`: the TCP port used by the DBMS server to provide interaction with the client.  If the `port` value is not the correct port number, attempt to connect via the Shared Memory protocol is made. In this case `port` matches `shared-memory-base-name`. If the parameter is null, and `host` is not `localhost`, connection is provided via TCP/IP protocol with default port `3306`.
   * `database`: database name. If `port` parameter is null, it is allowed to leave this parameter null, in this case, all available databases will be shown.

These settings are used by the OLE DB driver to connect to database.

Connection string can be empty. In this case, connection to `localhost` is provided.

It is possible to set the connection string manually or in a separate window that can be called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button.

The window includes two fields:

* **Server**: MySQL server host.

* **Database**: database name.

%spoiler%Examples of connection string:%spoiler%

`srv-db`

`srv-db:db`

`srv-db:3306`

`srv-db:3306:db`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.

* **SSL settings**: parameters required for secure connection to My SQL. They are set in a separate window that is called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. Value of the following parameters can be set in the window:

   * **Use SSL**: when the option is enabled, secure connection is established if it is suppported by My SQL server.
   * **CA certificate**: path to the root certificate.
   * **User certificate**: path to the client certificate.
   * **Private key**: path to the private key.
   * **Private key password** is specified if the private key is kept in encrypted form.

* **Idle-in-transaction timeout**: MySQL server does not control incorrectly disrupted connections. If the client is disabled incorrectly, the server session still exists until timeout is completed. Incomplete transactions lock the DB data. To avoid long-lasting data lock, timeout can be limited by "Idle-in-transaction timeout" parameter (it is set in seconds).
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string). It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞**: wait period is not limited.
   * **Numeric values**: selection from the following values: 5, 10, 20, 30, 60, 120.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

## Compatibility

* MySQL 5.5-8.0 Server
* MariaDB 10.1-10.10

**See also**:

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/MySQL);
* [Official manufacturer website](https://www.mysql.com/);
* [SQL Syntax Documentation](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html).
