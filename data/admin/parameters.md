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

[*Component execution*](../processors/integration/exec-program.md) component enables to execute the external program (to start execution of the executed file).

|Parameter|Default value|Description|
|:-|:-|:-|
|Execution forbidden|true|The parameter forbids execution of the *Program execution* node if true value is set, and enables to execute the node when the value is false|

## Logging Parameters

Execution of each node is recorded in the registration log (log file) that enables to detect location of error and its possible reason in the case of error occurrence.

|Parameter|Default value|Description|
|:-|:-|:-|
|Logging level|Information|Method and completeness of the log file filing is specified here (*Trace*, *Debug*, *Information*, *Event*, *Warning*, *Error* and *Fatal*)|
|File name|app.log|The parameter contains the log file name. It is set by the absolute path relative to the Logs folder, namely, is located in `"C:\ProgramData\BaseGroup\Loginom 6\Server\Logs"` by default for the server version the file, and for the desktop version in  `"C:\Users\User\AppData\Roaming\BaseGroup\Loginom 6\Personal\Logs"`.|
|Rewrite file|false|Checkbox of the logging file recreation while the application start instead of its supplementation. If the value is true, the log file will rewrite the old one at each start.|
|Maximum file size|10484760|The maximum size of the log file is set in bytes. When this size is exceeded, the file is saved with .1 extension, and the new one is created. For example, the old app.log file is saved as app.log.1 when this size is exceeded, and the new app.log file will be created instead of it where the log is maintained further.|
|Number of backup files|10|Number of backup copies created when the maximum size of the log file is exceeded. When the file size is exceeded, and the new logging file is created, the old file gets .1 extension with `+1: .2, .3, ... shift of the old saved files, .<maximum index>`, the old backup app.log.1 file will become app.log.2, and the oldest log file is deleted if the limit is reached at the moment of the backup file addition. When value < 1, old log files are not saved.|

The introduced changes take effect upon pressing *Save* button.

## Connection Parameters

|Parameter|Default value|Description|
|:-|:-|:-|
|Listen addresses|0.0.0.0|Address or addresses listened on the server availability|
|TCP port|4580|The port used for the server connection|
|WebSocket port|8080|The port used for message exchange with server|
|WebSocket SSL/TLS port| if WSS (WebSocket Secure) is configured, 8443, otherwise null|The secure port used for message exchange with server|
|Certificate file name||Path to the certificate file used for the SSL connection. It is set by the absolute or relative path (root directory "C:\ProgramData\BaseGroup\Loginom 6\Server").|
|Private key file name||Path to the key file used for the SSL connection. It is set by the absolute or relative path (root directory "C:\ProgramData\BaseGroup\Loginom 6\Server").|
|Connection check period (s)|300|Time interval between check of connection with client that is required for the automatic determination of the network connection loss and closure of the corresponding client session with the packages opened in it. The state of the server and client connection channel is checked using the special message that is periodically sent to the client if no messages are sent to the server from the client during the set time interval. If any message is sent from the client, the timer is reset. Namely, the special message is sent only if no incoming message has been sent by the connection channel for a long period of time. It is possible to disable check of server and client connection. For this purpose, it is required to delete the check period value, save settings and restart the server. The disabled connection check can cause locking of packages by the server as the server will not be able to detect the loss of connection with the client, and it will be decided that the package is still being used by the client. In the case of the enabled parameter or small timeout, it can be impossible to reestablish connection after the connection loss.|

Possible port values are set in the numeric format in the interval from 0 to 65535

The introduced changes take effect after the server service restart.

## Server Parameters

The server has several parameters that define the operation mode.

|Parameter|Default value|Description|
|:-|:-|:-|
|Package pool size|10|The number of the Loginom Integrator packages frequently used in the batch processing saved for the quick call|
|Server stop timeout (s)|10|The time allocated to the server to complete operation. The minimum value is equal to 0.|

The introduced changes take effect upon pressing *Save* button.

---

> **Note**: It is required to press *Save* button upon completion of parameters correction. The changes of some parameters take effect after the server service restart.
