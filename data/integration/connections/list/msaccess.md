# ![ ](../../../images/icons/data-sources/db-msaccess_default.svg) Подключение MS Access

Используется для подключения к базе данных Microsoft Access.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — указывается путь к файлу БД, содержащему необходимые данные. Parameters can be manually entered, or it is possible to press the following button ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) to call window *Open file*.
* **Test connection**: test of the specified connection settings.
* **Логин** — логин при подключении к Microsoft Access не используется;
* **Логин** — указывается пароль, установленный пользователем БД;
* **Сохранять пароль** — при установке этого флага пароль будет сохранен в текущих настройках подключения;
* **Показывать системные таблицы** — при установке этого флага в мастере импорта, использующего данное подключение, становятся видимы доступные пользователю системные таблицы БД;
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Настройка кавычек** — является информационным полем, указывающим, какие именно обрамляющие символы используются в подключении  к данной БД. Для Microsoft Access — квадратные скобки;
* **Не использовать клиент СУБД** —  для Microsoft Access этот параметр не доступен;
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения к базе данных необходима установка Microsoft Office или [Microsoft Access Database Engine](https://www.microsoft.com/en-us/download/details.aspx?id=13255) той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

Версии 95, 97, 2000, 2003, 2007, 2010, 2013 и 2016.

**See also:**

* [Manufacturer official website](https://www.microsoft.com/ru-ru)
* [Product Documentation](https://docs.microsoft.com/ru-ru/).
