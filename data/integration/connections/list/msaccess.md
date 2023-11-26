---
description: Интеграция Loginom с  базой данных Microsoft Access. Параметры подключения. Совместимость.
---
# ![ ](./../../../images/icons/common/data-sources/db-msaccess_default.svg) MS Access Connection

It is used for connection to the Microsoft Access database.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **File name**: the path to the DB file containing the required data is specified. Parameters can be manually entered, or it is possible to press ![ ](./../../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button to call *Open file* window.
* **Test**: test of the specified connection settings.
* **Login**: login is not used for connection to Microsoft Access.
* **Password**: the password set by the DB user is specified.
* **Show system tables**: when selecting this checkbox in the import wizard that uses this connection, the system DB tables available to a user become visible.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client**: this parameter is not available for Microsoft Access.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

> **Note:** To provide connection to the database, it is required to install Microsoft Office or [Microsoft Access Database Engine](https://www.microsoft.com/en-us/download/details.aspx?id=13255) with the same bitness as the Loginom application/server bitness.

## Compatibility

Versions 95, 97, 2000, 2003, 2007, 2010, 2013, 2016 and 2019.

**See also:**

* [Official manufacturer website](https://www.microsoft.com/ru-ru);
* [Product Documentation](https://docs.microsoft.com/ru-ru/).
