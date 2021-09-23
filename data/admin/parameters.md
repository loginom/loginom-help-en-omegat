# ![Parameters](../images/icons/admin-system-objects/properties_default.svg)  Parameters

This subsection includes general settings. There are two buttons in the upper part of the section:

* ![Save](../images/icons/toolbar-controls/save_default.svg) **Save** enables to save introduced changes of parameters.
* ![Update](../images/icons/toolbar-controls/refresh_default.svg) **Update** enables to upload currently used parameters.

## Folders

The directories used to save data and files are set here:

|Parameter|Default value|Description|
|:-|:-|:-|
|User data|UserStorage|The parameter is required for the name of the directory in which private directories of [users](./users.md) created in [Shared folders](./shared-folder.md) are located|
|Session backups|SessionBackup|The parameter enables to set the name of the directory for session backups|

The introduced changes take effect after the server service restart.

## LDAP Parameters

The settings used for connection to the [LDAP](./ldap.md) server are set here:

|Parameter|Default value|Description|
|:-|:-|:-|
|Host||Domain host name (or IP address) of the LDAP server. It is set by the empty string by default. In this case, the LDAP users are not checked. |
|Port|389|Number of the port for the LDAP server connection. 389 for the normal connection by default or 636 for the SSL connection.|
|Connection security|Normal connection|It enables to set secure (SSL/TLS) connection to LDAP via the special port (636 by default) or provide secure connection (STARTTLS) for the normal port via STARTTLS. Normal (nonsecure) connection by default.|
|Use SASL|false|Use SASL mechanism with DIGEST-MD5 password encryption for user authentification. It is used for the secure password propagation via nonsecure connection.|
|Account||User DN with LDAP read rights (search for users and groups). It is permissible to use domain\user format or UPN(user@domain.com) if the LDAP server makes it possible to do so. Empty name and password are used by default that provides the anonymous access to LDAP.|
|Password||Password for the read service account from LDAP|
|Base domain||Domain name of the directory `(ou=users,dc=domain,dc=com)` in which users are searched for|
|LDAP filter|(objectClass=user)|User filter in which it is also possible to verify user affiliation with a group. For example, filter for Active Directory can be `(&(objectClass=user)(memberOf:1.2.840.113556.1.4.1941:=cn=test,ou=groups,dc=domain,dc=com))`, for OpenLDAP `(objectClass=posixAccount)` where use of extension `:1.2.840.113556.1.4.1941:`  for Active Directory enables to use mapping also by nested groups (it can be used only for Active Directory). Additional configuration can be required for filters in OpenLDAP.
|Attribute with username|sAMAccountName|Attribute name in the user record that includes the username used for connection and  [automatic addition of Loginom user](./ldap.md#avtomaticheskoe-dobavlenie-polzovatelya) when the LDAP authentification is successful. It is generally `sAMAccountName` for Active Directory, and `uid` for OpenLDAP. |
|Attribute with full username|displayName| Attribute name in the user record that includes the full username. The full username is used to specify the account owner in the Users list. |

## Component Parameters: Program Execution

С помощью компонента [*Выполнение программы*](../processors/integration/exec-program.md) можно выполнить внешнюю программу (запустить на выполнение исполняемый файл).

|Параметр|Значение по умолчанию|Описание|
|:-|:-|:-|
|Выполнение запрещено|true|Параметр запрещает выполнение узла *Выполнение программы*, если выставлено значение true, и позволяет выполнять узел при значении false|

## Logging Parameters

В журнале регистрации (лог-файле) фиксируется выполнение каждого узла, что позволяет в случае возникновения ошибки выявить ее местоположение и возможную причину.

|Параметр|Значение по умолчанию|Описание|
|:-|:-|:-|
|Уровень логирования|Информация|Здесь указывается способ и полнота заполнения лог-файла (*Трассировка*, *Отладка*, *Информация*, *Событие*, *Предупреждение*, *Ошибка* и *Авария*)|
|Имя файла|app.log|Параметр содержит имя лог-файла. Задается абсолютным путем относительно папки Logs, то есть по умолчанию для серверной версии файл находится в `"C:\ProgramData\BaseGroup\Loginom 6\Server\Logs"`, а для десктопной версии в `"C:\Users\User\AppData\Roaming\BaseGroup\Loginom 6\Personal\Logs"`.|
|Перезапись файла|false|Флаг пересоздания файла логирования при запуске приложения, вместо его дополнения. При значении true при каждом запуске лог-файл будет перезаписывать старый.|
|Максимальный размер файла|10484760|Максимальный размер лог-файла, задается в байтах. При превышении данного размера, файл сохраняется с расширением .1 и создается новый. Например, старый файл app.log при превышении указанного размера сохранится как app.log.1, а взамен ему будет создан новый app.log, где и продолжится ведение журнала.|
|Количество резервных файлов|10|Количество резервных копий создаваемых при превышении максимального размера лог-файла. При превышении размера файла и создании нового файла логирования, старый файл получает расширение .1, со сдвигом старых сохраненных файлов на `+1: .2, .3, ..., .<максимальный индекс>`, старый резервный файл app.log.1 станет app.log.2, а если на момент добавления резервного файла уже был достигнут лимит, то самый старый файл лога удаляется. When value < 1, old log files are not saved.|

The introduced changes take effect upon pressing *Save* button.

## Connection Parameters

|Параметр|Значение по умолчанию|Описание|
|:-|:-|:-|
|Прослушиваемые адреса|0.0.0.0|Адрес или адреса проверяемые на наличие сервера|
|TCP порт|4580|Порт используемый для соединения с сервером|
|WebSocket порт|8080|Порт используемый для обмена сообщениями с сервером|
|WebSocket SSL/TLS порт| если настроено WSS (WebSocket Secure), то 8443, иначе null|Защищенный порт используемый для обмена сообщениями с сервером|
|Имя файла сертификата||Путь к файлу сертификата используемого для SSL-соединения. Задается абсолютным путем или относительным (корневой каталог "C:\ProgramData\BaseGroup\Loginom 6\Server").|
|Имя файла закрытого ключа||Путь к файлу ключа используемого для SSL-соединения. Задается абсолютным путем или относительным (корневой каталог "C:\ProgramData\BaseGroup\Loginom 6\Server").|
|Период проверки соединения (сек.)|300|Временной промежуток между проверкой соединения с клиентом, необходимый для автоматического определения разрыва сетевого соединения и закрытием соответствующей сессии клиента вместе с открытыми в ней пакетами. Проверка состояния канала связи сервера с клиентом реализуется с помощью специального сообщения, которое периодически отправляется клиенту в том случае, если в течение заданного интервала времени на сервер не приходит ни одного сообщения с клиента. Если же с клиента приходит любое сообщение, то таймер сбрасывается, т.е. специальное сообщение отправляется только в том случае, если по каналу связи долго не приходило ни одного входящего сообщения. Проверку соединения сервера с клиентом можно отключить, для этого необходимо стереть значение периода проверки, сохранить настройки и перезагрузить сервер. Отключение проверки соединения может привести к блокировки пакетов сервером, т.к. сервер не сможет определить разрыв связи с клиентом и будет считать, что пакет все еще используется клиентом. В случае включенного параметра и небольшого таймаута, связь после разрыва соединения может не восстановиться.|

Possible port values are set in the numeric format in the interval from 0 to 65535

The introduced changes take effect after the server service restart.

## Server Parameters

The server has several parameters that define the operation mode.

|Параметр|Значение по умолчанию|Описание|
|:-|:-|:-|
|Размер пула пакетов|10|Количество часто используемых в пакетной обработке и пакетов Loginom Integrator, сохраненных для быстрого вызова|
|Таймаут остановки сервера (сек.)|10|Время выделяемое серверу на завершение работы. The minimum value is equal to 0.|

The introduced changes take effect upon pressing *Save* button.

---

> **Примечание**: По завершении корректировки параметров необходимо нажать кнопку *Сохранить*. Для вступления в силу изменений ряда параметров требуется перезагрузка службы сервера.
