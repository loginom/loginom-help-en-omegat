# ![Shared Folders](../images/icons/admin-system-objects/sharedfolders_default.svg) Shared Folders

This administration subsection is used to control the shared folders and rights of access to them. There are four buttons in the upper part of the section:

* ![Add](../images/icons/toolbar-controls/plus_default.svg) **Add** enables to add the new folder.
* ![Edit](../images/icons/toolbar-controls/edit_default.svg) **Edit** enables to edit the selected folder.
* ![Delete](../images/icons/toolbar-controls/delete_default.svg) **Delete** enables to delete the selected folder.
* ![Update](../images/icons/toolbar-controls/refresh_default.svg) **Update** enables to update the folder list.

%spoiler%Hotkeys%spoiler%

* **Up** — перейти на строку выше;
* **Down** — перейти на строку ниже;
* **Insert** — добавить новую папку;
* **F2** — редактировать папку;
* **Delete** — удалить папку;
* **Alt + F5** — обновить список папок и их параметров.

%/spoiler%

При нажатии на кнопку ![Добавить](../images/icons/toolbar-controls/plus_default.svg) *Добавить*/![Редактировать](../images/icons/toolbar-controls/edit_default.svg) *Редактировать* появляется окно *Добавить общую папку*/*Настройка общей папки*.

Состав окна *Добавить общую папку*/*Настройка общей папки*:

* **Имя** — в этом поле задается имя новой общей папки, в окне редактирования это поле не доступно.
* **Путь** — здесь отображается как будет выглядеть путь к папке относительно корня.
* **Права доступа** — таблица со списком пользователей.
   * **Чекбокс** — поле указывает наличие прав у пользователя на использование папки. Если в чекбоксе заголовка поля поставить флажок, то все пользователи будут выделены как имеющие права на доступ к папке.
   * **Пользователь** — в этом столбце отображаются все зарегистрированные пользователи. Поле имеет также возможность ввода фильтра для поиска определенного пользователя.
   * **Полное имя** — в этом столбце отображается полное имя пользователя, если оно задано в разделе [*Пользователи*](./users.md). Как и поле *Пользователь* имеет возможность поиска через поле фильтра.

> **Примечание:** Если нужно переименовать папку, то создается новая папка куда копируется содержимое старой, затем старая папка удаляется.