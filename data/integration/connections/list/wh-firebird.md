# ![wh-firebird](../../../images/icons/data-sources/wh-firebird_default.svg) Подключение к Deductor Warehouse [Firebird]

Используется для подключения к Хранилищу данных [Deductor Warehouse](../../../data-format/data-warehouse.md), основанному на СУБД Firebird.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — настраивается в отдельном окне, которое вызывается при клике мышью по кнопке ![уточнить](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Поддерживается два типа подключения:
   * **Локальное** — подключение без использования сервера Firebird, указывается только путь к БД.
   * **Удаленное** — подключение с использованием сервера Firebird:
      * **Протокол** — протокол, используемый сервером для взаимодействия с клиентом.
      * **Сервер** — хост сервера Firebird.
   * **База данных** — путь к файлу базы данных.
* **Протестировать подключение** — проверка возможности подключения при заданных настройках.
* **Login** is a login of the DB user. If the login is not specified, the domain authorization is used.
* **Password** is a password of the DB user.

* **Параметры**:
   * **Сохранить пароль** — при установке этого флага логин и пароль будут сохранены в текущих настройках подключения.
   * **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
   * **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
   * **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для Firebird — двойные кавычки.
   * **Encoding value** provides encoding of characters according to which the server data will be interpreted.
   * **Не использовать клиент СУБД** — для Firebird изменение этого параметра не доступно.
   * **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.

* **Описание** — в этом поле можно оставить любую справочную информацию о подключении.


> **Note:** To provide connection to the database, it is required to install the client library files (DLL) with the same bitness as the Loginom application/server bitness.


## Compatibility

Starting from Firebird 2.5 and higher.


> **Important:** The domain authorization process is implemented as user under whose name the Loginom server has been started. In the case of the multiple user access to the DB, it is recommended to use the Firebird server to avoid access lock.


**See also:**

* [Информация по Firebird в русском разделе википедии](https://ru.wikipedia.org/wiki/Firebird);
* [Официальный сайт разработчика Firebird](https://firebirdsql.org/).
