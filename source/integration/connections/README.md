---
description: Подключения к источнику данных в Loginom – типы подключений, настройка подключения.
---
# Подключения

Перед тем как использовать в сценариях узлы [взаимодействия с SOAP-сервисами](./../../processors/integration/soap-request.md)/[REST-сервисами](./../../processors/integration/rest-request.md) и [импорта](./../import/README.md)/[экспорта](./../export/README.md) из бизнес приложений, хранилищ данных, баз данных или иных источников, в пакете необходимо создать подключение к источнику данных. Подключение содержит в себе все необходимые параметры для соединения с источником данных, такие как пароль/логин, расположение источника и др. Созданное подключение в дальнейшем может использоваться в пакете многократно.

## Типы подключений

* Базы данных:
  * [BigQuery](./list/bigquery.md).
  * [ClickHouse](./list/clickhouse.md).
  * [Firebird](./list/firebird.md).
  * [Interbase](./list/interbase.md).
  * [MS Access](./list/msaccess.md).
  * [MS Excel](./list/excel.md).
  * [MS SQL](./list/mssql.md).
  * [MySQL](./list/mysql.md).
  * [ODBC](./list/odbc.md).
  * [Oracle](./list/oracle.md).
  * [PostgreSQL](./list/postgresql.md).
  * [SQLite](./list/sqlite.md).
  
* Веб-сервисы:
  * [Kafka](./list/kafka.md).
  * [REST-сервиса](./list/rest-service.md).
  * [SOAP-сервиса](./list/soap-service.md).
* Хранилища данных:
  * [Набор XSD-схем](./list/schemes.md).
  * [Deductor Warehouse [Firebird]](./list/wh-firebird.md).
  * [Deductor Warehouse [MS SQL]](./list/wh-mssql.md).
  * [Deductor Warehouse [Oracle]](./list/wh-oracle.md).
* Бизнес приложения:
  * [1C:Предприятие 8](./list/1c.md).
## Настройка подключения

Для каждого модуля в составе пакета можно настроить свой список подключений. Для создания/редактирования подключений необходимо отобразить в панели навигации структуру пакета и выбрать пункт *Подключения* соответствующего модуля (см. рисунок 1).

![Выбор пункта "Подключения" в панели навигации](./readme-1.png)

В результате в левой части экрана в виде дерева отобразится перечень возможных для создания подключений (см. рисунок 2 область 1) — дерево классов подключений.

Подключение можно создать двумя способами:

* перетащить нужное подключение из дерева (1) в область подключений (2);
* дважды кликнуть по выбранному подключению в дереве.

В области подключений появится новое подключение (3), и откроется диалог редактирования параметров подключения.

![Создание нового подключения](./readme-2.png)

После того, как требуемые параметры будут заданы, подключение может быть протестировано.

Управление подключениями осуществляется с помощью панели инструментов (4):

* ![показать дерево](./../../images/icons/common/toolbar-controls/arrow-rr_default.svg) — показать дерево классов подключений;
* ![скрыть дерево](./../../images/icons/common/toolbar-controls/arrow-ll_default.svg) — скрыть дерево классов подключений;
* ![крупная плитка](./../../images/icons/common/toolbar-controls/tile_default.svg) — отображение в виде крупной плитки;
* ![таблица](./../../images/icons/common/toolbar-controls/table_default.svg) — отображение в виде таблицы;
* ![группировать список](./../../images/icons/common/toolbar-controls/group-list_default.svg) — включение группировки списка по видам подключений;
* ![настроить подключение](./../../images/icons/common/toolbar-controls/setup_default.svg) — настроить подключение;
* ![настроить модификатор доступа](./../../images/icons/common/toolbar-controls/access-rights_default.svg) — настроить [модификатор доступа](./../../workflow/access-modifier.md);
* ![удалить подключение](./../../images/icons/common/toolbar-controls/delete_default.svg) — удалить подключение;
* Проверить — тестировать подключение;
* ![активировать подключение](./../../images/icons/common/toolbar-controls/test-connection_default.svg) — активировать подключение.

Навигация по подключениям осуществляется с помощью инструментов:

* ![искать по списку](./../../images/icons/common/toolbar-controls/zoom_default.svg) — поиск подключения по имени/пути, возможно искать в разных группах;
* ![фильтровать список](./../../images/icons/common/toolbar-controls/filter_default.svg) — фильтрация по группам/меткам/пути подключения;
* ![сортировать список](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) — сортировка.

Также для каждого подключения доступно контекстное меню:

* ![переименовать](./../../images/icons/common/toolbar-controls/edit_default.svg) Переименовать подключение…;
* ![настроить](./../../images/icons/common/toolbar-controls/setup_default.svg) Настроить подключение…;
* ![доступ](./../../images/icons/common/toolbar-controls/access-rights_default.svg) Настроить модификатор доступа…;
* ![удалить](./../../images/icons/common/toolbar-controls/delete_default.svg) Удалить подключение…;
* ![ ](./../../images/icons/blank.svg) Тестировать подключение;
* ![активировать](./../../images/icons/common/toolbar-controls/test-connection_default.svg) Активировать подключение.

Доступны горячие клавиши, дублирующие некоторые перечисленные команды:

* %kbd F3 % — активировать подключение;
* %kbd Shift F3 % — тестировать подключение;
* %kbd F2 % — переименовать подключение;
* %kbd Alt G % — группировка списка;
* %kbd Ctrl D % — фильтровать список;
* %kbd Enter % — настроить подключение;
* %kbd Delete % — удалить подключение.

> **Важно:** Для организации подключений к некоторыми источниками, например, к некоторым базам данных, необходимо наличие установленного клиента этой СУБД, либо клиентских библиотек той же разрядности, что и разрядность приложения/сервера Loginom.

[Пример подключения и работы с БД](./../../quick-start/database.md)