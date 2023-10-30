---
description: Использование LDAP аутентификации в Loginom. Настройка LDAP аутентификации для авторизации на сервере Loginom. Автоматическое добавление пользователя. Правка подключения.
---
# LDAP

В редакции платформы Loginom Enterprise доступно использование LDAP аутентификации, что позволяет авторизоваться на сервере Loginom через LDAP сервер.

>**Примечание:** В качестве LDAP сервера может использоваться как Active Directory, так и OpenLDAP.

## Настройки

Настройки подключения к LDAP серверу рассмотрены в подразделе [Параметры](./parameters.md#parametry-ldap) раздела Администрирования, изменение способа *Аутентификации* пользователя рассмотрено в подразделе [Пользователи](./users/README.md).

## Аутентификация

Для *Аутентификации* используется введенное на стартовой странице Loginom имя и пароль пользователя:

1. По указанному имени производится поиск существующего пользователя на Loginom сервере;
2. Если пользователь найден и у него установлен способ аутентификации "LDAP" или же пользователь не найден, то проводится попытка *Аутентификации* через LDAP сервер.

>**Примечания:**
>
> * При этом не могут быть использованы пустое имя пользователя или пустой пароль, так как такой пользователь должен получать анонимный доступ (в этом случае сразу выдается ошибка "Неверное имя пользователя или пароль");
> * Форматы DN, UPN или domain\user не поддерживаются и приведут к появлению ошибки "Неверное имя пользователя или пароль".

Проверка *Аутентификации* пользователя проходит в два этапа:

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