---
description: Интеграция Loginom с  базой данных ClickHouse. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-clickhouse_default.svg) ClickHouse Connection

It is used for connection to the ClickHouse database.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** represents the string of the following kind: `host[:port][:database]`. It is set in a separate window that can be called both by clicking on ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button, and by entering the parameters manually. *Port* and *database* parameters are optional. By default, *port* `9000`, `default` *database*.
* **Test**: test of the specified connection settings.
* **Login**: login of the DB user. By default, `default`.
* **Password**: password of the DB user. The password is not available by default.
* **SSL settings**: ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button enables to call the dialog of connection parameters setup via secure connection:
   * **Use SSL**: when this checkbox is selected, data is transferred via cryptographic SSL/TLS protocol.
   * **CA certificate**: path to the file with the root certificate.
   * **User certificate**: path to the file with the client certificate.
   * **Private key**: path to the file with the private key.
   * **Private key password**: private key password. It is null by default.
* **Use local time zone** provides conversion from the local time to UTC and vice versa for the columns of the [DateTime](https://clickhouse.tech/docs/ru/sql-reference/data-types/datetime/) type. This option is enabled by default.
* **Data compression method**: `Without compression` (used by default) and `LZ4` options are available.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client** is not available as the inbox driver is always used to connect to ClickHouse.
* **Connection timeout (s)** sets connection time limit, the default value is 20 s. If import from database or export to database is performed in the error ignoring mode, in the case of failed connection during the set period of time corresponding error will be recorded to the *Execution status* output port of the Import from DB/Export to DB node, and when importing/exporting in the normal mode, the node execution will fail.
* **Lock timeout (s)** sets timeout of resource unlock waiting (table, string). It is set by drop-down list with edited entry field that takes integer positive values. Preset list of values:
   * **By default**: the DB server value is used by default.
   * **∞** — maximum value is equal to 24 days.
   * **Numeric values** — Selection from the following values: 5,10,20,30,60,120.

   Lock timeout is supported in ClickHouse from version 20.4.2.

> **Note:**
>
> * Connection pool is not used.
> * When [exporting data to the new table](./../../export/database/new-table-design.md), the [Log engine](https://clickhouse.tech/docs/ru/engines/table-engines/log-family/log/) table is created.
> * In connection with the ClickHouse DB restrictions:
>    * Transactions are not supported.
>    * Dates from 1970 to 2106 are supported.
>    * Update of the current records in the table is not supported.
>    * Deletion by key is available only for the tables with the [MergeTree](https://clickhouse.tech/docs/ru/engines/table-engines/#mergetree) engines.

> **Important:** Data mutation operations are not atomic in the MergeTree tables (for more details, see [Mutations](https://clickhouse.tech/docs/ru/sql-reference/statements/alter/#alter-mutations)). As mutations are used during the export operation with deletion by key, the export node activation does not provide termination of the records deletion process. Duration of the mutation performed by a user is not controlled. Thus, request for data sampling set just after execution of the export node with deletion by key can return the old records.
> It is required to take this ClickHouse DB feature into account when designing systems.

## Compatibility

ClickHouse DB versions 19.1 and higher.

**See also:**
* [ClickHouse Documents](https://clickhouse.tech/docs/ru/)