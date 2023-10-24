---
description: Интеграция Loginom с хранилищем данных Deductor Warehouse, основанным на СУБД MS SQL Server. Параметры подключения. Совместимость.
---
# ![wh-mssql](./../../../images/icons/common/data-sources/wh-mssql_default.svg) Connection to Deductor Warehouse [MS SQL]

It is used for connection to the [Deductor Warehouse](./../../../data-format/data-warehouse.md) Data Warehouse based on MS SQL Server DBMS.


## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `host[:port]:database` (параметр, заключенный в [ ], является опциональным):

   * `host` — хост сервера СУБД;
   * `port` — порт TCP, используемый сервером СУБД для взаимодействия с клиентом, если параметр пустой, то порт по умолчанию `1433`;
   * `database` — имя базы данных.

Эти настройки используются драйвером OLE DB для подключения к базе данных.

Задать строку подключения можно вручную или в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Окно имеет два поля:
* **Server**: the SQL server host. При необходимости через "" указывается именованный экземпляр SQL-сервера.
* **База данных** — имя базы данных.

%spoiler%Примеры строки подключения:%spoiler%

`srv-db:db`

`srv-db:1433:db`

%/spoiler%

* **Тестировать** — проверка возможности подключения при заданных настройках.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.

* **Parameters**:
   * **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Кодовая страница** — позволяет задать язык сообщений сервера БД и кодовую страницу для значений символьных типов, представленных не в UNICODE: char, varchar, text.
   * **Do not use DBMS client**: this parameter is not available for MS SQL.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.

* **Параметры хранилища данных**:

   * **Имя схемы в базе данных** — имя схемы, в которой находятся метаданные и данные ХД.

      > **Примечание:** Если имя схемы содержит символы `"`, `[` `]`, могут выдаваться сообщения об ошибках.

* **Комментарий** — в этом поле можно оставить любую справочную информацию о подключении.

> **Note:** It is required to install DBMS client on the user computer with the same bitness as the Loginom application/server bitness.

## Compatibility

Starting from Microsoft SQL Server 2000 and higher.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

**See also:**

* [Информация по Microsoft SQL Server в русском разделе википедии](https://ru.wikipedia.org/wiki/Microsoft_SQL_Server).
* [Official website of the MS SQL Server manufacturer](https://www.microsoft.com/ru-ru/sql-server).
