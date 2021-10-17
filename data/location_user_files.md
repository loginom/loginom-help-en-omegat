# ![](./images/icons/system_object_18/filestorage_default.svg) File Storage

All user files are kept on the Loginom server in the Enterprise, Standard and Team editions (the Loginom server is included into the supply package). Thus, before any file is used in the workflow, it is preliminarily placed into the file storage on the server. File manager is used for the file storage operation in these editions.

> **Note:** When using the Personal and Community editions, the file manager is not available as these program versions are designated for the personal processing but a user has access to the whole file space of the local computer.

When using the Loginom server, each user has his own folder in the file storage. Physically, the following path is used for location of all user folders on the server: `"C:\ProgramData\BaseGroup\Loginom 6\UserStorage"`. This path can be changed in the configuration files of the Loginom server. Apart from access to the personal folder, a user can be provided with access rights to other file storage folders by the server administrator.

The personal user folder and his account (login) have the same name.

The path to the file or package in the file storage is set relative to the UserStorage folder. For example:

* full path to the package: `"C:\ProgramData\BaseGroup\Loginom 6\UserStorage\<user>\test.lgp"` where `<user>` is a user login;
* path to the package in the file storage: `<user>/test.lgp`.

The file manager is called using ![](./images/icons/system_toolbar_48x48/filestorage_default.svg) button of the *Main Menu*. This tool is required for the file storage operation.

The hierarchic structure of the folders and files available to a user is displayed in the file manager interface. The double cursor click on the folder is used to move inside this folder. To move to the folder one level up, it is required to double click ![](./images/icons/main-menu/open-folder_default.svg)**..** button. To move between folders, it is also possible to use the *Navigation* panel in which the user folders hierarchy is displayed.

The file manager toolbar provides the following file usage options:

* ![](./images/icons/toolbar-controls/publish_default.svg) **Load**: load a file to the currently opened directory. It is required to select the file to be loaded in the pop-up Windows Explorer window. 
* ![](./images/icons/toolbar-controls/add-folder_default.svg) **Create directory**: folder creation in the currently opened directory.
* ![](./images/icons/toolbar-controls/download_default.svg) **Download**: dowload the selected item to the system folder for user downloads. It is also possible to download files by double clicking on them with the left mouse button.
* ![](./images/icons/toolbar-controls/rename_default.svg) **Rename**: change the name of the selected folder.
* ![](./images/icons/toolbar-controls/copy_default.svg) **Copy**: copy the selected file or folder to the clipboard.
* ![](./images/icons/toolbar-controls/paste_default.svg) **Paste**: paste the copied or cut item to the current directory.
* ![](./images/icons/toolbar-controls/cut_default.svg) **Cut**: cut the selected file or folder and place to the clipboard.
* ![](./images/icons/toolbar-controls/delete_default.svg) **Delete**: delete the selected file or folder.
* ![](./images/icons/toolbar-controls/refresh_default.svg) **Update list**: display the actual contents of the current directory.

By clicking on the item in the file manager with the right mouse button, it is possible to call the context menu in which all functions listed above are available, with the exception of ![](./images/icons/toolbar-controls/download_default.svg) *Load* and ![](./images/icons/toolbar-controls/add-folder_default.svg) *Create directory*. It is possible to call the context menu by clicking on the free area of the file manager. It includes the following functions: ![](./images/icons/toolbar-controls/download_default.svg) *Load*, ![](./images/icons/toolbar-controls/add-folder_default.svg) *Create directory*, ![](./images/icons/toolbar-controls/paste_default.svg) *Paste* and ![](./images/icons/toolbar-controls/refresh_default.svg) *Update list*.

Drag and Drop file downloading is supported, namely, by dragging files to the file manager window. In this case, files are copied.

There are the following ways to select several items:

* each of them can be selected with a checkbox;
* it is possible to select them alternately by pressing **Ctrl** button;
* it is possible to select the first item, and then select the last item in the sequence of files by pressing **Shift** button.

To sort the current directory items by a particular parameter, it is required to press one of the fields in the upper part of the file manager: *Name*, *Type*, *Size*, *Date of change*, *Read-only* and *Path*.

The first field pressing enables to sort in ascending order ![](./images/icons/toolbar-controls/low-to-hight_default.svg), the second pressing enables to sort in descending order ![](./images/icons/toolbar-controls/hight-to-low_default.svg). Checkbox and ![](./images/icons/toolbar-controls/delete-all_default.svg) *Delete all* are also available in the file manager fields:

* When selecting the field checkbox, all items in the current directory are selected.
* ![](./images/icons/toolbar-controls/delete-all_default.svg) **Delete all**: delete all items of the current directory.

It is possible to enable or disable display of each field. For this ppurpose, it is required to hover cursor to a random field and press the pop-up ![](./images/icons/toolbar-controls/down_default.svg) button. Then it is required to hover cursor to ![](./images/icons/grid/columns.svg) *Columns* row and select checkboxes for the fields to be displayed in the pop-up list.