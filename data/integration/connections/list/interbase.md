---
description: Интеграция Loginom с  базой данных Interbase. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-interbase_default.svg) Interbase Connection

It is used for connection to the Interbase database.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `[host[/port]:]databasepath.gdb` (параметры, заключенные в [ ], are optional).

Задать строку подключения можно вручную или настроить в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Two connection types are supported:
* **Local**: connection without the use of the Interbase server; only a path to the DB is specified.
* **Remote**: connection with the use of the Interbase server.
   * **Server**: the Interbase server host.
   * **Protocol**: the protocol that is used by the server for interaction with a client.

%spoiler%Примеры строки подключения:%spoiler%

`D:\Data\db.gdb`

`srv-db:D:\Data\db.gdb`

`srv-db/3050:D:\Data\db.gdb`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Кодовая страница** — задает кодировку символов, в которой будут трактоваться данные с сервера.
* **Do not use DBMS client**: it is not possible to change this parameter for Interbase.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

Starting from XE3 version.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Interbase);
* [Official developer website](https://www.embarcadero.com/ru/products/interbase);
* [SQL Syntax Documentation](http://docwiki.embarcadero.com/InterBase/2017/en/Embedded_SQL_Guide).
