---
description: Проект в аналитической платформе Loginom. Структура пакета и модуля в Loginom. Файлы с расширением lgp и lck. Подключение пакета для повторного использование компонентов.
---
# Package Usage Type and Structure

All actions with the project in [**Megaladata**](https://loginom.ru) must be performed within the Package that is a minimum delivery unit and has the form of a container for components, workflows, connections, etc.

Packages are saved separately in the form of files with .lgd extension, and they include [References](./../workflow/reference-to-package.md) and Modules.

The References are used for connection of other packages in order to use the derived components created in them and connections in the current project. Corresponding objects are available only if they are published for shared access.

Each package contains at least one module. The Module inludes the following items:

* The [Workflow](./first-workflow.md) contains sequence of data processing nodes.
* [Connections](./../integration/connections/README.md) include a list of the external sources and data receivers to be connected with.
* [Components](./../processors/README.md#standartnye-komponenty) include the supernodes available for work, both created within the current package and borrowed from other packages using references.

> **Note:**
> 1. In the case of any package opening the file with the following name is always created: `<Package_name>.lgd.lck`. It protects the opened package from possible editing or deleting by other users. This file is deleted upon the package closure.
>
> 2. If packages auto save option is enabled (refer to [Packages](./../interface/packages.md) to get more detailed information), the file with `<Package name>.lgd.autosave` name is created near the opened .lgd file. The package is saved in the file with .lgd.autosave extension with set frequency. If required, it is possible to rename `<Package name>.lgd.autosave` file to `<Package name>.lgd` and restore the most recently saved package version.
