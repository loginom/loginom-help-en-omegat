---
description: Интеграция Loginom с  базой данных Firebird. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-firebird_default.svg) Firebird Connection

It is used for connection to the Firebird database and its operation.

> **Note:** This connection can also enable to work with the RedDB database that is based on Firebird.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `[host[/port]:]databasepath.fdb` kind (the parameters enclosed in [ ] are optional).

It is possible to set the connection string manually or in a separate window that can be called by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button.

Two connection types are supported:
* **Local**: connection without the use of the Firebird server; only a path to the DB is specified.
* **Remote**: connection with the Firebird server use.
   * **Server**: the Firebird server host.
   * **Protocol**: the protocol that is used by the server for interaction with a client.

%spoiler%Examples of connection string%spoiler%

`D:\Data\db.fdb`

`srv-db:D:\Data\db.fdb`

`srv-db/3050:D:\Data\db.fdb`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Codepage** provides encoding of characters according to which the server data will be interpreted.
* **Do not use DBMS client**: it is not possible to change this parameter for Firebird.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

In the case of the multiple user access to the DB, it is recommended to use the Firebird server to avoid access lock.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

## Compatibility

Starting from Firebird 2.5 and higher.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Firebird).
* [Official developer website](https://firebirdsql.org/).
* [SQL Syntax Documentation](https://www.firebirdsql.org/file/documentation/reference_manuals/fblangref25-en/html/fblangref25-dml.html).
