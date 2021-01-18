# ![ ](../../../images/icons/data-sources/db-sqlite_default.svg) Подключение SQLite

Используется для подключения к базе данных SQLite.

Данное подключение так же реализует следующие особенности работы с [импортом баз данных](../../import/database.md).

* Наряду со стандартными правилами сравнения символов (collation) BINARY, RTRIM и NOCASE возможно использование нижеследующих, не регламентированных стандартом SQLite.
   * **UNICODE** — языконезависимое сравнение символов Unicode без чувствительности к регистру.
   * **LOCALIZED** — языкозависимое сравнение символов Unicode без чувствительности к регистру. Результат сравнения строк зависит от локали операционной системы сервера Loginom.
* В SQL конструкциях возможно использование функции iLIKE, реализующей функциональность LIKE в режиме регистронезависимости символов Unicode.
* Проверка по внешним ключам включена по умолчанию.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — указывается путь к файлу БД, содержащей необходимые данные. Параметры можно ввести вручную или нажатием кнопки ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) вызвать окно *Открыть файл*.
* **Test connection**: test of the specified connection settings.
* **Логин** — логин при подключении к SQLite не используется.
* **Пароль** — указывается пароль, установленный пользователем БД для защиты данных.
* **Save password**: when selecting this flag, login and password will be saved in the current connection settings.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для SQLite — двойные кавычки.
* **Не использовать клиент СУБД** — для SQLite этот параметр не доступен.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. По умолчанию этот параметр отключен.
* **Зашифрованная БД** — флаг устанавливает режим шифрования БД. Данный режим использует алгоритм шифрования AES256 и предусматривает использование пароля.
* **Размер кэша** — устанавливает размер кэша. Действие параметра аналогично выполнению команды БД `"PRAGMA schema.cache_size = pages | -kibibytes;"`, где при введении положительного числа указывается количество памяти в страницах, а при отрицательного числа выделение памяти в КиБ.
* **Режим синхронизации** — устанавливается режим синхронизации с файловой системой. Выбор данного режима влияет на быстродействие БД, без синхронизации повышая быстродействие с наименьшей защищенностью от сбоев, и с уменьшением быстродействия в счет наибольшей защищенности от сбоев. Действие параметра аналогично выполнению команды БД `"PRAGMA schema.synchronous = 0 | OFF | 1 | NORMAL | 2 | FULL | 3 | EXTRA;"` и предусматривает выбор из следующих вариантов.
   * *По умолчанию* используется режим FULL (Полный).
   * *Отключена* (OFF).
   * *Нормальный* (NORMAL).
   * *Полный* (FULL).
   * *Экстра* (EXTRA).
* **Режим журнала транзакций** — устанавливается режим работы журнала транзакций. Действие параметра аналогично выполнению команды БД: `"PRAGMA schema.journal_mode = DELETE | TRUNCATE | PERSIST | MEMORY | WAL;"` и предусматривает выбор из следующих вариантов.
   * *По умолчанию* используется режим DELETE (Удаление файла).
   * *Удаление файла* (DELETE).
   * *Очистка содержимого* (TRUNCATE).
   * *Обнуление заголовка* (PERSIST).
   * *Хранение в памяти* (MEMORY).
   * *Упреждающая запись* (WAL).
* **Трактовать NOCASE как UNICODE** — флаг переопределяет сравнение NOCASE как UNICODE — языконезависимое сравнение символов Unicode без чувствительности к регистру.
* **lower, upper для UNICODE** — флаг расширяет действия функций lower, upper на все символы UNICODE. Без задействований данной опции функции lower, upper работают только для букв латинского алфавита.
* **Режим работы LIKE** — предлагается выбрать один из вариантов сравнения символов при использовании функции LIKE.
   * Без учета регистра ASCII символов.
   * С учетом регистра.
   * Без учета регистра.
* **Создавать БД, если не существует** — при установке флага, указанная в параметре *Строка подключения* база данных будет создана, если таковая не существует. Новая БД создается в кодировке UTF-16.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения к базе данных используются библиотеки sqlite3.dll и sqlcipher.dll, совпадающие по разрядности с приложением/сервером Loginom. Данные библиотеки поставляются в составе дистрибутива Loginom. При использовании сторонних библиотек возможно переопределение значений по умолчанию параметров *Режим синхронизации* и *Режим журнала транзакций*.

## Compatibility

Версии 3.0 и выше.

**See also:**

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/SQLite);
* [Manufacturer official website](https://sqlite.org)
* [Документация по SQL синтаксису](https://sqlite.org/lang.html);
* [Информация по PRAGMA](https://sqlite.org/pragma.html).
