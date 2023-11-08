---
description: Интеграция Loginom с базой данных SQLite. Особенности работы. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-sqlite_default.svg) SQLite Connection

It is used for connection to the SQLite database.

Данное подключение так же реализует следующие особенности работы с [импортом баз данных](./../../import/database.md):

* Наряду со стандартными правилами сравнения символов (collation) BINARY, RTRIM и NOCASE возможно использование нижеследующих, не регламентированных стандартом SQLite:
   * **UNICODE** — языконезависимое сравнение символов Unicode чувствительное к регистру.
   * **LOCALIZED** — языкозависимое сравнение символов Unicode чувствительное к регистру. The string comparison result depends on the operating system locale of the Loginom server.
* It is possible to use iLIKE function in the SQL constructions. It implements LIKE feature in the case insensitivity mode of Unicode characters.
* Check by foreign keys is enabled by default.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **База данных в памяти** — по умолчанию отключено. При выставленном флаге будет создано подключение к in-memory БД c общим кэшем.
* **Имя файла** — указывается путь к файлу БД, содержащей необходимые данные. Parameters can be manually entered, or it is possible to press ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button to call *Open file* window.

   Если выставлен флаг «База данных в памяти», то необходимо обязательно задать идентификатор БД. Он может состоять из:
   * символов латинского алфавита;
   * цифр;
   * слэша;
   * подчеркивания;
   * точки.
* **Тестировать** — тест указанных настроек подключения.
* **Login** is not used for connection to SQLite.
* **Password**: the password set by the DB user is specified for data protection.
* **Encrypted DB**: the checkbox enables to set the DB encryption mode. AES256 encryption is used in this mode, and a password is required.
* **Cache size** enables to set the cache size. Действие параметра аналогично выполнению команды БД `"PRAGMA schema.cache_size = pages | -kibibytes;"`, где при введении положительного числа указывается количество памяти в страницах, а при введении отрицательного — выделение памяти в КиБ.
* **Sync mode** enables to set the mode of synchronization with the file system. Selection of this mode affects the DB speed. It increases the speed without synchronization providing the lowest degree of protection against failures and decreasing the speed in order to provide higher degree of protection against failures. Действие параметра аналогично выполнению команды БД `"PRAGMA schema.synchronous = 0 | OFF | 1 | NORMAL | 2 | FULL | 3 | EXTRA;"` и предусматривает выбор из следующих вариантов:
   * *По умолчанию* используется режим FULL (Полная).
   * *Off* (OFF).
   * *Normal* (NORMAL).
   * *Полная* (FULL).
   * *Extra* (EXTRA).
* **Transaction journal mode**: the transaction journal mode is set. The parameter provides the same effect as the DB command does: `"PRAGMA schema.journal_mode = DELETE | TRUNCATE | PERSIST | MEMORY | WAL;"`, and it allows for one of the following options.
   * In the case of *Default*, the DELETE (Delete file) mode is used.
   * *Delete* (DELETE).
   * *Truncate* (TRUNCATE).
   * *Persist* (PERSIST).
   * *Memory* (MEMORY).
   * *Write-ahead log* (WAL).
* **Хранилище TEMP** — определяет место хранения временных файлов. Действие параметра аналогично выполнению команды БД `"PRAGMA temp_store = 0 | DEFAULT | 1 | FILE | 2 | MEMORY;"` и предусматривает выбор из следующих вариантов:
   * *По умолчанию* — для незашифрованной БД принято *Файловая система*, для зашифрованной БД — *Оперативная память*.
   * *Файловая система*.
   * *Оперативная память*.
* **NOCASE в режиме UNICODE** — флаг переопределяет сравнение NOCASE как UNICODE — языконезависимое сравнение символов Unicode без чувствительности к регистру.
* **lower, upper for UNICODE**: the checkbox extends the effect of lower, upper functions for all UNICODE characters. If this option is not enabled, lower, upper functions are available only for the Latin letters.
* **LIKE Mode**: it is required to select one of the character collation options to use LIKE function.
   * Case-insensitive ASCII characters.
   * Case-sensitive.
   * Case-insensitive.
* **Create DB if it doesn't exist**: when this checkbox is selected, the database specified in the *Connection string* parameter will be created if it doesn't exist. The new DB is created using UTF-16 encoding.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: this parameter is not available for SQLite.
* **Очищать пул при деактивации** — при включенном флаге пул подключений, связанный с узлом Подключения, очищается сразу при деактивации узла. При отключенном флаге подключения начинают постепенно деактивироваться и удаляться из пула после деактивации узла.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, sqlite3.dll and sqlcipher.dll libraries are used. Their bitness matches the Loginom application/ server bitness. These libraries are included into the Loginom distribution kit. When third-party libraries are used, it is possible to redefine values of *Sync mode* and *Transaction journal mode* parameters by default.

## Compatibility

Versions 3.0 and higher.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/SQLite).
* [Официальный сайт производителя](https://sqlite.org).
* [SQL Syntax Documentation](https://sqlite.org/lang.html).
* [PRAGMA Information](https://sqlite.org/pragma.html).
