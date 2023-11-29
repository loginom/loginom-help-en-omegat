---
description: Обзор файлового хранилища данных в Loginom. Способы работы с хранилищем, доступные команды. Загрузка файлов. Базовые операции по работе с содержимым хранилища.
---
# ![](./images/icons/common/system-object/filestorage_default.svg) File Storage

All user files are kept on the Loginom server in the Enterprise, Standard and Team editions (the Loginom server is included into the supply package). Thus, before any file is used in the workflow, it is preliminarily placed into the file storage on the server. File manager is used for the file storage operation in these editions.

> **Note:** In the Personal and Community editions, the file manager is not available, a user has access to the whole file space of the local computer.

When using the Megaladata server, each user has his own [folder](././admin/parameters.md#papki) in the file storage.
The file manager is called using ![](./images/icons/app/system-toolbar/controls/filestorage_default.svg) * button of the *Main menu*. This tool is required for the file storage operation.

The hierarchic structure of the folders and files available to a user is displayed in the file manager interface in the form of table with fields: *Name*, *Type*, *Size*, *Date of change*, *Read-only* and *Path*. The double cursor click on the folder is used to move inside this folder. To move to the folder one level up, it is required to double click ![](./images/icons/common/main-menu/open-folder_default.svg)**..** button. To move between folders, it is also possible to use the *Navigation* panel in which the user folders hierarchy is displayed in the tree form.

File manager **toolbar** contains the following commands:

* ![](./images/icons/common/toolbar-controls/upload_default.svg) **Insert** enables to load a file to the currently opened directory. It is required to select the file to be loaded in the opened window of OS File Explorer.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **New directory** enables to create the folder in the current directory.
* ![](./images/icons/common/toolbar-controls/download_default.svg) **Download** enables to dowload the selected item from the file storage to the system folder of user downlods (the similar action is performed by double clicking with the left mouse button).
* ![](.\images\icons\common\toolbar-controls\download-zip_default.svg) **Download ZIP** enables to dowload the selected item from the file storage to the system folder of user downlods in the form of ZIP archive.
* ![](./images/icons/common/toolbar-controls/rename_default.svg) **Rename...(F2)** enables to change the selected item name.
* ![](./images/icons/common/toolbar-controls/copy_default.svg) **Copy (Ctrl+C)** enables to mark the selected item for copying.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Paste (Ctrl+V)** enables to paste the item marked for copying or cutting to the current directory.
* ![](./images/icons/common/toolbar-controls/cut_default.svg) **Cut (CTRL+X)** enables to mark the selected item for cutting.
* ![](./images/icons/common/toolbar-controls/delete_default.svg) **Delete** enables to delete the selected item.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Update list (Alt+F5)** enables to display the actual contents of the current directory.

> **Note:** **Copy**, **Cut** and **Paste** buttons both on **Toolbar** and in the **Context menu** are used only inside the file manager and they are not connected with OS clipboard.

By clicking the item in the file manager with the right mouse button, it is possible to call the **Context menu** that contains the following commands:

* ![](./images/icons/common/toolbar-controls/download_default.svg) **Download** enables to dowload the selected item from the file storage to the system folder of user downlods (the similar action is performed by double clicking with the left mouse button).
* ![](.\images\icons\common\toolbar-controls\download-zip_default.svg) **Download ZIP** enables to dowload the selected item from the file storage to the system folder of user downlods in the form of ZIP archive.
* ![](./images/icons/common/toolbar-controls/rename_default.svg) **Rename...(F2)** enables to change the selected item name.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **New directory** enables to create the folder in the current directory.
* ![](./images/icons/common/toolbar-controls/new_default.svg) **New package** enables to create the new package in the current directory.
* **Copy full path** enables to copy the full name of the selected item to the clipboard. If several items are selected, full names of all items are copied using "line break" delimiter.
* ![](./images/icons/common/toolbar-controls/copy_default.svg) **Copy (Ctrl+C)** enables to check the selected item for copying.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Paste (Ctrl+V)** enables to paste the item marked for copying or cutting to the current directory.
* ![](./images/icons/common/toolbar-controls/cut_default.svg) **Cut (CTRL+X)** enables to mark the selected item for cutting.
* ![](./images/icons/common/toolbar-controls/delete_default.svg) **Delete** enables to delete the selected item.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Update list (Alt+F5)** enables to display the actual contents of the current directory.

> **Note:** It is possible to copy the full file path only when connecting via HTTPS protocol. If connection is performed via HTTP protocol, Megaladata will send the following warning: "Connection via HTTPS protocol is required for this operation".

By clicking the free area of the file manager with the right mouse button, it is possible to call the **Context menu** that contains the following commands:

* ![](./images/icons/common/toolbar-controls/download_default.svg) **Insert** enables to load a file to the currently opened directory. It is required to select the file to be loaded in the opened window of OS File Explorer.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **New directory** enables to create the folder in the current directory.
* ![](./images/icons/common/toolbar-controls/new_default.svg) **New package** enables to create the new package in the current directory.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Paste (Ctrl+V)** enables to paste the item marked for copying or cutting to the current directory.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Update list (Alt+F5)** enables to display the actual contents of the current directory.

File loading by *Drag and Drop* method is supported, namely, by dragging files to the file manager window. In this case, files are copied.

There are the following ways to select several items:

* each of them can be selected with a checkbox;
* it is possible to select them alternately by pressing *Ctrl* button;
* it is possible to select the first item, and then select the last item in the sequence of files by pressing *Shift* button.

It is possible to move between the first and the last object using *Home* (list beginning) and *End* (list end) buttons.

To sort the current directory items by a particular parameter, it is required to press the header of one of the file manager table columns: *Name*, *Type*, *Size*, *Date of change*, *Read-only* or *Path*.

The first column header pressing enables to sort in ascending order ![](./images/icons/common/toolbar-controls/low-to-hight_default.svg), the second pressing enables to sort in descending order ![](./images/icons/common/toolbar-controls/hight-to-low_default.svg).

There is a checkbox in the file manager table header to the left from the *Name* field, and to the right from the *Path* field — ![](./images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all** button:

* when the checkbox is selected, all items in the current directory are selected;
* when pressing ![](./images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all** button, all items of the current directory are deleted.

It is possible to enable or disable display of each column of the file manager table. For this purpose, it is required to hover a cursor over the header of any column and press ![](./images/icons/common/toolbar-controls/down_default.svg) button that appears. Then it is required to hover a cursor over the ![](./images/icons/grid/columns.svg) *Columns* string and select the checkboxes in the list that appears for those columns that must be displayed or deselect the checkboxes for those columns that must be hidden.
