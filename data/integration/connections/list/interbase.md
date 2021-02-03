# ![ ](../../../images/icons/data-sources/db-interbase_default.svg) Connection to Interbase

It is used for connection to the Interbase database.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** is set in a separate window that can be called by clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. Two connection types are supported.
   * **Local**: connection without the use of the Interbase server; only a path to the DB is specified.
   * **Remote**: connection with the use of the Interbase server.
      * **Server**: the Interbase server host.
      * **Protocol** is a protocol that is used by the server for interaction with a client.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user. If the login is not specified, the domain authorization is used.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Double quotes are used for Interbase.
* **Encoding value** provides encoding of characters according to which the server data will be interpreted.
* **Do not use DBMS client**: it is not possible to change this parameter for Interbase.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

Starting from XE3 version.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Interbase)
* [Manufacturer official website](https://www.embarcadero.com/ru/products/interbase)
* [SQL Syntax Documentation](http://docwiki.embarcadero.com/InterBase/2017/en/Embedded_SQL_Guide)
