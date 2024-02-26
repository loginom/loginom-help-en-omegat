---
description: Матрица доступа пользователей в Loginom. Пользователи. Проектирование сценариев. Просмотр отчётов. Пакетное выполнение. Администрирование. 
---
# Access Matrix

Access rights allocation in the Megaladata analytical platform is described in this article.

Identification:

| Designation |Description|
|:-:|:-|
|ADMIN|user with Administration role|
|USER|user with Workflows design role|
|VIEWER|user with View reports role|
|SERVICE|user with Batch processing role|
|●|full access to Megaladata Studio|
|○|functionality is only available if the user has access rights provided by means of corresponding account settings|


|User interface element or action|ADMIN|USER|VIEWER|SERVICE|
|:-|:--:|:--:|:--:|:--:|
|[**Main menu**](./../../interface/main-menu.md)|●|●|●||
|&nbsp;&nbsp;&nbsp;[**Menu**](./../../interface/main-menu.md#меню)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Start](./../../interface/home-page.md)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Help|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Ask](https://qa.loginom.ru/questions/)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exit|●|●|●||
|&nbsp;&nbsp;&nbsp;[**Packages**](./../../interface/packages.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Open||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Save||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Close||●|●||
|&nbsp;&nbsp;&nbsp;[**Navigation toolbar**](./../../interface/main-menu.md#навигация)|●|●|●||
|&nbsp;&nbsp;&nbsp;[**File storage**](./../../interface/main-menu.md#файлы)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personal folder|●|●|●|●|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Shared folders|○|○|○|○|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Full access|○|○|○|○|
|&nbsp;&nbsp;&nbsp;[**Administration section**](./../README.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Users](./README.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Shared folders](./../shared-folder.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Parameters](./../parameters.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Session Manager](./../dispatcher.md)|●||||
|[**Workflow page**](./../../interface/workflow.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Components](./../../processors/standard-components.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add to workflow||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Configure||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete from workflow||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Derived components](./../../workflow/derived-component.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Connections](./../../integration/connections/README.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Configure||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use in workflow||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[References](./../../workflow/reference-to-package.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Modules||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edit||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Set visibility area||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Publish packages](./../../integration/web-services/README.md)||○|||
|[**Visualizers page**](./../../visualization/README.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create and configure||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rename||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add to reports||●|||
|[**Reports page**](./../../report/README.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Open||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add to group||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rename||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Group||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Move||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete||●|||
|[**Web Services page**](./../../integration/web-services/administration-web-services.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update publication||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edit||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terminate||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update list||●|||
|[**Variable page**](./../../workflow/variables/README.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[System variables](./../../workflow/variables/predefined-variables.md#переменные-системы) (read)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Sessions variables](./../../workflow/variables/predefined-variables.md#переменные-сессии) (read)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Package variables](./../../workflow/variables/predefined-variables.md#переменные-пакета) (read)<sup>1</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edit<sup>2</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change order<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Filter<sup>2</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[User variables](./../../workflow/variables/scenario-variables.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edit||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change order||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Filter||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete||●|||
|[**Processes panel**](./../../interface/processes-panel.md)||●|●|&nbsp;|

<sup>1</sup> For system package variables

<sup>2</sup> For user package variables