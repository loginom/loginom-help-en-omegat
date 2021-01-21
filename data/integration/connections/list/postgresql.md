# ![ ](../../../images/icons/data-sources/db-postgres_default.svg) Подключение PostgreSQL

Используется для подключения и работы с базой данных PostgreSQL.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — настраивается как в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg), так и вводом параметров вручную. Эти настройки используются драйвером OLE DB для подключения к необходимой базе данных.
   * Первый вариант с выводом отдельного окна, вызываемом при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Окно имеет два поля.
      * **Сервер** — хост сервера PostgreSQL.
      * **База данных** — наименование БД.
   * Ввод параметров подключения вручную, параметры в строке указываются через двоеточие. Формат строки: `<ServerName>:<Port>:<DatabaseName>`, например `192.168.0.180:5432:postgres`, где.
      * **ServerName** — хост сервера СУБД.
      * **Port** — порт TCP, используемый сервером СУБД для взаимодействия с клиентом.
      * **DatabaseName** — имя базы, содержащей необходимые данные.
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
