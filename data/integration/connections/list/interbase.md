# ![ ](../../../images/icons/data-sources/db-interbase_default.svg) Подключение Interbase

Используется для подключения к базе данных Interbase.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string** is set in a separate window that can be called by clicking on ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button. Two connection types are supported.
   * **локальное** — подключение без использования сервера Interbase, указывается только путь к БД.
   * **удаленное** — подключение с использованием сервера Interbase.
      * **сервер** — хост сервера Interbase.
      * **Protocol** is a protocol that is used by the server for interaction with a client.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user. If the login is not specified, the domain authorization is used.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для Interbase – двойные кавычки.
* **Encoding value** provides encoding of characters according to which the server data will be interpreted.
* **Не использовать клиент СУБД** —  для Interbase изменение этого параметра не доступно.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.

## Compatibility

Начиная с версии XE3.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/Interbase)
* [Официальный сайт разработчика](https://www.embarcadero.com/ru/products/interbase)
* [Документация по SQL синтаксису](http://docwiki.embarcadero.com/InterBase/2017/en/Embedded_SQL_Guide)
