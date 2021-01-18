# ![ ](../../../images/icons/data-sources/db-firebird_default.svg) Подключение Firebird

Используется для подключения и работы с базой данных Firebird.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — настраивается в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Поддерживается два типа подключения.
   * **локальное** — подключение без использования сервера Firebird, указывается только путь к БД.
   * **удаленное** — подключение с использованием сервера Firebird.
      * **сервер** — хост сервера Firebird.
      * **протокол** — протокол, используемый сервером для взаимодействия с клиентом.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user. Если логин не указан, то используется доменная авторизация.
* **Password** is a password of the DB user.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для Firebird – двойные кавычки.
* **Значение кодировки** — задает кодировку символов, в которой будут трактоваться данные с сервера.
* **Не использовать клиент СУБД** —  для Firebird изменение этого параметра не доступно.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. По умолчанию этот параметр отключен.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения к базе данных необходима установка файлов клиентской библиотеки (DLL) той же разрядности, что и разрядность приложения/сервера Loginom.

В случае, если используется многопользовательский доступ к БД, рекомендуется использовать сервер Firebird для избежания блокировок доступа.

> **Важно:** Доменная авторизация осуществляется от имени пользователя, под которым запущен сервер Loginom.

## Compatibility

Начиная с версии Firebird 2.5 и выше.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/Firebird);
* [Официальный сайт разработчика](https://firebirdsql.org/);
* [Документация по SQL синтаксису](https://www.firebirdsql.org/file/documentation/reference_manuals/fblangref25-en/html/fblangref25-dml.html).
