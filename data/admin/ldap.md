---
description: Использование LDAP аутентификации в Loginom. Настройка LDAP аутентификации для авторизации на сервере Loginom. Автоматическое добавление пользователя. Правка подключения.
---
# LDAP

В редакции платформы Loginom Enterprise доступно использование LDAP аутентификации, что позволяет авторизоваться на сервере Loginom через LDAP сервер.

> **Note:** Both Active Directory and OpenLDAP can be used as the LDAP server.

## Configure

The LDAP server connection settings are analyzed in [Parameters](./parameters.md#parametry-ldap) subsection of Administration section, change of *Authentification* user method is analyzed in [Users](./users/README.md) subsection.

## Authentification

The user name and password entered on the Loginom home page are used for *Authentification*:

1. The current user is searched for by the specified name on the Loginom server.
2. If the user has been found, and the "LDAP" authentification method has been set for him, or no user has been found, *Authentification* attempt is made using the LDAP server.

> **Notes:**
>
> * In this case, it is not allowed to use the empty username or empty password as such user must get the anonymous access (otherwise, the following error is shown at once: "Invalid username or password").
> * DN, UPN or domain\user formats are not supported and will cause the following error: "Invalid username or password".

*Authentification* of the user is checked in two steps:

1. Search for the account by the entered name in the Base Domain directory (and its subdirectories) matching the LDAP Filter. 
   * As a rule, it is checked here that the detected record is the user record, and it is a member of the set group.
2. *Authentification* of this user with full domain name (DN) from the detected account and entered password.
   * If the SASL authentification is used, the entered username is used as login but not the full domain name.

### Auto Adding of User

If the user *Authentification* by means of LDAP is successful, and this user is not included into the list of the Loginom server users, it is automatically created.

The entered username is used as a name, the "LDAP" authentification method is set, no roles are defined (administrator, developer, reports view, start in the service mode).

### Methods Used to Check Configuration Correctness of the LDAP Server Parameters

To check connection to the LDAP server, it is possible to perform the following actions:

If the user is not in Loginom:

* Create user by means of the LDAP Authentification method. If the LDAP server connection parameters are incorrectly set, the error message with the name of the added user will appear. Otherwise, the information message will notify that the user has been added:

![Error adding LDAP user to Loginom.](./ldap-checkup-1.png)

* The automatic authorization is also possible. For this purpose, it is required to enter the username and password of the account available on the LDAP server on the Loginom home page. If the authorization is successful, connection to the LDAP server from Loginom has been correctly set.

If the user is in Loginom:

* It is required to enter the username and password of the account available on the LDAP server on the Loginom home page. If the authorization is successful, connection to the LDAP server from Loginom has been correctly set.
