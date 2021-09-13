# LDAP

Use of LDAP authentication enables to log in to the Loginom server by means of the LDAP server.

> **Note:** Both Active Directory and OpenLDAP can be used as the LDAP server.

## Configure

Settings of connection to the LDAP server are analyzed in [Parameters](./parameters.md#parametry-ldap) subsection of Administration section, change of *Authentification* user method is analyzed in [Users](./users.md) subsection.

## Authentification

The user name and password entered on the Loginom home page are used for *Authentification*:

1. The current user is searched for by the specified name on the Loginom server.
2. If the user has been found, and the "LDAP" authentification method has been set for him, or no user has been found, *Authentification* attempt is made using the LDAP server.

> **Notes:**
>
> * In this case, it is not allowed to use the empty username or empty password as such user must get the anonymous access (otherwise, the following error is shown at once: "Invalid username or password").
> * DN, UPN or domain\user formats are not supported and will cause the following error: "Invalid username or password".

*Authentification* of the user is checked in two steps:

1. Поиск учетной записи по введенному имени в каталоге Базовый домен (и его подкаталогах) соответствующего Фильтру LDAP;
   * Как правило, здесь происходит проверка того, что найденная запись является записью пользователя и является членом заданной группы.
2. *Аутентификация* этого пользователя с полным доменным именем (DN) из найденной учетной записи и введенным паролем.
   * В случае использования SASL аутентификации, для логина используется введенное имя пользователя, а не полное доменное имя.

### Автоматическое добавление пользователя

В случае успешной *Аутентификации* пользователя через LDAP и отсутствия данного пользователя в списке пользователей Loginom сервера, он создается автоматически.

В качестве имени берется введенное имя пользователя, выставляется способ аутентификации "LDAP", не включена ни одна роль (администратора, разработчика, просмотра отчетов, запуска в режиме службы).

### Способы проверки правильности настройки параметров подключения к LDAP серверу

Для проверки подключения к LDAP серверу можно:

Если пользователя нет в Loginom:

* Создать пользователя со способом Аутентификации LDAP. Если параметры подключения к LDAP серверу настроены неправильно, то будет сообщение об ошибке с указанием имени добавляемого пользователя, иначе будет информационное сообщение, что пользователь добавлен:

![Ошибка добавления LDAP пользователя в Loginom.](./ldap-checkup-1.png)

* Также можно попробовать авторизоваться автоматически, для этого на стартовой странице Loginom ввести имя пользователя и пароль учетной записи, которая имеется на LDAP сервере и если авторизация прошла успешно, то подключение из Loginom к LDAP серверу настроено правильно.

Если пользователь уже есть в Loginom:

* На стартовой странице Loginom ввести имя пользователя и пароль учетной записи, которая имеется на LDAP сервере и если авторизация прошла успешно, то подключение из Loginom к LDAP серверу настроено правильно.
