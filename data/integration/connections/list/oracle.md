# ![ ](../../../images/icons/data-sources/db-oracle_default.svg) Подключение Oracle

Используется для подключения к базе данных Oracle.

Возможно подключение как через клиент СУБД, так и через внутренний драйвер Loginom.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка, используемая драйвером для подключения к необходимой базе данных. Формат строки подключения определяется используемым драйвером (см. параметр *Не использовать клиент СУБД*).
   * Формат строки при использовании встроенного драйвера: **`<ServerName>:<Port>:<Instance>`**.
      * **ServerName** — хост сервера СУБД.
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
* **Не использовать клиент СУБД** — если задействовать эту опцию, то для подключения к СУБД используется альтернативный, встроенный в платформу драйвер.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. По умолчанию этот параметр отключен.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения к базе данных через клиент СУБД необходима установка файлов клиентской библиотеки (DLL) той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

* Клиенты: 12c, 11g, 10g, 9i, 8i, 8.0
* Серверы: 12c, 11g, 10g, 9i, 8i, 8.0, включая Oracle Express Edition 11g и 10g

> **Важно:** Для обмена данными с сервером используется кодировка UTF16.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/Oracle_Database);
* [Manufacturer official website](https://www.oracle.com/)
* [Краткая документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLQR/toc.htm);
* [Полная документация по SQL синтаксису](http://docs.oracle.com/database/122/SQLRF/toc.htm);
