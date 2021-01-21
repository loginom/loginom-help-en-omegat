# ![ ](../../../images/icons/data-sources/driver-odbc_default.svg) Подключение ODBC

Используется для подключения к одному из источников данных [ODBC](https://wiki.loginom.ru/articles/odbc.html).

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — указывается строка подключения в формате установленного в системе драйвера ODBC, либо выбирается один из настроенных в системе источников данных ODBC. Список источников вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). В списке выводятся доступные источники данных ODBC. Настройка источников осуществляется в [администраторе источников данных ODBC Windows](https://docs.microsoft.com/ru-ru/sql/database-engine/configure-windows/open-the-odbc-data-source-administrator). Там же содержится информация об установленных в системе драйверах и можно узнать формат строки подключения;
* **Test connection**: test of the specified connection settings.
* **Логин** — логин пользователя БД;
* **Пароль** — пароль пользователя БД;
* **Сохранять пароль** — при установке этого флага логин и пароль будут сохранены в текущих настройках подключения;
* **Показывать системные таблицы** — при установке этого флага в мастере импорта, использующего данное подключение, становятся видимы доступные пользователю системные таблицы БД (необходимо ставить при подключении к файлу Excel);
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для ODBC символы обрамляющих кавычек определяются автоматически;
* **Не использовать клиент СУБД** — для подключений ODBC эта опция не используется;
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. This parameter is disabled by default.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения необходима установка драйвера ODBC той же разрядности, что и разрядность приложения/сервера Loginom. В 64-разрядных ОС используются два администратора источников данных ODBC 32-разрядный C:\Windows\SysWOW64\odbcad32.exe и 64-разрядный C:\Windows\System32\odbcad32.exe.

Список предустановленных в ОС Windows драйверов ODBC:

32-разрядные:

* SQL Server
* Microsoft ODBC for Oracle
* Microsoft Access Driver (*.mdb)
* Microsoft dBase Driver (*.dbf)
* Microsoft Excel Driver (*.xls)
* Microsoft Paradox Driver (*.db )
* Microsoft Text Driver (*.txt; *.csv)
* Microsoft Visual FoxPro Driver

64-разрядные:

* SQL Server

Список драйверов ODBC, для которых предусмотрено использование строки подключения:

* Различные драйвера для SQL Server
* Microsoft Text Driver
* Firebird/InterBase® driver
* Microsoft Excel Driver
* Microsoft Access Driver
* Microsoft dBASE Driver
* Драйвера для Oracle
* SQLite3 ODBC Driver
* Драйвера для MySQL
* Microsoft Paradox Driver
* Microsoft Visual FoxPro Driver
* Драйвера для PostgreSQL
* Драйвера для Sybase/Adaptive Server Enterprise

Если драйвер не находится в данном списке, то настроить подключение к нему возможно только через выбор уже настроенного источника данных.

**See also:**

* [Information in the Russian section in Wikipedia](https://ru.wikipedia.org/wiki/ODBC)
* [Сайт с описанием правил и примеров написания строк подключения](https://www.connectionstrings.com/)
* [Примеры написания строк подключения к разным источникам данных](https://www.sqlmaestro.com/resources/all/anysql_maestro_connection_strings/)
