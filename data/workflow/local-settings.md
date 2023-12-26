---
description: Источник региональных настроек (языковые стандарты, формат представления чисел, времени, даты) для сервера Loginom. Компоненты Loginom, в которых результат может зависеть от региональных настроек.
---
# Locale Configuration

These settings contain information on the language standards, number, time, date formats. For example, one of the sources of these settings for Windows users for the Loginom server are "Language and regional standards" settings.

В настольных версиях по умолчанию локаль определяется локалью пользователя.

В серверных редакциях локаль по умолчанию определяется локалью пользователя, под которым запущена служба *Loginom*.

> **Примечание:** в Windows эти настройки можно задать: Панель управления -> Часы, язык и регион -> Язык и региональные стандарты.

## Локаль сервера/приложения Loginom

Изменить локаль сервера/приложения *Loginom* можно в параметрах [Администрирования](./../admin/parameters.md). По умолчанию в параметре *Локаль* указано значение `Не задана(...)`. Новая локаль начинает действовать только после перезапуска сервера/приложения *Loginom*.

> **Примечание:** в [Быстром просмотре](./../visualization/preview/quick-view.md) и редакторах (поля, в которые пользователь может задавать *Значение*), используется локаль браузера.

## Локаль пакета

При создании пакету присваивается локаль сервера/приложения Loginom.

Локаль пакета можно поменять в настройках [Свойств пакета](./../interface/packages.md). Новая локаль будет применена после закрытия пакета и всех зависимых от него открытых пакетов (для новых пакетов локаль применяется сразу).

> **Important:** after locale change some nodes, for example: [Sort](./../processors/transformation/sorting.md), [Export to the Text File](./../integration/export/txt-csv.md), etc. can function in a different way.

Локаль узла можно посмотреть в [Инспекторе свойств](./../interface/property-inspector.md).

Локаль производных узлов совпадает с локалью базового узла.