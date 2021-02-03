# ![wh-oracle](../../../images/icons/data-sources/wh-oracle_default.svg) Подключение к Deductor Warehouse [Oracle]

Используется для подключения к Хранилищу данных [Deductor Warehouse](../../../data-format/data-warehouse.md), основанному на СУБД Oracle.

It is possible to provide connection both via DBMS client, and Loginom internal driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** is a string used by the driver for connection to the required database. The string connection format is defined by the used driver (refer to параметр *Не использовать клиент СУБД* ниже):
   * Формат строки при использовании клиента СУБД:
      * **`<ServerName>`**, где
         **ServerName** — хост сервера СУБД, как указано в конфигурационном файле tnsnames.ora сервера Oracle.
   * Формат строки при использовании встроенного драйвера может иметь вид:
      * **`<ServerName>:<Port>:<SID>`** либо
      * **`<ServerName>[:<Port>]/<Service_name>`**, где:
         * **ServerName**: the DBMS server host.
         * **Port** means the TCP port used by the DBMS server to provide interaction with the client.
         * **SID** — уникальное имя образца БД (System ID).
         * **ServiceName** — псевдоним для одной или нескольких образцов БД.
* **Протестировать подключение** — проверка возможности подключения при заданных настройках.
* **Login** is a login of the DB user.
* **Password** is a password of the DB user.
* **Параметры**:
   * **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
   * **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Double quotes are used for Oracle.
   * **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Описание** — в этом поле можно оставить любую справочную информацию о подключении.

> **Примечание:** Если используется клмент СУБД, то он должен быть той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

Начиная с версии Oracle Database 9i и выше.

> **Important:** UTF16 encoding is used for data exchange with the server.

**See also:**

* [Информация по Oracle Database в русском разделе википедии](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Официальный сайт производителя Oracle Database](https://www.oracle.com/database).
