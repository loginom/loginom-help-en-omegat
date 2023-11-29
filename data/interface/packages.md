---
description: Страница "Пакеты" аналитической платформы Loginom. Основные действия с пакетами в Loginom. Свойства пакета.
---
# ![ ](..\images\icons\common\system-object\package_default.svg)Packages

The main operations with [Packages](./../quick-start/package.md) are listed on this page.

This page can be opened in two ways:

* using the ![ ](..\images\icons\common\system-object\package_default.svg)*Packages* button in [Address bar](./address-bar.md);
* using the [Navigation](./main-menu.md#navigatsiya) panel, selecting the ![ ](..\images\icons\common\system-object\package_default.svg)*Packages* section.

## Interface

Opened *Packages* are listed in the table with fields:

* **Name**: *Package* name that matches file name without extension set to the corect identifier.
* **Path**: the path to the opened *Package*. The path is specified from the root directory in the server edition. The absolute path is specified for the desktop version (more detailed information is provided below in [File storage](./../location_user_files.md) article).
* **Version**: version of the opened *Package*. It is configured in its *Properties*.
* **Published**: indicator of the published *Package* (if the package is published, ● character is in the cell, if it is not published, the cell is empty).
* **Locale**: package locale (it is configured in the package *Properties*).

It is possible to sort the list for these fields in ascending order ![ ](./../images/icons/common/toolbar-controls/low-to-hight_default.svg), in descending order ![ ](./../images/icons/common/toolbar-controls/hight-to-low_default.svg), or to cancel sorting.

The following commands are available on the toolbar:

* ![ ](..\images\icons\common\toolbar-controls\new_default.svg) **New** enables to open a window to set a path and name of the new *Package*, it also enables to open this empty *Package* after saving. ![ ](..\images\icons\common\toolbar-controls\down_default.svg) button provides
   ![ ](..\images\icons\common\toolbar-controls\temporary_default.svg) **New draft** enables to create a temporary *Package* without current saving.
* ![ ](..\images\icons\common\toolbar-controls\open_default.svg) **Open** enables to open the selection window of the existing *Package*.
* ![ ](..\images\icons\common\toolbar-controls\save_default.svg) **Save** enables to save the *Package* selected in the list. ![ ](..\images\icons\common\toolbar-controls\down_default.svg) button provides ![ ](..\images\icons\common\toolbar-controls\save-as_default.svg) **Save as** command that enables to save the selected *Package* under a new name, and/or using another available path.
* ![ ](..\images\icons\common\toolbar-controls\save-all_default.svg) **Save all** enables to save all opened *Packages*.
* ![ ](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg)
   **Auto save** enables to open window to set parameters of [package auto save](#avtosokhranenie-paketov). By default, packages are not auto saved.
* ![ ](..\images\icons\common\toolbar-controls\publish_default.svg)
   **Publish**[^1] enables to open window for *Package* publication.
* ![ ](..\images\icons\common\toolbar-controls\edit_default.svg) **Properties** enables to open the [properties](#svoystva-paketa) configuration window of the selected *Package*.
* ![ ](..\images\icons\common\toolbar-controls\close_default.svg) **Close** enables to close the *Package* selected in the list.
* ![ ](..\images\icons\common\toolbar-controls\close-all_default.svg) **Close all** enables to close all opened *Packages*.

[^1]: It is available only for the editions with possibility to publish [Web Services](./../integration/web-services/publishing-web-service.md).

When closing the *Package* with unsaved changes, you will be requested to save it with the following variants:

* **Yes** will save and close this *Package*.
* **No** will cancel changes (the *Package* will be closed without saving!).
* **Cancel** will stop closing of the *Package* or further closing of still not closed *Packages*.

The context menu called by the right mouse button click, for the most part, enables to repeat the set of commands listed above:

* For the opened *Packages*:
   * ![ ](..\images\icons\common\toolbar-controls\save_default.svg) **Save package**
   * ![ ](..\images\icons\common\toolbar-controls\save-as_default.svg) **Save package as…**
   * ![ ](..\images\icons\common\toolbar-controls\edit_default.svg) **Edit properties…**
   * ![ ](..\images\icons\blank.svg) **Show in folder** enables to open the folder containing the selected *Package* and takes focus on it.
   * ![ ](..\images\icons\common\toolbar-controls\close_default.svg) **Close package…**
   * ![ ](..\images\icons\blank.svg) **Close other packages…** enables to close all *Packages*, with the exception of the selected one.
* For the free zone:
   * ![ ](..\images\icons\common\toolbar-controls\new_default.svg) **New package…**
   * ![ ](..\images\icons\common\toolbar-controls\temporary_default.svg) **New draft**
   * ![ ](..\images\icons\common\toolbar-controls\save-all_default.svg) **Save all packages**
   * ![ ](..\images\icons\common\toolbar-controls\close-all_default.svg) **Close all packages…**
* General:
   * ![ ](..\images\icons\common\toolbar-controls\refresh_default.svg) **Update** — update list of packages.

Hotkeys are available for some commands:

* %kbd F2 % — edit *Package* properties;
* %kbd Ctrl O % — open *Package*;
* %kbd Ctrl S % — save *Package*;
* %kbd Ctrl Shift S % — save all *Packages*;
* %kbd Alt P % — publish *Package*.

## Package Properties

It enables to set the following parameters of the *Package*:

* **Name**: name of the *Package*. *Draft* can be edited. It will be set to the file name and correct identifier after saving.
* **Version**: *Package* version, by default it is equal to`1.0.0`.
* **Locale**: package locale matching the actual server locale by default. The new value is applied after closing the package and all opened packages dependent on it. If locale was changed but not applied, the locale change editor selects the locale value with red border.
* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Compare string unique values in a binary way**: this option must be enabled if it is assumed to use nodes saving unique string values. When this setting is changed, retraining of already trained nodes can be required. This option is disabled by default.
* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Use relative paths of the base package** option must be enabled in the *Package* with base node, if this node has relative paths to files, or it is assumed to use paths in base nodes relative to this *Package*. This option is enabled by default.

> **Important:** after locale change some nodes, for example: [Sort](./../processors/transformation/sorting.md), [Export to the Text File](./../integration/export/txt-csv.md), etc. can function in a different way.

## Package Auto Save

Package auto save option automatically saves the package with set time interval. Packages are saved to the files with lgp.autosave extension near .lgd files. .lgd files are not rerecorded in this case.

Drafts and packages opened in read-only mode are not saved.

Auto save parameters are set when pressing ![ ](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg) **Auto save** button:

* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Enable package auto save**: this checkbox enables/disables package auto save option.

* **Save every (minutes)**: this parameter can be edited when *Enable package auto save* checkbox is selected. It sets time interval when package is automatically saved. Auto saving is performed every 5 minutes by default.

Parameters take effect upon pressing *Apply* button.

If auto save is enabled, ![Auto save](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg) button is highlighted.

Set package auto save settings are saved in the local browser storage and they are not reset when closing user session.

