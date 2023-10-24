---
description: Интеграция Loginom с базой данных MySQL. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-mysql_default.svg) MySQL Connection

It is used for connection to the MySQL database.

It is possible to provide connection both via DBMS client, and the internal Loginom driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `host[:port][:database]` (параметры, заключенные в [ ], являются опциональными):

   * `host` — хост сервера СУБД. Для подключения по протоколу Shared Memory значение хоста должно быть `localhost`.
   * `port` — порт TCP, используемый сервером СУБД для взаимодействия с клиентом.  Если значение `port` не является корректным номером порта, то выполняется попытка подключения по протоколу Shared Memory, `port` в таком случае соответствует `shared-memory-base-name`. Если параметр пустой и `host` не `localhost`, то подключение проходит по протоколу TCP/IP с портом по умолчанию `3306`.
   * `database` — имя базы данных. Если параметр `port` пустой, то этот параметр можно оставить пустым, в таком случае будут показаны все доступные базы данных.

Эти настройки используются драйвером OLE DB для подключения к базе данных.

Строка подключения может быть пустой, в этом случае происходит подключение к `localhost`.

Задать строку подключения можно вручную или в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg).

Окно имеет два поля:

* **Server**: MySQL server host.

* **База данных** — имя базы данных.

%spoiler%Примеры строки подключения:%spoiler%

`srv-db`

`srv-db:db`

`srv-db:3306`

`srv-db:3306:db`

%/spoiler%

* **Тестировать** — тест указанных настроек подключения.
* **Login**: login of the DB user.
* **Password**: password of the DB user.

* **Настройки SSL** — параметры, необходимые для установления защищенного подключения к MySQL. Задаются в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). В окне можно установить значение следующих параметров:

   * **Использовать SSL** — при включенной опции устанавливается защищенное подключение, если оно поддерживается сервером MySQL.
   * **Сертификат CA** — путь к корневому сертификату.
   * **Сертификат пользователя** — путь к клиентскому сертификату.
   * **Приватный ключ** — путь к закрытому ключу.
   * **Пароль приватного ключа** — указывается, если закрытый ключ хранится в зашифрованном виде.

* **Idle-in-transaction timeout**: MySQL server does not control incorrectly disrupted connections. If the client is disabled incorrectly, the server session still exists until timeout is completed. Incomplete transactions lock the DB data. Во избежание длительных блокировок timeout можно ограничить параметром "Время жизни на время транзакции при неактивности" (задается в секундах).
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Тайм-аут блокировки (с)** — устанавливает тайм-аут ожидания снятия блокировки с ресурса (таблицы, строки). Задаётся выпадающим списком с редактируемым полем ввода, которое принимает целые положительные значения. Предустановленный список значений:
   * **По умолчанию** — используется значение по умолчанию сервера БД.
   * **∞** — время ожидания не ограничивается.
   * **Числовые значения** — выбор из следующих значений: 5, 10, 20, 30, 60, 120.
* **Тайм-аут подключения (c)** — задает предельное время подключения, значение по умолчанию 20 секунд. Если импорт из базы данных или экспорт в базу данных будет выполняться в режиме игнорирования ошибок, то в случае неудавшегося подключения в течение установленного времени, соответствующая ошибка будет записана в выходной порт *Статус выполнения* узла Импорт из БД/Экспорт в БД, а при импорте/экспорте в обычном режиме — выполнение узла завершится ошибкой.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

## Compatibility

* Сервер MySQL 5.5-8.0
* MariaDB 10.1-10.10

**See also**:

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/MySQL);
* [Official manufacturer website](https://www.mysql.com/);
* [SQL Syntax Documentation](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html).
