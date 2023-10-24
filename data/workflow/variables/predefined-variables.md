---
description: Предопределенные переменные в аналитической платформе Loginom. Переменные системы. Переменные пакета. Основной кейс использования переменных пакета. Переменные сессии.
---
# Predefined Variables

## Переменные системы

| Имя | Описание | Пример |
| :---- | :---- | :---- |
| ProductEdition | Редакция платформы Loginom | Enterprise |
| ProductVersion | Версия платформы Loginom | 6.5.0 |

> **Примечание:** В случае конфликта имён с переменными операционной системы приоритет получают переменные с версией и редакцией Loginom.

## Package Variables

The main usage case is [Derived Components](./../derived-component.md). The variables provide information on the Package in which the Derived Component has been created.

There are the following parameters of the Package in which the used Derived Component has been created:

| Name | Description | Example |
| :---- | :---- | :---- |
| PackageName | Package name | FunctionLibrary |
| PackageVersion | Package version | 1.0.0 |
| PackageGuid | Package identifier | {D9AD3962-94A5-4CE0-8909-64D0747B0E9C} |
| PackageFileName | Package file | /user/ProjectName/scripts/FunctionLibrary.lgp |
| PackageFilePath | Path to the package file | /user/ProjectName/scripts/ |

Parameters of the Package in which the Derived Component is used:

| Name | Description | Example |
| :---- | :---- | :---- |
| DerivedPackageName | Package name | main |
| DerivedPackageVersion | Package version | 1.0.0 |
| DerivedPackageGuid | Package identifier | {38A56938-93B6-4981-A5DA-70053DB575EE} |
| DerivedPackageFileName | Package file | /user/ProjectName/scripts/main.lgp |
| DerivedPackageFilePath | Path to the package file | /user/ProjectName/scripts/ |

## Session Variables

| Name | Description | Example |
| :---- | :---- | :---- |
| UserName | Login of the user who opened this Workflow | user |
| SessionGuid | Identifier of the current session on the Loginom server | {AA037666-56F9-4B06-AE6F-AE3E2E00052F} |
| RequestId | Уникальный идентификатор запроса, выполняемого через Интегратор | 79341b90d0274ff496c2dbf5600b7ac6 |

> **Примечание:** Все предопределенные переменные имеют [строковый тип](./../../data/datatype.md).