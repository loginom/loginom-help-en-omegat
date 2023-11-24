---
description: Интеграция Loginom с  базой данных MS SQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-mssql_default.svg) MS SQL Connection

It is used for connection to the MS SQL database.

Подключение осуществляется через Microsoft OLE DB Driver for SQL Server или SQL Server Native Client. Для обоих драйверов требуется предварительная установка.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `host[:port]:database` kind (the parameters enclosed in [ ], является опциональным):

   * `host` — хост сервера СУБД;
   * `port` — порт TCP, используемый сервером СУБД для взаимодействия с клиентом, если параметр пустой, то порт по умолчанию `1433`;
   * `database` — имя базы данных.

Задать строку подключения можно вручную или в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Окно имеет два поля:

* **Server**: the SQL server host. При необходимости через «\» указывается именованный экземпляр SQL-сервера.

* **База данных** — имя базы данных.

%spoiler%Examples of connection string:%spoiler%

`srv-db:db`

`srv-db:1433:db`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Кодовая страница** — позволяет задать язык сообщений сервера БД и кодовую страницу для значений символьных типов, представленных не в UNICODE: char, varchar, text.
* **Do not use DBMS client**: this parameter is not available for MS SQL.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Тайм-аут подключения (c)** — задает предельное время подключения, значение по умолчанию 20 секунд. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string) It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞** — время ожидания не ограничивается.
   * **Числовые значения** — выбор из следующих значений: 5, 10, 20, 30, 60, 120.
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
* [Official manufacturer website](https://www.microsoft.com/ru-ru/sql-server).
* [SQL Syntax Documentation](https://docs.microsoft.com/ru-ru/sql/t-sql/queries/queries).
