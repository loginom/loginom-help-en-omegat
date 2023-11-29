---
description: Главное меню аналитической платформы Loginom. Кнопки главного меню. Создать пакет в Loginom. Открыть пакет в Loginom. Сохранить пакет в Loginom. Навигация по объектам пакета в Loginom. Файловый менеджер в Loginom. Раздел Администрирование в аналитической платформе Loginom.
---
# Main Menu

The main menu is located in the left part of the application window and contains the following buttons:

* [Menu](#imagesiconssystemtoolbar48x48logodefaultsvg-menyu)
* [Packages](#imagesiconssystemtoolbar48x48packages-menudefaultsvg-pakety)
* [Navigation](#imagesiconssystemtoolbar48x48compasdefaultsvg-navigatsiya)
* [Administration](#imagesiconssystemtoolbar48x48admindefaultsvg-administrirovanie)
* [Files](#imagesiconssystemtoolbar48x48filestoragedefaultsvg-fayly)
* [Processes](#imagesiconssystemtoolbar48x48infodefaultsvg-protsessy)

## ![ ](./../images/icons/app/system-toolbar/controls/logo_default.svg) Menu

Pressing the button enables to open the panel with the following commands:

* ![ ](./../images/icons/common/system-object/homepage_default.svg) **Home**: transition to the ["Home" page](./home-page.md).
* ![ ](./../images/icons/common/main-menu/help_default.svg) **Help**: help topics.
* ![ ](./../images/icons/common/main-menu/qa_default.svg) **Ask**:  transition to the[Megaladata QA](https://qa.loginom.ru/questions/) forum.
* ![ ](./../images/icons/common/main-menu/about_default.svg) **About** enables to open "About" page.
* ![ ](./../images/icons/common/main-menu/lock_default.svg) **Lock (Ctrl+Alt+L)**: the command is available only in the server platform editions and locks user session. User session is not completed, all started processes are still executed but page with password entry form is displayed. To unlock the session, it is required to enter password of the user whose login is specified in the entry form, and press *Unlock* button.
* ![ ](./../images/icons/common/main-menu/exit_default.svg) **Exit**: closure of all Packages and application exit (this item is called **Close** in the Desktop editions. It enables to close all Packages and application).

## ![ ](./../images/icons/app/system-toolbar/controls/packages-menu_default.svg) Packages

Pressing the button enables to open the panel with the following commands:

* ![](./../images/icons/common/main-menu/new-file_default.svg) **New..** enables to create a new Package.
* ![](./../images/icons/common/main-menu/temporary-file_default.svg) **New draft...** enables to create a temporary Package without its saving.
* ![](./../images/icons/common/main-menu/open-file_default.svg) **Open...** enables to open an existing Package.
* ![](./../images/icons/common/main-menu/save-file_default.svg) **Save** enables to save a Package or its changed versions in the current directory.
* ![](./../images/icons/common/main-menu/save-as-file_default.svg) **Save as...** enables to save a Package in the selected directory.
* ![](./../images/icons/common/main-menu/save-all-files_default.svg) **Save all** enables to save all opened packages.
* ![](./../images/icons/common/main-menu/close-file_default.svg) **Close** enables to close an opened Package.
* ![](./../images/icons/common/main-menu/close-all-file_default.svg) **Close all...** enables to close all opened packages.

> **Note:** "Save", "Save as...", "Save all", "Close", "Close all..." commands are available only when the Package is opened.

## ![ ](./../images/icons/app/system-toolbar/controls/compas_default.svg) Navigation
It is located in the left upper part of the program.

The command enables to open the tree-like Package structure that allows for quick transition across its objects (refer to Figure 1). For this purpose, it is required to press the package, workflow or other element in the tree with the right mouse button.

![Navigation.](./navigation.png)  
*Figure 1. Navigation Menu*

There are the following menu options in the navigation section available when pressing the *packages* or *workflow* (the main menu) with the right mouse button:

* **Enter)**: transition to the selected navigation tab will be performed.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_open-all_default.svg) **Expand**: the file structure of the selected object will be displayed.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_collapce-all_default.svg) **Collapse**: the file structure of the selected object will be hidden.
* **Expand\Collapse up to nodes**: the file structure of the whole navigation will be displayed\hidden.
* ![](./../images/icons/common/toolbar-controls/icons_ext_checkbox-states_sliced_18x18_unchecked_default.svg) **Show all ports**: the tick that enables to display\hide the available ports.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_find_default.svg) **Find node**: special window for node search will appear.

It is possible to find *узел* (CTRL + F) of workflow using one of three object properties:
1. Caption.
2. Name.
3. GUID (Unique node identifier).

![Search](..\images\search.png)    
*Figure 2. Find nodes*

When pressing particular *package* (its name) with the right mouse button,additional menu options will appear:
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus-native_default.svg) **Add** : creates the new module.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_publish-default.svg) **Publish** enables to move to [web service addition](./../integration/web-services/package-publishing-wizard.md).
* **Properties** enables to move to the package properties menu.
* **Close package**.

When pressing *modules* with the right mouse button, additional menu options will appear:
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_delete_default.svg) **Delete node**: deletes the selected module.
* **Configure visibility** enables to change [visibility](./../workflow/access-modifier.md) for module.
* **Properties** enables to rename *module*.


When pressing the *node* with the right mouse button, three additional menu options are added:
* ![](./../images/icons/common/toolbar-controls/setup_default.svg) **Configure node** enables to move to the selected node configuration.
* ![](./../images/icons/common/toolbar-controls/launch-node_default.svg) **Open/close node** enables to open/close the node.
* ![](./../images/icons/common/toolbar-controls/configure-viewers_default.svg) **Show visualizers** enables to move to visualizers of the selected node.



## ![ ](./../images/icons/app/system-toolbar/controls/admin_default.svg) Administration

The menu command enables to open ["Administration"](./../admin/README.md) page that is used for control of users, work folders and server operation parameters in the server platform editions, whereas logging parameters are controlled in the desktop editions. Only users with the "Administrator" role have access to this section in the server editions.

## ![ ](./../images/icons/app/system-toolbar/controls/filestorage_default.svg) Files

The command is available in the server platform editions and it opens ["Files"](./../location_user_files.md) page - file storage manager.

## ![ ](./../images/icons/app/system-toolbar/controls/info_default.svg) Processes

The command opens the ["Processes"](./processes-panel.md) panel that is designated for acquisition of additional information on data processing processes by the *Workflow* nodes.
