---
description: Справка по пользователям в Loginom. Обзор интерфейса с основной информацией по зарегистрированным пользователям, их правам и способам доступа.
---
# ![Users](./../../images/icons/common/admin-system-objects/users_default.svg) Users

The information on the users registered in the system is displayed in the table form on this page. The following commands are available to control users:

* ![Add](./../../images/icons/common/toolbar-controls/plus_default.svg) **Add**: add a new user.
* ![Edit](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit**: edit user.
* ![Delete](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete**: delete user from the system.
* ![Update](./../../images/icons/common/toolbar-controls/refresh_default.svg) **Update**: update the list of users and their parameters.

> **Note:** When deleting a user, it is possible to save his folder with its contents. In this case, the users with the enabled *File storage full access* parameter can view its contents.

%spoiler%Hotkeys%spoiler%

* **Up**: go up to row.
* **Down**: go down to row.
* **Insert**: insert a new user.
* **F2**: edit user.
* **Delete**: delete user from the system.
* **Alt + F5**: update the list of users and their parameters.

%/spoiler%

When pressing ![Add](./../../images/icons/common/toolbar-controls/plus_default.svg) *Add*/![Edit](./../../images/icons/common/toolbar-controls/edit_default.svg)*Edit* button, *New user*/*Edit user* window appears. User parameters are configured in this window. The set parameter values, with the exception of the *Password* parameter value are diplayed in the table on the "Users" page

|Parameter|Description|
|:-|:-|
|Login|User name used for system login. Upon creation of the user, it is not possible to change his name.|
|Full name|Full user name (it is not obligatory to fill in this field)|
|Authentification|Selection of [method of *Authentification*](#sposoby-autentifikatsii) of user: Local or [LDAP](./../ldap.md). The parameter is not available if LDAP is not suported.|
|Password|User password used for system login. This column is not available in the table on the "Users" page.|
|User roles|Group of parameters in which  [user roles](./roles.md) are selected|
|Allow publication of packages|It defines whether the user has a right to [publish packages](./../../integration/web-services/publishing-web-service.md). This checkbox can be edited only if "Workflows design" checkbox is selected. In the case of the automatic new user addition by means of LDAP authentification, he is provided with package publication rights if he is created with "Workflows design" role (refer to [Parameters](./../parameters.md)).|
|File storage full access|It displays whether a user has full access to the [file storageу](./../../location_user_files.md), otherwise, only to the personal and [shared folders](./../../location_user_files.md)|
|Block account|When this checkbox is selected, user access will be locked. By default, the "implicit lock" position is selected for this checkbox for the users created in the "Administration" section. If the user is added without any role, he will be in the "implicit lock" state and won't have access. When the user is assigned with one of the roles, "not selected" position of the checkbox is set. Namely, the user gets access according to the assigned role. If the user is added via LDAP, the "implicit lock" position will be selected for the checkbox, but the user login will be possible.|

*Authentification* parameter is selected from the drop-down list in the window used for user creation/edition, and the selected authentification method is displayed in the table on the "Users" page. If LDAP is not supported, the "Authentification" column is not available in the table.

*Workflows design*, *View reports*, *Batch processing*, *Administration*, *Allow publication of packages*, *File storage full access* and *Blocked*parameters are set in the user creation/edition window selecting checkbox.

The set values of *Workflows design*, *View reports*, *Batch processing*, *Administration* parameters in the table on the "Users" page  are displayed in the form of icons with pop-up tips in the "Roles" column. *Allow publication of packages*, *File storage full access* and *Block account* checkboxes are selected with "•" character in "Publish packages", "Access to all files" and "Blocked" columns of the table.

## Authentification Methods

Use of the LDAP authentication enables to log in to the Megaladata server by means of the LDAP server, if the *Authentification* parameter value is "Local", the authentification is performed by means of the Megaladata tools.

> **Notes:**
>
> * It is not allowed to change the authentification method for oneself because the user can become unavailable in this case, whereas he could be the only administrator.
> * The last local administrator is not allowed to change the authentification method. Namely, at least one active local administrator will be always preserved in the system because the LDAP authentification administrator can become unavailable due to incorrect settings or changes on the LDAP server.
> * Password is reset when the *Authentification* parameter value is changed from "LDAP" to "Local". In this case, user login with empty password is allowed if another password has not been set in the process of the authentification method change.
