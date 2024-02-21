---
description: Справка по ролям пользователей в Loginom. Управление пользователями. Выбор ролей из списка доступных. Проектирование сценариев. Просмотр отчётов. Пакетное выполнение. Администрирование.
---
# User Roles in Megaladata

The data analysis process is divided into two stages:

* **Development of the analytical models** is a specific task. It is required to understand the analysis methods and peculiarities of business operations. As a rule, a limited number of experienced analysts hold responsibility for this task in companies.
* **View of ready reports**. Many employees from different company subdivisions must view reports: top managers, heads of departments, specialists of different departments, etc. They must be provided with access to the required results without necessity of thorough understanding of the development process.

Users must be provided with access to the functional platform capabilities according to the functional role.

There are four User Roles in Megaladata:

* **Workflows design**: the user with this role is provided with access to all analytical capabilities of Megaladata. He can develop the data processing logics, create [web services](./../../integration/web-services/README.md), implement his own components and [share](./../../processors/integration/README.md) them, connect to the [external sources](./../../integration/connections/README.md) etc.
* **View reports**: the user has access to the configured reports on [Reports](./../../report/README.md) page in Megaladata. He can handle the reports: change their kind, group data, configure filters, change types of graphic charts. The calculation logics is hidden from him.
* **Batch processing**: the user has access to batch processing via [BatchLauncher](./../../workflow/batchlauncher.md) utility application or Megaladata Integrator component without access to the Megaladata Studio graphical interface.
* **Administration**: the user with this role is provided with access on the [Administration](./../../admin/README.md) page.  It is possible to control the Megaladata server parameters, accounts of other users, shared folders and opened sessions on the Administration page.

> It is not possible to register new user roles.

According to the assigned role, the user is provided with [access](./access-matrix.md) to the specific sections of the analytical platform.


