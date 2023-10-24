---
description: Интеграция Loginom с  базой данных Firebird. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-firebird_default.svg) Firebird Connection

It is used for connection to the Firebird database and its operation.

> **Примечание:** с помощью этого подключения также можно работать с базой данных RedDB, которая основана на Firebird.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `[host[/port]:]databasepath.fdb` (параметры, заключенные в [ ], являются опциональными).

Задать строку подключения можно вручную или настроить в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Two connection types are supported:
* **Local**: connection without the use of the Firebird server; only a path to the DB is specified.
* **Удаленное** — подключение с использованием сервера Firebird.
   * **Server**: the Firebird server host.
   * **Protocol**: the protocol that is used by the server for interaction with a client.

%spoiler%Примеры строки подключения:%spoiler%

`D:\Data\db.fdb`

`srv-db:D:\Data\db.fdb`

`srv-db/3050:D:\Data\db.fdb`

%/spoiler%

* **Тестировать** — тест указанных настроек подключения.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Кодовая страница** — задает кодировку символов, в которой будут трактоваться данные с сервера.
* **Do not use DBMS client**: it is not possible to change this parameter for Firebird.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

In the case of the multiple user access to the DB, it is recommended to use the Firebird server to avoid access lock.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

## Compatibility

Starting from Firebird 2.5 and higher.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/Firebird).
* [Официальный сайт разработчика](https://firebirdsql.org/).
* [SQL Syntax Documentation](https://www.firebirdsql.org/file/documentation/reference_manuals/fblangref25-en/html/fblangref25-dml.html).
