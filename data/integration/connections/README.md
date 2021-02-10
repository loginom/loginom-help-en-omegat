# Connections

Перед тем как использовать в сценариях узлы [взаимодействия с SOAP-сервисами](../../processors/integration/soap-request.md)/[REST-сервисами](../../processors/integration/rest-request.md) и [импорта](../import/README.md)/[экспорта](../export/README.md) из бизнес приложений, хранилищ данных, баз данных или иных источников, в пакете необходимо создать подключение к источнику данных. Подключение содержит в себе все необходимые параметры для соединения с источником данных, такие как пароль/логин, расположение источника и др. Созданное подключение в дальнейшем может использоваться в пакете многократно.

## Types of Connections

* Business Applications:
   * [1C:Enterprise 8.x Connection](./list/1c.md).
* Data Warehouses:
   * [XSD Schemas Set Connection](./list/schemes.md).
   * [Deductor Warehouse [Firebird] Connection](./list/wh-firebird.md).
   * [Deductor Warehouse [MS SQL] Connection](./list/wh-mssql.md).
   * [Deductor Warehouse [Oracle] Connection](./list/wh-oracle.md).
* Databases:
   * [MS Excel Connection](./list/excel.md).
   * [Firebird Connection](./list/firebird.md).
   * [Interbase Connection](./list/interbase.md).
   * [MS Access Connection](./list/msaccess.md).
   * [MS SQL Connection](./list/mssql.md).
   * [MySQL Connection](./list/mysql.md).
   * [ODBC Connection](./list/odbc.md).
   * [Oracle Connection](./list/oracle.md).
   * [PostgreSQL Connection](./list/postgresql.md).
   * [SQLite Connection](./list/sqlite.md).
   * [ClickHouse Connection](./list/clickhouse.md).
* Web Services:
   * [SOAP Service Connection](./list/soap-service.md).
   * [REST Service Connection](./list/rest-service.md).

## Настройка подключения

Для каждого модуля в составе пакета можно настроить свой список подключений. Для создания/редактирования подключений необходимо отобразить в панели навигации структуру пакета и выбрать пункт *Подключения* соответствующего модуля (см. Figure 1).

![Выбор пункта "Подключения" в панели навигации](./readme-1.png)

В результате в левой части экрана в виде дерева отобразится перечень возможных для создания подключений (см. рисунок 2 область 1) — дерево классов подключений.

Connection can be created in two ways:

* перетащить нужное подключение из дерева (1) в область подключений (2);
* дважды кликнуть по выбранному подключению в дереве.

В области подключений появится новое подключение (3), и откроется диалог редактирования параметров подключения.

![Создание нового подключения](./readme-2.png)

После того, как требуемые параметры будут заданы, подключение может быть протестировано.

Управление подключениями осуществляется с помощью панели инструментов (4):

* ![Show tree](../../images/icons/toolbar-controls/arrow-rr_default.svg) — show connection class tree;
* ![Hide tree](../../images/icons/toolbar-controls/arrow-ll_default.svg) — hide connection class tree;
* ![Large tiles](../../images/icons/toolbar-controls/tile_default.svg) — large tiles view;
* ![Table](../../images/icons/toolbar-controls/table_default.svg) — table view;
* ![группировать список](../../images/icons/toolbar-controls/group-list_default.svg) — включение группировки списка по видам подключений;
* ![Configure connection](../../images/icons/toolbar-controls/setup_default.svg) — configure connection;
* ![Configure visibility](../../images/icons/toolbar-controls/access-rights_default.svg) — configure [visibility](../../scenario/access-modifier.md);
* ![Delete connection](../../images/icons/toolbar-controls/delete_default.svg) — delete connection;
* Check — test connection;
* ![Activate connection](../../images/icons/toolbar-controls/test-connection_default.svg) — Activate connection.

Навигация по подключениям осуществляется с помощью инструментов:

* ![искать по списку](../../images/icons/toolbar-controls/zoom_default.svg) — поиск подключения по имени/пути, возможно искать в разных группах;
* ![Filter list](../../images/icons/toolbar-controls/filter_default.svg) — filtering by groups/captions/path of connection;
* ![Sort list](../../images/icons/toolbar-controls/sort-asc_default.svg) — sorting.

The context menu is available for each connection:

* ![rename](../../images/icons/toolbar-controls/edit_default.svg) Rename connection…;
* ![configure](../../images/icons/toolbar-controls/setup_default.svg) Configure connection…;
* ![access](../../images/icons/toolbar-controls/access-rights_default.svg) Configure visibility…;
* ![delete](../../images/icons/toolbar-controls/delete_default.svg) Delete connection…;
* ![ ](../../images/icons/blank.svg) Test connection;
* ![activate](../../images/icons/toolbar-controls/test-connection_default.svg) Activate connection.

The following hotkeys duplicating some listed commands are available:

* %kbd F3 % — activate connection;
* %kbd Shift F3 % — test connection;
* %kbd F2 % — rename connection;
* %kbd Alt G % — group list;
* %kbd Ctrl D % — filter list;
* %kbd Enter % — configure connection;
* %kbd Delete % — delete connection.

> **Важно:** Для организации подключений к некоторыми источниками, например, к некоторым базам данных, необходимо наличие установленного клиента этой СУБД, либо клиентских библиотек той же разрядности, что и разрядность приложения/сервера Loginom.

[Пример подключения и работы с БД](../../quick-start/database.md)