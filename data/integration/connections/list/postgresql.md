---
description: Интеграция Loginom с базой данных PostgreSQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-postgres_default.svg) PostgreSQL Connection

It is used for connection to the PostgreSQL database and its operation.

> **Note:** This connection can also enable to work with Greenplum and  Arenadata databases that are based on PostgreSQL.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `host[:port][:database]` kind (the parameters enclosed in [ ] are optional):

   * `host`: PostgreSQL server host.
   * `port`: the TCP port used by the DBMS server to provide interaction with the client.
   * `database`: database name.

Connection string can be unavailable. In this case, host=localhost.

These settings are used by the OLE DB driver to connect to database.

It is possible to set the connection string manually or in a separate window that can be called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button.

The window includes two fields:

* **Server**: the SQL server host.

* **Database**: database name.

%spoiler%Examples of connection string:%spoiler%

`srv-db`

`srv-db:db`

`srv-db:5432`

`srv-db:5432:db`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **SSL settings**: parameters required for secure connection to My SQL. They are set in a separate window that is called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. Value of the following parameters can be set in the window:
   * **Use SSL**: when the option is enabled, secure connection is established if it is suppported by PostgreSQL server.
   * **CA certificate**: path to the root certificate.
   * **User certificate**: path to the client certificate.
   * **Private key**: path to the private key.
   * **Private key password** is specified if the private key is kept in encrypted form.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client** is not available as the inbox driver is always used for PostgreSQL in Loginom.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string). It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞**: wait period is not limited.
   * **Numeric values**: selection from the following values: 5,10,20,30,60,120.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** As the inbox driver is used for connection, it is not required to install DBMS client.

## Compatibility

Versions 9 - 15.1.

> **Important:** UTF-8 encoding is used for data exchange with the server.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/PostgreSQL).
* [Official manufacturer website](https://www.postgresql.org/).
* [SQL Syntax Documentation](https://postgrespro.ru/docs/postgresql).
* [The Russian DBMS (Postgres Pro) based on free open-source DBMS PostgreSQL](https://postgrespro.ru/).
