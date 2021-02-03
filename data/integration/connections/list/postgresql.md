# ![ ](../../../images/icons/data-sources/db-postgres_default.svg) Подключение PostgreSQL

Используется для подключения и работы с базой данных PostgreSQL.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** is set in a separate window that can be called both by clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button and by entering the parameters manually. These settings are used by OLE DB driver to connect to the required database.
   * The first option with a separate window called when clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. The window includes two fields.
      * **Сервер** — хост сервера PostgreSQL.
      * **Database** is a DB name.
   * When parameters are manually entered, it is required to provide the colon separated parameters in the string. Формат строки: `<ServerName>:<Port>:<DatabaseName>`, например `192.168.0.180:5432:postgres`, где.
      * **ServerName**: the DBMS server host.
      * **Port** means the TCP port used by the DBMS server to provide interaction with the client.
      * **DatabaseName** is a name of the database that includes the required data.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user. If the login is not specified, the domain authorization is used.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для PostgreSQL — двойные кавычки.
* **Do not use DBMS client** is not available as в Loginom для PostgreSQL всегда используется встроенный драйвер.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Поскольку для подключения используется встроенный драйвер, то установка клиента СУБД не требуется.

## Compatibility

Версии от 8.0 до 10.0.

> **Важно:** Для обмена данными с сервером используется кодировка UTF-8.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/PostgreSQL);
* [Manufacturer official website](https://www.postgresql.org/)
* [Документация по SQL синтаксису](https://postgrespro.ru/docs/postgresql);
* [Российская СУБД (Postgres Pro), разработанная на основе свободно-распространяемой СУБД PostgreSQL](https://postgrespro.ru/).
