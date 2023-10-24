---
description: Авторизация в Loginom. Basic Authentication.
---
# Аутентификация в Loginom

В [серверных редакциях](https://loginom.ru/platform/pricing) Loginom перед началом работы необходимо авторизоваться. Для этого нужно пройти процедуру аутентификации одним из способов:

* ввести логин и пароль на стартовой странице;
* указать логин и пароль в [URL](#аутентификация-в-url);
* через [LDAP](./../admin/ldap.md) сервер (для редакции Enterprise).

Логин и пароль выдаются администратором, но при установке программы существует пользователь по умолчанию: логин *user*, без пароля.

## Аутентификация в URL

В общем виде URL с параметрами для аутентификации выглядит так:

`http://login:password@address`, где

* `login` — логин (имя) пользователя (строка, которая может содержать символы латинского алфавита, цифры, символы `_ - .`, пробел (URL encoded) и любую другую URL encoded строку);
* `password` — пароль (строка, содержащая любые символы);
* `address` — URL-адрес веб-интерфейса сервера Loginom.

%spoiler%Примеры URL%spoiler%

`http://user@localhost/app/`

`http://viewer:12345@support/app/`

%/spoiler%

Есть возможность использовать такой способ аутентификации вместе с [LDAP](./../admin/ldap.md).

> Аутентификация в URL не работает в браузерах Safari и Яндекс.Браузер. В Firefox необходима [настройка](#настройки-для-браузера-firefox).

> Если доступ к Loginom осуществляется из сети Интернет, рекомендуется настроить сервер для работы через `https` протокол.

### Настройки для браузера Firefox

В Firefox, при передаче параметров аутентификации в URL, будет показано предупреждающее окно, если сервер не запросил Basic аутентификацию. Чтобы Firefox не отображал предупреждающее окно, нужно сконфигурировать сервер Apache так, чтобы он запрашивал Basic аутентификацию.

%spoiler%Пример настройки Firefox для localhost %spoiler%

Совместно с `http://localhost/app/` создаем alias, например, такой: `http://localhost/app-basicauth/`, по которому также будет доступно приложение.
При заходе в Firefox по `http://localhost/app-basicauth/` Apache запрашивает Basic аутентификацию.

Потребуется создать файл с именами пользователей и хэшированными паролями - [документация](https://httpd.apache.org/docs/2.4/programs/htpasswd.html).

Если нужно настроить только для пользователя `user`, который по умолчанию без пароля, то достаточно просто создать файл `.htpasswd` (без указания расширения) в папке `C:\Program Files\Loginom\Client` с кодом:

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

В результате Firefox будет отображать информационное окно с текстом: `You are about to log in to the site “localhost” with the username “user”`.

%/spoiler%
