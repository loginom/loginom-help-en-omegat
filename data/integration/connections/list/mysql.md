# ![ ](../../../images/icons/data-sources/db-mysql_default.svg) Подключение MySQL

Используется для подключения к базе данных MySQL.

Возможно подключение как через клиент СУБД, так и через внутренний драйвер Loginom.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — настраивается как в отдельном окне, которое вызывается при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg), так и вводом параметров вручную. Эти настройки используются драйвером OLE DB для подключения к необходимой базе данных.
   * Первый вариант с выводом отдельного окна, вызываемом при клике мышью по кнопке ![ ](../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg). Окно имеет два поля.
      * **Сервер** — хост сервера MySQL.
      * **База данных** — наименование БД.
   * Ввод параметров подключения вручную, параметры в строке указываются через двоеточие. Формат строки: `<ServerName>:<Port/Shared Memory>:<DatabaseName>`, например `localhost:3306:database1`, а при использовании Shared-Memory возможно такое написание `localhost:MYSQL:database1`.
      * **ServerName** — хост сервера СУБД, для подключения по протоколу Shared Memory значение хоста должно быть `localhost`.
      * **Port/Shared Memory** — порт TCP, используемый сервером СУБД для взаимодействия с клиентом. Или заданная сервером опция `shared-memory-base-name` (не должна являться корректным номером порта). Если параметр пустой и *ServerName* не `localhost`, то подключение проходит по протоколу TCP/IP с портом по умолчанию `3306`.
      * **DatabaseName** — имя базы, содержащей необходимые данные. Если параметр *Port/Shared Memory* пустой, то этот параметр можно оставить пустым, в таком случае будут показаны все доступные базы данных.
   * При пустой строке в поле происходит подключение к `localhost`.
* **Test connection**: test of the specified connection settings.
* **Login** is a login of the DB user.
* **Password** is a password of the DB user.
* **Сохранять пароль** —  при установке этого флага логин и пароль будут сохранены в текущих настройках подключения.
* **Show system tables**: when selecting this flag in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Configure quotes** represents the information field that enables to define which framing characters are used for connection to this DB. Для MySQL — обратные апострофы.
* **Не использовать клиент СУБД** — если задействовать эту опцию, то для подключения к СУБД используется альтернативный, встроенный в платформу драйвер.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for quick call upon the node deactivation. По умолчанию этот параметр отключен.
* **Время жизни на время транзакции при неактивности** — сервер MySQL не контролирует некорректно разорванные подключения. В случае некорректного отключения клиента сессия на сервере продолжает существовать до тех пор, пока не завершится timeout. Незавершенные транзакции блокируют данные БД. Во избежание длительных блокировок timeout можно ограничить параметром "Время жизни на время транзакции при неактивности". Задается в секундах.
* **Description**: it is possible to provide any reference data concerning connection in this form.

> **Примечание:** Для подключения к базе данных через клиент СУБД необходима установка файлов клиентской библиотеки (DLL) той же разрядности, что и разрядность приложения/сервера Loginom.

## Compatibility

* Клиенты: 5.7, 5.6, 5.5, 5.1, 5.0, 4.1, 4.0 и 3.23
* Серверы: 5.7, 5.6, 5.5, 5.1, 4.1 и 4.0

> **Примечание:** Проверка совместимости с версией 8.0 не проводилась. При использовании версии 8.0 не рекомендуется использовать новый метод аутентификации.

**Смотри также**:

* [Информация в русском разделе википедии](https://ru.wikipedia.org/wiki/MySQL);
* [Manufacturer official website](https://www.mysql.com/)
* [Документация по SQL синтаксису](https://dev.mysql.com/doc/refman/5.7/en/sql-syntax.html).
