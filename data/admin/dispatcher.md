---
description: Справка по работе диспетчера в Loginom. Просмотр открытых сессий и пакетов. Мониторинг и управление активностью сессий, очистка пула пакетов. Общие сведения о колонках таблицы диспетчера.
---
# ![Parameters](./../images/icons/common/admin-system-objects/manager_default.svg) Session Manager

*Session Manager* is designated for view of opened sessions and packages, their activity monitoring and control, package pool clearing.

> **Note:** *Session Manager* is available only in the server Megaladata editions.

The Session Manager page is a table with the information grouped by the following sections:

* *Sessions* — user sessions and packages opened within.
* *Shared packages* — packages not related to specific sessions opened by server by references from other packages. Several packages can refer to one shared package. Shared package cannot be closed until there is at least one reference to it from the executed packages or from the packages located in*Package pool*.
* *Package pool* — packages saved for reuse in the server memory. Package use optimizes application performance by saving resources committed for reused packages loading. The packages called directly from [Loginom Integrator](https://help.loginom.ru/adminguide/windows/integrator/) and [BatchLauncher](./../workflow/batchlauncher.md) are placed into the pool (the packages to which they refer are located in *Shared packages* group). The pool size is set in [server parameters](./parameters.md). When the maximum size is reached, the packages that have not been used for the longest period of time are firstly deleted from the pool. When file changing, all copies of this package are automatically deleted from the pool.

Table columns:

* **Sessions and packages** — session name and packages opened within are displayed. To view packages, it is required to open the list by clicking on "+". The session name consists of username and unique session identifier (similar to the one displayed in the [logging](./../admin/parameters.md#parametry-logirovaniya) journal of server operation).
* **Activity** — time of the last session activity. When executing the node in the subordinate package, *Activity* is highlighted in green. In this case, the execution progress bar is displayed for the package, and the node activation start time is displayed in the progress bar tip when hovering a cursor over it.
* **Host** — IP address of the client from which session was started. When enabling "Allow names by IP" option via the context menu, the host name is displayed instead of address.
* **Role** — user role in the session is displayed by means of corresponding icons:
   * ![Parameters](./../images/icons/admin/user-roles/admin_default.svg) — Administration;
   * ![Parameters](./../images/icons/admin/user-roles/design_default.svg) — Workflows design;
   * ![Parameters](./../images/icons/admin/user-roles/viewer_default.svg) — View reports,
   * ![Parameters](./../images/icons/admin/user-roles/execute_default.svg) — Batch processing, processing from  Integrator

   If there are several user roles, the most privileged one is displayed.
* **Version** — package version in the [semantic versioning](https://semver.org/lang/ru/) format.
* **Created** — date/time of the package or session file creation. There is no package draft value.
* **Saved** — date/time of the last package file saving. There is no package draft value.
* **Path** — full package path in the [file storage](./../location_user_files.md). There is no package draft value.

It is possible to hide all columns with the exception of *Sessions and packages*. Number of sessions that refer to this package, including the reference from the server as such is also displayed for the packages included into the *Shared packages* node. Number of references is displayed in figure to the right from the package name.

The following buttons are located in the upper part of the page:

* ![Update](./../images/icons/common/toolbar-controls/refresh_default.svg) **Update** — update list of sessions or packages. In this case, already closed sessions/packages can be removed from the list, whereas the new ones can be added. Update is automatically performed every 5 s. Hotkey for %kbd Alt F5 % action
* ![Stop](./../images/icons/common/toolbar-controls/stop_default.svg) **Stop** — available for sessions and packages in the "Execution" state. It stops execution of the session or package selected in the table. In this case, all corresponding packages will be stopped for the session, and the package stop can cause the session stop if no executed packages are available afterwards. Action asks for the user confirmation.
* ![Close](./../images/icons/common/toolbar-controls/close_default.svg) **Close** enables to close and delete the session or package selected in the table. Action asks for the user confirmation. Hotkey for %kbd Delete % action
* ![Search](./../images/icons/common/toolbar-controls/zoom_default.svg) **Search** enables to call the search menu by the *Session Manager* table. Search by each column via the menu in the column header is also avalable. Hotkey for %kbd Ctrl F % action

These actions are also available from the context menu called by the right mouse button click. The context menu provides for the following actions apart from the listed ones:

* ![Allow names by IP](./../images/icons/common/toolbar-controls/close_default.svg) **Allow names by IP** — the host name is displayed when this option is enabled for all sessions. IP host address is displayed by default.
* ![Clear package pool](./../images/icons/common/toolbar-controls/zoom_default.svg) **Clear package pool** enables to delete all packages from the package pool.
