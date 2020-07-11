# Integration with Databases

It is required to perform several preparatory actions to start the work with data from any database.

## Step 1. Connection Creation

First, it is required to create corresponding [Connection](../integration/connections/README.md) to work with the database to be connected with.

## Step 2. Creation of the Connection Node in the Workflow

It is required to place the created connection into the workflow, for this purpose you are to create the node the output data of which will be parameters of connection to the data source.

The following actions are required to create the node:

1. Open the workflow to be edited and expand the Connection panel that includes a list of all connections created in the package.
2. Select the required connection in the panel and use one of the specified methods clicking with the right mouse button to open its context menu (refer to. Figure 1):
   * ![ ](../images/icons/toolbar-controls/show-reference-links_default.svg) Add link to the Connection to the Workflow — [Reference node](../processors/control/unit-link.md) (1) for connection will be added to the workflow. It is also possible to create the reference node dragging the required connection to the area of the workflow creation.
   * ![ ](../images/icons/toolbar-controls/derive-node_default.svg) Add the Connection node to the Workflow — derived node (2) inherited from the selected connection will be added to the workflow. The derived node will have the same settings as the selected connection. However, it is possible to redefine them using the Node Wizard (in this case, settings of the connection from which the node has been inherited will not be changed).
   * ![ ](../images/icons/toolbar-controls/setup_default.svg) Configure the connection — go to the connection configuration parameters window.
   * Go to the connection — go to the window with the available connections.

![Creation of the connection node in the workflow](./database-1.png)

Параметры подключения к источнику данных используются узлами [импорта](../integration/import/README.md)/[экспорта](../integration/export/README.md) данных. Для этого выходные данные порта ![ ](../images/icons/app/node/ports/outputs/link_inactive.svg) узла подключения необходимо подать на входной порт ![ ](../images/icons/app/node/ports/inputs/link_inactive.svg) нуждающегося в этом подключении узла импорта/экспорта (см. рисунок 2).

![Использование узла подключения.](./database-2.png)

## Шаг 3. Настройка узла импорта

Для получения информации из базы данных используется отдельный обработчик [Импорт из базы данных](../integration/import/database.md). Он позволяет импортировать таблицу БД или результаты выполнения SQL-запроса, заданного пользователем, а также представление — view.
