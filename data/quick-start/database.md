---
description: Пошаговая инструкция по получению данных из какой-либо базы данных для последующего анализа в аналитической платформе Loginom. Настройка подключения к базе данных. Импорт данных из базы данных.
---
# Integration with Databases

It is required to perform several preparatory actions to start the work with data from any database.

## Step 1. Connection Creation

First, it is required to create corresponding [Connection](./../integration/connections/README.md) to work with the database to be connected with.

## Step 2. Creation of the Connection Node in the Workflow

It is required to place the created connection into the workflow; for this purpose you are to create the node the output data of which will be parameters of connection with the data source.

The following actions are required to create the node:

1. Open the workflow to be edited and expand the Connections panel that includes a list of all connections created in the package.
2. Select the required connection in the panel and use one of the specified methods clicking on the right mouse button to open its context menu (refer to Figure 1):
   * ![ ](./../images/icons/common/toolbar-controls/show-reference-links_default.svg) Add reference to connection into Workflow — [Reference node](./../processors/control/reference-node.md) (1) for connection will be added to the workflow. Также создать узел-ссылку можно при помощи функции Drag-and-drop, перетащив мышью выбранное подключение в область построения сценария.
   * ![ ](./../images/icons/common/toolbar-controls/derive-node_default.svg) Add Connection node to Workflow — derived node (2) inherited from the selected connection will be added to the workflow. The derived node will have the same settings as the selected connection. However, it is possible to redefine them using the Node Wizard (in this case, settings of the connection from which the node has been inherited will not be changed).
   * Go to connection — go to the window with the available connections.

![Creation of the connection node in the workflow](./database-1.png)

Parameters of connection to the data source are used by the data [import](./../integration/import/README.md)/[export](./../integration/export/README.md) nodes. For this purpose, ![ ](./../images/icons/app/node/ports/outputs/link_inactive.svg) port data of the connection node are to be sent to the ![ ](./../images/icons/app/node/ports/inputs/link_inactive.svg) input port for which such connection of the import/export node is required (refer to Figure 2).

![Connection Node Use.](./database-2.png)

## Step 3. Import Node Configuration

Для получения информации из базы данных используется отдельный узел [Импорт из базы данных](./../integration/import/database.md). It allows for import of the database table or results of execution of the SQL query set by the user and view.
