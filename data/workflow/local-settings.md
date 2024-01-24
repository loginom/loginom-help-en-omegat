---
description: Источник региональных настроек (языковые стандарты, формат представления чисел, времени, даты) для сервера Loginom. Компоненты Loginom, в которых результат может зависеть от региональных настроек.
---
# Locale Configuration

These settings contain information on the language standards, number, time, date formats. For example, one of the sources of these settings for Windows users for the Loginom server are "Language and regional standards" settings.

Locale is defined by the user locale by default in the desktop versions.

In the server editions locale is defined by default by locale of the user who started the *Megaladata* service.

> **Note:**in Windows these settings are configured as follows: Control panel -> Clock, language and region -> Language and regional standards.

## Server locale/Megaladata applications

It is possible to change server locale/*Megaladata* applications in [Administration](./../admin/parameters.md) parameters. In *Locale* parameter `Not set(...)` value is specified by default. The new locale becomes active only after restart of server/*Megaladata* application.

> **Note:** In [Quick View](./../visualization/preview/quick-view.md) and editors (the fields in which a user can set the *Value*) the browser locale is used.

## Package Locale

The package is assigned with the server/Megaladata application locale after creation.

The package locale can be changed in [Package properties](./../interface/packages.md) settings. New locale will be applied when the package and all opened dependent packages are closed.

> **Important:** after locale change some nodes, for example: [Sort](./../processors/transformation/sorting.md), [Export to the Text File](./../integration/export/txt-csv.md), etc. can function in a different way.

The node locale can be viewed in the [Property inspector](./../interface/property-inspector.md).

Locale of the derived nodes matches the base node locale.