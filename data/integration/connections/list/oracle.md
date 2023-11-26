---
description: Интеграция Loginom с базой данных Oracle. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-oracle_default.svg) Oracle Connection

It is used for connection to the Oracle database.

It is possible to provide connection both via DBMS client, and the internal Loginom driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка, используемая драйвером для подключения к базе данных. The string connection format is defined by the used driver (refer to параметр *Не использовать клиент СУБД*):
   * **При использовании встроенного драйвера:** `host[:port]/ServiceName | host:port:SID` (параметр в [ ] является опциональным; формат строки может быть задан в одном из двух вариантов, между вариантами используется | ):
      * `host`: the DBMS server host.
      * `port`: the TCP port used by the DBMS server to provide interaction with the client.
      * `ServiceName` — имя службы;
      * `SID` — Oracle Database Instance (SID), содержащий необходимые данные.

   * **При использовании клиента СУБД:** `net_service_name` — хост сервера СУБД, как указано в конфигурационном файле tnsnames.ora сервера Oracle.

%spoiler%Examples of connection string:%spoiler%

**С использованием встроенного драйвера (без использования клиента СУБД):**

`db-ora-03:1521:ORCL03`

`db-ora-03/orcl03.bg.local`

`db-ora-03:1521/orcl03.bg.local`

**С использованием клиента СУБД:**

`orcl.bg.local`

%/spoiler%

* **Test**: test of the specified connection settings.
* **Login**: login of the DB user.
* **Password**: password of the DB user.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Тайм-аут подключения (с)** — задает предельное время подключения, значение по умолчанию 20 секунд. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail. Поле становится активным при выставлении флага в параметре "Не использовать клиент СУБД". Для клиента Oracle тайм-аут конфигурируется в строке подключения, если используется синтаксис Easy Connect, или в конфигурационном файле `tnsnames.ora`.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database via DBMS client, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

* Clients: 21c, 19c, 18c, 12c, 11g, 10g, 9i, 8i, 8.0
* Servers: 21c, 19c, 18c, 12c, 11g, 10g, 9i, 8i, 8.0, including Oracle Express Edition 11g and 10g

> **Важно:** Для обмена данными с сервером в Loginom 7 и старше используется кодировка UTF8, в предыдущих версиях — UTF16.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Official manufacturer website](https://www.oracle.com/)
* [Краткая документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLQR/toc.htm)
* [Полная документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLRF/toc.htm)
