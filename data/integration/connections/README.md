---
description: Подключения к источнику данных в Loginom – типы подключений, настройка подключения.
---
# Connections

Before [interaction with SOAP services](./../../processors/integration/soap-request.md)/[REST services](./../../processors/integration/rest-request.md) nodes and nodes of [import](./../import/README.md)/[export](./../export/README.md) from business applications, data warehouses, databases or other sources are used in the workflows, it is required to create the data source connection in the package. The connection includes all parameters required for the data source connection, namely, password/login, source location, etc. Later on, the created connection can be repeatedly used in the package.

## Types of Connections

* Databases:
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

* Web Services:
   * [Kafka](./list/kafka.md).
   * [REST-сервиса](./list/rest-service.md).
   * [SOAP-сервиса](./list/soap-service.md).
* Data Warehouses:
   * [Набор XSD-схем](./list/schemes.md).
   * [Deductor Warehouse [Firebird]](./list/wh-firebird.md).
   * [Deductor Warehouse [MS SQL]](./list/wh-mssql.md).
   * [Deductor Warehouse [Oracle]](./list/wh-oracle.md).
* Business Applications:
   * [1C:Предприятие 8](./list/1c.md).
## Connection Setup

A separate list of connections can be set for each module included into the package. To create/edit connections, it is required to show the package structure on the navigation bar and select *Connections* of corresponding module (refer to Figure 1).

![Select "Connections" on the navigation bar](./readme-1.png)

In the result, a list of connections that can be created will be displayed in the left part of the screen in the form of a tree (refer to Figure 2, Area 1) — Connection Class Tree.

Connection can be created in two ways:

* drag the required connection from tree (1) to area of connections (2);
* double click on the selected connection in the tree.

New connection (3) will appear in the area of connections, and the dialog of connection parameters editing will be opened.

![Create New Connection](./readme-2.png)

When all required parameters are set, the connection can be tested.

Toolbar (4) is used for connection control:

* ![Show tree](./../../images/icons/common/toolbar-controls/arrow-rr_default.svg) — show connection class tree;
* ![Hide tree](./../../images/icons/common/toolbar-controls/arrow-ll_default.svg) — hide connection class tree;
* ![Large tiles](./../../images/icons/common/toolbar-controls/tile_default.svg) — large tiles view;
* ![Table](./../../images/icons/common/toolbar-controls/table_default.svg) — table view;
* ![Group list](./../../images/icons/common/toolbar-controls/group-list_default.svg) — include the list grouping by connection kinds;
* ![Configure connection](./../../images/icons/common/toolbar-controls/setup_default.svg) — configure connection;
* ![Configure visibility](./../../images/icons/common/toolbar-controls/access-rights_default.svg) — configure [visibility](./../../workflow/access-modifier.md);
* ![Delete connection](./../../images/icons/common/toolbar-controls/delete_default.svg): delete connection;
* Check — test connection;
* ![Activate connection](./../../images/icons/common/toolbar-controls/test-connection_default.svg) — activate connection.

The following tools are used for navigation through the connections:

* ![search in list](./../../images/icons/common/toolbar-controls/zoom_default.svg) — search for connection by name/path, it is possible to search in different groups;
* ![Filter list](./../../images/icons/common/toolbar-controls/filter_default.svg) — filtering by groups/captions/path of connection;
* ![Sort list](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) — sorting.

The context menu is available for each connection:

* ![rename](./../../images/icons/common/toolbar-controls/edit_default.svg) Rename connection…;
* ![configure](./../../images/icons/common/toolbar-controls/setup_default.svg) Configure connection…;
* ![access](./../../images/icons/common/toolbar-controls/access-rights_default.svg) Configure visibility…;
* ![delete](./../../images/icons/common/toolbar-controls/delete_default.svg) Delete connection…;
* ![ ](./../../images/icons/blank.svg) Test connection;
* ![activate](./../../images/icons/common/toolbar-controls/test-connection_default.svg) Activate connection.

The following hotkeys duplicating some listed commands are available:

* %kbd F3 %: activate connection;
* %kbd Shift F3 %: test connection;
* %kbd F2 %: rename connection;
* %kbd Alt G %: group list;
* %kbd Ctrl D %: filter list;
* %kbd Enter %: configure connection;
* %kbd Delete %: delete connection.

> **Important:** To provide connections to some sources, for example, to some databases, it is required to install the client of this DBMS or the client libraries with the same bitness as the Loginom application/server bitness.

[Example of the DB connection and operation](./../../quick-start/database.md)