# ![ ](../../../images/icons/data-sources/db-oracle_default.svg) Подключение Oracle

Используется для подключения к базе данных Oracle.

It is possible to provide connection both via DBMS client, and Loginom internal driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка, используемая драйвером для подключения к необходимой базе данных. Формат строки подключения определяется используемым драйвером (см. параметр *Не использовать клиент СУБД*).
   * Формат строки при использовании встроенного драйвера: **`<ServerName>:<Port>:<Instance>`**.
      * **ServerName**: the DBMS server host.
      * **Port** — порт TCP, используемый сервером СУБД для взаимодействия с клиентом.
      * **Instance** — Oracle Database Instance (SID), содержащий необходимые данные.
   * Формат строки при использовании клиента СУБД: *`<ServerName>`*.
      * **ServerName** — хост сервера СУБД, как указано в конфигурационном файле tnsnames.ora сервера Oracle.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для Oracle — двойные кавычки.
* **Do not use DBMS client**: if this option is used, the alternative inbox driver built into the platform is used for connection to DBMS.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database via DBMS client, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

* Клиенты: 12c, 11g, 10g, 9i, 8i, 8.0
* Серверы: 12c, 11g, 10g, 9i, 8i, 8.0, включая Oracle Express Edition 11g и 10g

> **Важно:** Для обмена данными с сервером используется кодировка UTF16.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Manufacturer official website](https://www.oracle.com/)
* [Краткая документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLQR/toc.htm);
* [Полная документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLRF/toc.htm);
