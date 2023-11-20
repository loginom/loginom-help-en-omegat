---
description: Справка по общим настройкам сервера или приложения Loginom. Управление папками, интеграция с LDAP, параметры логирования. Установка подключения. Настройка компонентов "Выполнение программы" и "Python". 
---
# ![Parameters](./../images/icons/common/admin-system-objects/properties_default.svg)  Parameters

 It is possible to view and change the general server/application settings on "Parameters" page.

Two buttons are located in the upper part of the page:

* ![Save](./../images/icons/common/toolbar-controls/save_default.svg) **Save** enables to save introduced changes of parameters.
* ![Update](./../images/icons/common/toolbar-controls/refresh_default.svg) **Update** enables to upload currently used parameters.

> **Note:** It is required to press ![](./../images/icons/common/toolbar-controls/save_default.svg) *Save* button upon completion of parameters correction.

## Folders

Parameters of this group set directories for file storage in the server platform editions. The introduced changes take effect after the server service restart.

This group of parameters is not available in the desktop platform editions.

|Parameter|Default value|Description|
|:-|:-|:-|
|User data|UserStorage|The parameter is required for the name of the directory in which private directories of [users](./users/README.md) created in [Shared folders](./shared-folder.md) are located|
|Session backups|SessionBackup|The parameter enables to set the name of the directory for session backups|

Physically, the following path is used for location of all user folders on the server:  `"C:\ProgramData\Loginom\Server\UserStorage"`. This path can be changed in the configuration files of the Loginom server. Apart from access to the personal folder, a user can be provided with access rights to other file storage folders by the server administrator.

The personal user folder and his account (login) have the same name.

The path to the file or package in the file storage is set relative to the UserStorage folder. For example:

* full path to the package: `"C:\ProgramData\Loginom\Server\UserStorage\<user>\test.lgp"` where `<user>` is a user login;
* path to the package in the file storage: `<user>/test.lgp`.

## LDAP Parameters

Integration with LDAP is available only in the server Enterprise edition.

Parameters of this group are not available in the server Team and Standard editions and in several desktop editions (Personal and Community).

Settings change for connection to [LDAP](./ldap.md) server takes effect upon pressing ![](./../images/icons/common/toolbar-controls/save_default.svg) *Save* button.

|Parameter|Default value|Description|
|:-|:-|:-|
|Host||Domain host name (or IP address) of the LDAP server.  It is set by the empty string by default. In this case, the LDAP users are not checked. |
|Port|389|Number of the port for the LDAP server connection. 389 for the normal connection by default or 636 for the SSL connection.|
|Connection security|Normal connection|It enables to set secure (SSL/TLS) connection to LDAP via the special port (636 by default) or provide secure connection (STARTTLS) for the normal port via STARTTLS. Normal (nonsecure) connection by default.|
|Use SASL|false|Use SASL mechanism with DIGEST-MD5 password encryption for user authentification. It is used for the secure password propagation via nonsecure connection.|
|Account||User DN with LDAP read rights (search for users and groups). The account for LDAP connection must be located in the container specified in the Base Domain parameter. It is permissible to use domain\user format or UPN(<user@domain.com>) if the LDAP server makes it possible to do so. Empty name and password are used by default that provides the anonymous access to LDAP.|
|Password||Password for the read service account from LDAP|
|Base domain||Domain name of the directory `ou=users,dc=domain,dc=com` in which users are searched for|
|LDAP filter|(objectClass=user)|User filter in which it is also possible to verify user affiliation with a group. For example, filter for Active Directory can be `(&(objectClass=user)(memberOf:1.2.840.113556.1.4.1941:=cn=test,ou=groups,dc=domain,dc=com))`, for OpenLDAP `(objectClass=posixAccount)` where use of extension `:1.2.840.113556.1.4.1941:`  for Active Directory enables to use mapping also by nested groups (it can be used only for Active Directory). Additional configuration can be required for filters in OpenLDAP.
|Attribute with username|sAMAccountName|Attribute name in the user record that includes the username used for connection and [automatic addition of Megaladata user](./ldap.md#avtomaticheskoe-dobavlenie-polzovatelya) when the LDAP authentification is successful. It is generally `sAMAccountName` for Active Directory, and `uid` for OpenLDAP. |
|Attribute with full username|displayName| Attribute name in the user record that includes the full username. The full username is used to specify the account owner in the Users list. |
|New user role|None|The parameter sets [user role](./users/roles.md) ("Workflows design" or "View reports") in the case of the automatic new user addition by means of LDAP authentification. By default, role is not assigned to the user created by means of LDAP. The user created with "Workflows design" role will be provided with rights to publish packages (refer to [Users](./users/README.md)).|

## Security Parameters

|Parameter|Default value|Description|
|:-|:-|:-|
|Password entry attempt limit|Disabled|When user reaches this limit, he will not be able to log in anymore until  *Password entry timeout* expires. History of failed password entry attempts is reset when Megaladata Server is restarted. If the maximum number of failed attempts of "Batch processing" account login is exceeded, batch processing using this account via Integrator and BatchLauncher will become unavailable before password entry timeout expiration. Minimum value - 1 attempt, maximum - 10000 attempts.|
|Password entry timeout (s)|∞|Period of restrictions imposed on the user who exceeded *Password entry attempt limit*. The restriction applies to all accounts, including the accounts with *Administration* and *Batch processing* roles. Minimum value - 1 second, maximum value - 2000000 seconds or ∞. If infinite timeout (∞) is set when password entry attempt limit is reached, the user will not be able to log in until Megaladata Server is restarted, or the administrator changes *Password entry timeout* or *Password entry attempt limit*.|

## Logging Parameters

Parameters of this group are set both in the server and desktop editions of the platform. They define log file generation rules. (It is a registration log in which execution of each node is fixed that enables to detect location and possible reason of the occurred error).

The introduced changes take effect upon pressing ![](./../images/icons/common/toolbar-controls/save_default.svg) *Save* button.

|Parameter|Default value|Description|
|:-|:-|:-|
| [Logging level](./log.md)|Information|Method and completeness of the log file filing is specified here (*Trace*, *Debug*, *Information*, *Event*, *Warning*, *Error* and *Fatal*)|
|Exception trace|false|It enables/disables debug operation mode. When the debug mode is enabled, the extended information is recorded to log file for error diagnostics. Generation of the extended information in the debug operation mode causes performance loss that is why exception trace must be disabled during the normal operation. The debug operation mode is disabled by default.|
|File name|app.log|The parameter contains the log file name. It is set by the path relative to Logs folder. By default, the file is located for the server edition in `"C:\ProgramData\Loginom\Server\Logs"`, and for Desktop edition in `"C:\Users\User\AppData\Roaming\Loginom\Personal\Logs"`.|
|Rewrite file|false|Checkbox of the logging file recreation while the application start instead of its supplementation. If the value is true, the log file will rewrite the old one at each start.|
|Maximum file size|10484760|The maximum size of the log file is set in bytes. When this size is exceeded, the file is saved with .1 extension, and the new one is created. For example, the old app.log file is saved as app.log.1 when this size is exceeded, and the new app.log file will be created instead of it where the log is maintained further.|
|Number of backup files|10|Number of backup copies created when the maximum size of the log file is exceeded. When the file size is exceeded, and the new logging file is created, the old file gets .1 extension with `+1: .2, .3 ... shift of the old saved files, .<maximum index>`, the old backup app.log.1 file will become app.log.2, and the oldest log file is deleted if the limit is reached at the moment of the backup file addition. When value < 1, old log files are not saved.|

## Connection Parameters

Connection parameter changes take effect after the server service restart.

Parameters of this group are not available in the desktop Megaladata editions.

|Parameter|Default value|Description|
|:-|:-|:-|
|Listen addresses|0.0.0.0|Address or addresses listened on the server availability|
|TCP port|4580|The port used for the server connection|
|WebSocket port|8080|The port used for message exchange with server|
|WebSocket SSL/TLS port| if WSS (WebSocket Secure) is configured, 8443, otherwise null|The secure port used for message exchange with server|
|Certificate file name||Path to the certificate file used for the SSL connection. It is set by the absolute or relative path (root directory `"C:\ProgramData\Loginom\Server"`).|
|Private key file name||Path to the key file used for the SSL connection. It is set by the absolute or relative path (root directory `"C:\ProgramData\Loginom\Server"`).|
|Connection check period (s)|Disabled|Time interval between check of connection with client. Необходим для автоматического определения разрыва сетевого соединения и закрытия соответствующей сессии клиента вместе с открытыми в ней пакетами. The state of the server and client connection channel is checked using the special message that is periodically sent to the client if no messages are sent to the server from the client during the set time interval. If any message is sent from the client, the timer is reset. Namely, the special message is sent only if no incoming message has been sent by the connection channel for a long period of time. It is possible to disable check of server and client connection. For this purpose, it is required to delete the check period value, save settings and restart the server. The disabled connection check can cause locking of packages by the server as the server will not be able to detect the loss of connection with the client, and it will be decided that the package is still being used by the client. In the case of the enabled parameter or small timeout, it can be impossible to reestablish connection after the connection loss.|

Possible port values are set in the numeric format in the interval from 0 to 65535.

## Server Parameters

Changes of the parameters that define the server operation mode, take effect upon pressing ![](./../images/icons/common/toolbar-controls/save_default.svg) *Save* button.

> **Примечание:** в настольных редакциях данная группа параметров называется *Параметры приложения* и включает в себя только параметры *Размер пула потоков* и *Локаль*.

|Параметр|Значение по умолчанию|Описание|
|:-|:-|:-|
|Размер пула пакетов|10|Количество часто используемых в пакетной обработке пакетов Loginom Integrator, сохраненных для быстрого вызова|
|Размер пула потоков| По умолчанию| Максимальное количество ставших неактивными после использования потоков, которые не удаляются и держатся в памяти для возможного последующего использования. Default value — *Number of CPU cores* * 32. Maximum value — 1 000 000. Увеличение параметра позволяет быстрее работать при большом количестве параллельных операций. Уменьшение параметра — это потенциальное снижение потребления памяти.|
|Таймаут остановки сервера (сек.)|10|Время, выделяемое серверу на завершение работы. The minimum value is equal to 0.|
|Locale|Not set(...)[^1]|It sets locale of the *Megaladata* server/application. Локаль применяется только после перезагрузки сервера/приложения *Loginom*|

[^1]: В серверных редакциях локаль задаётся в процессе установки, в настольных — определяется при первом запуске в соответствии с региональными настройками текущего пользователя.

> **Важно:** после смены локали некоторые узлы, например, [Сортировка](./../processors/transformation/sorting.md), [Экспорт в текстовый файл](./../integration/export/txt-csv.md) и др. могут работать по-другому.

## Component Parameters: Program Execution

Внесенные изменения вступают в силу после нажатия кнопки ![](./../images/icons/common/toolbar-controls/save_default.svg) *Сохранить*.

|Parameter|Default value|Description|
|:-|:-|:-|
|Execution forbidden|true|The parameter forbids execution of the [*Program execution*](./../processors/integration/exec-program.md) node if true value is set, and enables to execute the node when the value is false|

> **Примечание:** в настольных редакциях *Выполнение программы* по умолчанию разрешено, при необходимости его можно запретить.

## Component Parameters: Python

The introduced changes take effect upon pressing ![](./../images/icons/common/toolbar-controls/save_default.svg) *Save* button.

|Parameter|Default value|Description|
|:-|:-|:-|
|Execution forbidden|true|The parameter forbids execution of the *Python* node if true value is set, and enables to execute the node when the value is false|
|Library path| |It defines the path to python3x.dll file where x — number of minor release of the shared Python library. It is optionally specified. По умолчанию используется установленный Python последней версии, зарегистрированный в операционной системе. Если в параметре путь не задан, то осуществляется его автоматический поиск в переменной окружения `PYTHONHOME` и реестре. Самый простой способ узнать путь до библиотеки python3x.dll — воспользоваться командной строкой в Windows. Для этого необходимо открыть консоль «Командная строка» («CMD») и ввести запрос «where python*.dll» (в качестве примера была выбрана для отображения версия Python 3.9). Ответом будет полный путь до необходимой библиотеки. ![Путь к библиотеке Python через командную строку](./cmd_python.png)|
|Путь интерпретатора| |Определяет путь к исполняемому файлу интерпретатора, который выполняет скрипт из узла *Python* в режиме выполнения Python в отдельном процессе. Кроме того этот путь учитывается в режиме выполнения узла Python при [поиске модулей внутри процесса Loginom](#poisk-moduley-python-vnutri-protsessa-loginom). По умолчанию *Путь интерпретатора* задается: 1. в *Windows* аналогично поиску разделяемой библиотеки; 2. в *Linux* следующим образом: а. определяется домашняя директория Python: если в переменной окружения `PYTHONHOME` указан действительный путь в системе, то берётся он, иначе домашняя директория равна `/usr`, б. оносительно домашней директории исполняемый файл интерпретатора ищется по пути `/bin/python3`, в. если исполняемый файл не найден, то выполняется python3 без указания пути.|
|Передавать переменные окружения узла|false|Параметр необходим для запуска процесса Python в изолированном окружении. При значении true в процесс Python добавляются переменные окружения: `LAUNCHER_PATHS` — примонтированные в файловое хранилище пути, разделенные `:` (Linux) или `;` (Windows), `LAUNCHER_USER` — имя пользователя Loginom, `LAUNCHER_USER_TMP` и `LAUNCHER_COMMON_TMP` — пути папок для сохранения временных файлов пользователя и рабочей директории, `LAUNCHER_PIPEDIR` — имя папки, в которой создаются файлы именованных каналов для IPC (Linux), `LAUNCHER_PIPENAME` — имя дуплексного именованного канала для IPC (Windows), `LAUNCHER_CURRENTDIR` — имя текущей папки Loginom (совпадает с путём сохранённого пакета), `LAUNCHER_LOCALE` — имя текущей локали (например, `ru_RU`), `LAUNCHER_NODE_GUID` — GUID узла, `LAUNCHER_NODE_NAME` — имя узла, `LAUNCHER_NODE_DISPLAYNAME` — метка узла, `LAUNCHER_PREVIEW` — устанавливается для Предпросмотра.|

For *Python* nodes operation it is required to take into account the following peculiarities and restrictions:

* Maximum supported Python version — 3.5.
* Maximum tested Python version — 3.10.
* Creation of GUI interface from the Python code is not designation of the *Python* component, and in some cases it can cause incorrect application operation. For example:
   * работа узла не будет прекращена до завершения работы GUI-приложения. При работе в серверных редакциях Loginom пользователь, как правило, не имеет доступа к окну GUI-приложения.

Для работы узлов *Python* в изолированном окружении пользователя необходимо сделать следующее:

* В Администрировании, в параметрах компонента Python включить опцию "Передавать переменные окружения узла".
* В параметре "Путь интерпретатора" указать полный путь к bash-скрипту — **python_run.sh** (или аналогичному).
* Для запуска на Linux должен быть установлен *Docker* или *Podman*. В **python_run.sh** имеется параметр `DOCKER_OR_PODMAN`, отвечающий за способ контейниризиции, значение по умолчанию — `podman`.
* Должен быть подготовлен базовый docker образ c Python и нужными Python пакетами внутри. В **python_run.sh** имя образа прописывается в параметре `IMAGE_NAME`, значение по умолчанию — `python`.

В **python_run.sh** имеется параметр `CONTAINER_OPTIONS`, в который можно передавать настройки контейнера, например, значение переменной `oom-score-adj`. `oom-score-adj=1000` value is set by default. То есть если OOM Killer будет необходимо завершить какой-либо процесс, то контейнер будет первым кандидатом для этого.

For *Python* nodes operation inside the Megaladata process, it is required to take into account the following peculiarities and restrictions:

* В системе должен быть [установлен Python](https://www.python.org/downloads/) одной разрядности с приложением/сервером Loginom.
* Python from Anaconda distribution kit is not supported.
* [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) package modules are not supported.
* Creation of GUI interface from the Python code is not designation of the *Python* component, and in some cases it can cause incorrect application operation. For example:
   * для работы `matplotlib` с бэкэндом [Qt](https://wiki.qt.io/About_Qt) и в целом с [PyQt](https://riverbankcomputing.com/software/pyqt/intro) требуется наличие файла [qt.conf](https://doc.qt.io/qt-5/qt-conf.html) с путями к библиотекам/плагинам Qt. При невозможности их найти, приложение Loginom будет принудительно завершено с сообщением об ошибке.
* Оставленные незавершенными фоновые потоки могут приводить к аварийному завершению приложения.
* In the case of crytical errors python3x.dll can shut the application down. It is recommended to use preliminarily debugged Python code.
* Only one *Python* node can be simultaneously executed.
* Остановить выполнение узла *Python* можно только между инструкциями интерпретатора.
* [Виртуальные окружения](https://docs.python.org/3/library/venv.html) возможно использовать при задании *Путь интерпретатора*. Для этого путь интерпретатора должен указывать на python.exe внутри виртуального окружения [подробнее о поиске модулей Python внутри процесса Loginom](#poisk-moduley-python-vnutri-protsessa-loginom). Для корректной работы версия python.exe в виртуальном окружении и версия python3x.dll, через которую выполняется код узла, должны совпадать.

> **Примечание:** для настольных редакций выполнение узла *Python* по умолчанию разрешено, при необходимости выполнение можно запретить.

> **Примечание:** под Linux не поддерживается режим выполнения Python внутри процесса Loginom, следовательно, нет и настройки *Путь библиотеки*. Узлы *Python*, настроенные на выполнение внутри процесса, на Linux будут выполняться в отдельном процессе.

### Search for Python modules inside the Megaladata process

Путь к папке, в которой расположен интерпретатор, добавляется как ещё один путь в `sys.path` — список путей, по которым ищутся модули.

Если на один каталог выше каталога *Путь интерпретатора* существует файл с именем `pyvenv.cfg`, то `sys.prefix` и `sys.exec_prefix` устанавливаются равными этому каталогу, и проверяется наличие `site-packages`. Found `site-packages` are added to `sys.path`. Если `pyvenv.cfg` содержит ключ `include-system-site-packages` и его значение не равно true, то базовый путь `site-packages` (относительно `sys.base_prefix`) не включается в `sys.path`.
