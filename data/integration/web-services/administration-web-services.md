---
description: Страница с описанием уже существующих веб-сервисов. Администрирование веб-сервисов. Добавление, удаление и изменение. 
---
# ![Web Services Page](./../../images/icons/common/system-objects/sliced_18x18/icons_common_system-objects_sliced_18x18_web-service_default.svg) Web Services Page


Web services are added, updated and deleted in the Web Services window.  
Window is opened using [navigation](./../../interface/main-menu.md#imagesiconssystemtoolbar48x48compasdefaultsvg-navigatsiya) in the main menu.
* ![](./../../images/icons/common/system-objects/sliced_18x18/publish_default.svg) **Add** enables to open [web service editing](package-publishing-wizard.md) to publish the new service.
* ![](./../../images/icons/common/system-objects/sliced_18x18/update-web-service_default.svg) **Update publication**: web service is republished.
* ![](./../../images/icons/common/system-objects/sliced_18x18/edit_default.svg) **Edit** opens [web service editing](package-publishing-wizard.md) to edit already existing service.
* ![](./../../images/icons/common/system-objects/sliced_18x18/close-web-service_default.svg) **Terminate** enables to terminate web service publication.
* ![](./../../images/icons/common/system-objects/sliced_18x18/refresh_default.svg) **Update list** enables to add the new/remove the old non-functioning web services. View of services is also updated taking into account their relevant settings.

The following information is available for each published web service (package):
* **Name**;
* **Path/Caption**;
* **Date of change**;
* **Version**;
* **Comment**.

Status of published package is displayed in the form of color indicator before the name:
* ![](./../../images/icons/controls/correspondence_default.svg) **Green**: web service matches the saved package.
* ![](./../../images/icons/controls/inconsistency_default.svg) **Orange**: web service does not match the saved package.
* ![](./../../images/icons/controls/no-access_default.svg) **Grey**: no access to the package.


When pressing ![](./../../images/extjs-theme/tools/tool-sprites_18x18/arrow-right_default.svg) before the name of each published web service, it is possible to open the list of published nodes in workflow.    When pressing the web service with the right mouse button, the following additional actions are added:
* **Open package**.
* **Show package in folder**: folder in which package is saved (the package is selected) is opened in the new tab.

When pressing the published node inside the package with the right mouse button, it is possible to *open node in package*. The selected package with the selected node is opened in the neighboring tab.