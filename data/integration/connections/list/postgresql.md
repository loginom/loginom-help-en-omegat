---
description: Интеграция Loginom с базой данных PostgreSQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-postgres_default.svg) PostgreSQL Connection

It is used for connection to the PostgreSQL database and its operation.

> **Примечание:** с помощью этого подключения также можно работать с базами данных Greenplum и Arenadata, которые основаны на PostgreSQL.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `host[:port][:database]` (параметры в [ ] являются опциональными):

   * `host` — хост сервера PostgreSQL;
   * `port` — порт TCP, используемый сервером СУБД для взаимодействия с клиентом;
   * `database` — имя базы данных.

Строка подключения может отсутствовать. В этом случае host=localhost.

Эти настройки используются драйвером OLE DB для подключения к базе данных.

Задать строку подключения можно вручную или в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Окно имеет два поля:

* **Server**: the SQL server host.

* **База данных** — имя базы данных.

%spoiler%Примеры строки подключения:%spoiler%

`srv-db`

`srv-db:db`

`srv-db:5432`

`srv-db:5432:db`

%/spoiler%

* **Тестировать** — тест указанных настроек подключения.
* **Login**: login of the DB user. If the login is not specified, the domain authorization is used.
* **Password**: password of the DB user.
* **Настройки SSL** — параметры, необходимые для установления защищенного подключения к MySQL. Задаются в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). В окне можно установить значение следующих параметров:
   * **Использовать SSL** — при включенной опции устанавливается защищенное подключение, если оно поддерживается сервером PostgreSQL.
   * **Сертификат CA** — путь к корневому сертификату.
   * **Сертификат пользователя** - путь к клиентскому сертификату.
   * **Приватный ключ** - путь к закрытому ключу.
   * **Пароль приватного ключа** - указывается, если закрытый ключ хранится в зашифрованном виде.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client** is not available as the inbox driver is always used for PostgreSQL in Loginom.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string). It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞** — время ожидания не ограничивается.
   * **Числовые значения** — выбор из следующих значений: 5,10,20,30,60,120.
* **Тайм-аут подключения (с)** — задает предельное время подключения, значение по умолчанию 20 секунд. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** поскольку для подключения используется встроенный драйвер, то установка клиента СУБД не требуется.

## Compatibility

Версии c 9 по 15.1.

> **Важно:** для обмена данными с сервером используется кодировка UTF-8.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/PostgreSQL).
* [Официальный сайт производителя](https://www.postgresql.org/).
* [SQL Syntax Documentation](https://postgrespro.ru/docs/postgresql).
* [The Russian DBMS (Postgres Pro) based on free open-source DBMS PostgreSQL](https://postgrespro.ru/).
