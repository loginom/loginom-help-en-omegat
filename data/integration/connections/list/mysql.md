# ![ ](../../../images/icons/data-sources/db-mysql_default.svg) Connection to MySQL

It is used for connection to the MySQL database.

It is possible to provide connection both via DBMS client, and Loginom internal driver.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** is set in a separate window that can be called both by clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button and by entering the parameters manually. These settings are used by OLE DB driver to connect to the required database.
   * The first option with a separate window called when clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. The window includes two fields.
      * **Server**: the MySQL server host.
      * **Database** is a DB name.
   * When parameters are manually entered, it is required to provide the colon separated parameters in the string. The following string format is used: `<ServerName>:<Port/Shared Memory>:<DatabaseName>`, for example, `localhost:3306:database1`. When Shared-Memory is used, the following way of writing is also possible: `localhost:MYSQL:database1`.
      * **ServerName**: the DBMS server host. The host value must be `localhost` to connect via Shared Memory protocol.
      * **Port/Shared Memory** means the TCP port used by the DBMS server to provide interaction with the client. Или заданная сервером опция `shared-memory-base-name` (не должна являться корректным номером порта). Если параметр пустой и *ServerName* не `localhost`, то подключение проходит по протоколу TCP/IP с портом по умолчанию `3306`.
      * **DatabaseName** is a name of the database that includes the required data. Если параметр *Port/Shared Memory* пустой, то этот параметр можно оставить пустым, в таком случае будут показаны все доступные базы данных.
   * При пустой строке в поле происходит подключение к `localhost`.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Backquotes are used for MySQL.
* **Не использовать клиент СУБД** — если задействовать эту опцию, то для подключения к СУБД используется альтернативный, встроенный в платформу драйвер.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Время жизни на время транзакции при неактивности** — сервер MySQL не контролирует некорректно разорванные подключения. В случае некорректного отключения клиента сессия на сервере продолжает существовать до тех пор, пока не завершится timeout. Incomplete transactions lock the DB data. To avoid long-lasting data lock, timeout can be limited by "Idle-in-transaction timeout" parameter. It is set in seconds.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database via DBMS client, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

* Clients: 5.7, 5.6, 5.5, 5.1, 5.0, 4.1, 4.0 and 3.23
* Servers: 5.7, 5.6, 5.5, 5.1, 4.1 and 4.0

> **Примечание:** Проверка совместимости с версией 8.0 не проводилась. При использовании версии 8.0 не рекомендуется использовать новый метод аутентификации.

**See also**:

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/MySQL);
* [Manufacturer official website](https://www.mysql.com/)
* [SQL Syntax Documents](https://dev.mysql.com/doc/refman/5.7/en/sql-syntax.html).
