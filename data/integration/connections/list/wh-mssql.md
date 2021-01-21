# ![wh-mssql](../../../images/icons/data-sources/wh-mssql_default.svg) Подключение к Deductor Warehouse [MS SQL]

Используется для подключения к Хранилищу данных [Deductor Warehouse](../../../data-format/data-warehouse.md), основанному на СУБД MS SQL Server.


## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — настраивается как в отдельном окне, которое вызывается при клике мышью по кнопке ![уточнить](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg), так и вводом параметров вручную. Эти настройки используются драйвером OLE DB для подключения к необходимой базе данных.
   * Первый вариант с выводом отдельного окна, вызываемом при клике мышью по кнопке ![уточнить](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Окно имеет два поля.
      * **Сервер** — хост SQL-сервера. При необходимости, через "" указывается именованный экземпляр SQL-сервера.
      * **База данных** — имя базы, содержащей необходимые данные.
   * Второй вариант с вводом параметров подключения вручную, параметры в строке указываются через двоеточие. Формат строки: **`<ServerName>:<Port>:<DatabaseName>`**, например `host:1433:database1`.
      * **ServerName** — хост сервера СУБД.
      * **Port** — порт TCP, используемый сервером СУБД для взаимодействия с клиентом. Если параметр пустой, то по умолчанию используется `1433`.
      * **DatabaseName** — имя базы, содержащей необходимые данные.
* **Протестировать подключение** — проверка возможности подключения при заданных настройках.
* **Login** is a login of the DB user. If the login is not specified, the domain authorization is used.
* **Password** is a password of the DB user.

* **Параметры**:
   * **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
   * **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для MS SQL — квадратные скобки.
   * **Значение кодировки** — позволяет задать язык сообщений сервера БД и кодовую страницу для значений символьных типов, представленных не в UNICODE: char, varchar, text.
   * **Не использовать клиент СУБД** — для MS SQL этот параметр недоступен.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.

* **Описание** — в этом поле можно оставить любую справочную информацию о подключении.

> **Примечание:** На компьютере пользователя должен быть установлен клиент СУБД той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

Начиная с версии Microsoft SQL Server 2000 и выше.

> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started.

**See also:**

* [Информация по Microsoft SQL Server в русском разделе википедии](https://ru.wikipedia.org/wiki/Microsoft_SQL_Server);
* [Официальный сайт производителя MS SQL Server](https://www.microsoft.com/ru-ru/sql-server).
