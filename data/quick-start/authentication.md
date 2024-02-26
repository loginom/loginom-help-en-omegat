---
description: Авторизация в Loginom. Basic Authentication.
---
# Authentication in Megaladata

In the [server Megaladata editions](https://loginom.ru/platform/pricing) it is required to log in before work. For this purpose, it is required to pass the authentication procedure using one of the following ways:

* to enter a username and password on the home page;
* to specify login and password in [URL](#аутентификация-в-url);
* via the [LDAP](./../admin/ldap.md) server (for the Enterprise edition).

Login and password are provided by the administrator, but there is a default user in the case of the software installation: *user* login, without password.

## Authentication in URL

Generally, URL with authentification parameters is as follows:

`http://login:password@address` where

* `login`: login (name) of user (the string that can contain the Roman alphabet characters, digits, characters `_ - .`, space (URL encoded) and any other URL encoded string).
* `password`: password (the string that can contain any characters).
* `address`: URL address of the Megaladata server web interface.

%spoiler%URL examples%spoiler%

`http://user@localhost/app/`

`http://viewer:12345@support/app/`

%/spoiler%

It is possible to use such authentification method with [LDAP](./../admin/ldap.md).

> Authentification in URL is not available in Safari and Yandex.Browser. [Configuration](#настройки-для-браузера-firefox) is required in Firefox.

> If Megaladata is accessed from the Internet, it is recommended to configure server for operation via the `https` protocol.

### Firefox Browser Settings

When transferring authentification parameters to URL in Firefox, warning window will be displayed if server hasn't requested the Basic authentification. To avoid the warning window displayed by Firefox, it is required to configure the Apache server in such a way to make it request the Basic configuration.

%spoiler%Example of Firefox configuration for localhost %spoiler%

It is required to create alias with `http://localhost/app/`, for example: `http://localhost/app-basicauth/`. It will make the application available.
When logging into Firefox via `http://localhost/app-basicauth/`, Apache will request the Basic authentification.

It is required to create a file with usernames and hashed passwords - [documentation](https://httpd.apache.org/docs/2.4/programs/htpasswd.html).

If it is required to provide configuration only for `user` user who doesn't have a password by default, it is sufficient just to create `.htpasswd` file (without extension) in the following folder: `C:\Program Files\Loginom\Client` with the following code:

```
<If "%{HTTP_USER_AGENT} =~ /Firefox/ && %{REQUEST_URI} =~ /\/app-basicauth\//">
    AuthType Basic
    AuthName Documents
    AuthBasicProvider file
    AuthUserFile "/path/to/.htpasswd"
    Require valid-user
</If>
<Else>
    Require all granted
</Else>
```

In the result, Firefox will show the information window with the following text: `You are about to log in to the site “localhost” with the username “user”`.

%/spoiler%
