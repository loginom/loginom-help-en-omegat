---
description: Интеграция Loginom с хранилищем данных Deductor Warehouse, основанным на СУБД Oracle. Параметры подключения. Совместимость.
---
# ![wh-oracle](./../../../images/icons/common/data-sources/wh-oracle_default.svg) Connection to Deductor Warehouse [Oracle]

It is used for connection to the [Deductor Warehouse](./../../../data-format/data-warehouse.md) Data Warehouse based on Oracle DBMS.

It is possible to provide connection both via DBMS client, and the internal Loginom driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: this string is used by the driver for database connection. The string connection format is defined by the used driver (refer to *Do not use DBMS client* parameter):
   * **When the inbox driver is used:** `host[:port]/ServiceName | host:port:SID` (parameter in [ ] is optional; the string format can be set as one of two options, | is used between options):
      * `host`: the DBMS server host.
      * `port`: the TCP port used by the DBMS server to provide interaction with the client.
      * `ServiceName`: service name.
      * `SID`: Oracle Database Instance (SID) that contains the required data.

   * **When DBMS client is used:** `net_service_name`: DBMS server host as it is specified in tnsnames.ora configuration file of the Oracle server.

* **Test**: connectivity test with the specified settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.

* **Parameters**:

   * **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.

* **Параметры хранилища данных**:

   * **Имя схемы в базе данных** — имя схемы, в которой находятся метаданные и данные ХД.

      > **Примечание:** Если имя схемы содержит символы `"`, `[` `]`, могут выдаваться сообщения об ошибках.

* **Comment**: It is possible to provide any reference connection data in this field.

> **Примечание:** Если используется клиент СУБД, то он должен быть той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

Starting from Oracle Database 9i and higher.

> **Important:** UTF16 encoding is used for data exchange with the server.

**See also:**

* [Информация по Oracle Database в русском разделе википедии](https://ru.wikipedia.org/wiki/Oracle_Database).
* [Official website of the Oracle Database manufacturer](https://www.oracle.com/database).
