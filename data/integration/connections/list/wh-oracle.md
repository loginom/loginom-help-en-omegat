# ![wh-oracle](../../../images/icons/data-sources/wh-oracle_default.svg) Подключение к Deductor Warehouse [Oracle]

Используется для подключения к Хранилищу данных [Deductor Warehouse](../../../data-format/data-warehouse.md), основанному на СУБД Oracle.

It is possible to provide connection both via DBMS client, and Loginom internal driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка, используемая драйвером для подключения к необходимой базе данных. Формат строки подключения определяется используемым драйвером (см. параметр *Не использовать клиент СУБД* ниже):
   * Формат строки при использовании клиента СУБД:
      * **`<ServerName>`**, где
         **ServerName** — хост сервера СУБД, как указано в конфигурационном файле tnsnames.ora сервера Oracle.
   * Формат строки при использовании встроенного драйвера может иметь вид:
      * **`<ServerName>:<Port>:<SID>`** либо
      * **`<ServerName>[:<Port>]/<Service_name>`**, где:
         * **ServerName**: the DBMS server host.
         * **Port** — порт TCP, используемый сервером СУБД для взаимодействия с клиентом.
         * **SID** — уникальное имя образца БД (System ID).
         * **ServiceName** — псевдоним для одной или нескольких образцов БД.
* **Протестировать подключение** — проверка возможности подключения при заданных настройках.
* **Login** is a login of the DB user.
* **Password** is a password of the DB user.
* **Параметры**:
   * **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
   * **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для Oracle — двойные кавычки.
   * **Не использовать клиент СУБД** — если задействовать эту опцию, то для подключения к СУБД используется альтернативный, встроенный в платформу драйвер.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Описание** — в этом поле можно оставить любую справочную информацию о подключении.

> **Примечание:** Если используется клмент СУБД, то он должен быть той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

Начиная с версии Oracle Database 9i и выше.

> **Важно:** Для обмена данными с сервером используется кодировка UTF16.

**See also:**

* [Информация по Oracle Database в русском разделе википедии](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Официальный сайт производителя Oracle Database](https://www.oracle.com/database).
