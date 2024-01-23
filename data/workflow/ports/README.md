---
description: Способ коммуникации между узлами сценария в аналитической платформе Loginom. Входные и выходные порты узла сценария. Изменение структуры данных внутри порта. Настройка порта. Связывание портов. Быстрый просмотр результатов обработки данных. Цветовая индикация состояния порта. Порты порядка выполнения. Механизм сокрытия портов.
---
# Ports

**Port**: method of communication between the nodes. According to the structure of transferred/accepted data there are the following port types each of which is identified by an icon with corresponding form:

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Table data;
* ![ ](./../../images/icons/app/node/ports/inputs/variable_inactive.svg) Variables;
* ![ ](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) Data in the hierarchic tree-like form;
* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Parameters of connection to the data source;
* ![ ](./../../images/icons/app/node/ports/inputs/model_inactive.svg) Data structure is not defined.

Apart from the form corresponding to particular port type, [color-coded indication of state and identification of port optionality](#tsvetovaya-indikatsiya-portov) as well as enabled/disabled [automapping](./../../workflow/ports/automapping-of-fields.md) are used.

The Workflow nodes accept data via the input ports and give it back via the output ones. The input ports are located to the left on the workflow node icon, and the output ones - to the right (refer to Figure 1).

![Workflow node with two input ports and one output port.](./ports-1.png)

Before the node processing data is sent to its input port when it can be preliminarily modified.

Inside the port (refer to Figure 2) data is also represented in the form of the input and output fields data sets or [variables](./../variables/README.md) according to the port type. The input data set represents the data that is accepted by the port. The output data set represents the data that is given back by the port. When configuring the port, a user has the following possibilities:

* set the random structure of the output data set: its list and parameters of fields/variables;
* map the fields (or variables) of the input port data set with the fields of the output one.

It is possible to represent the schema of the data movement for the node that accepts and gives back the data set (table) as follows (refer to Figure 2):

![Schema of data movement for the node that accepts and gives back the data set (table).](./port-structure.svg)

Thus, for the node the data movement schema of which is represented on Figure 2, the data undergoes the following transformation stages:

1. Change of the data structure in the input port and its transfer for processing.
1. Node processing by the algorithm. In the result of the processing, the new data supplied to the output port is generated.
1. Change of the data structure in the output port.

It is possible to introduce the following changes of the data structure in the port:

* change of the fields/variables names;
* change of the fields/variables captions;
* set fields order in the table;
* delete unnecessary fields/variables;
* set fields usage types (refer to [features of data set field](./../../data/datasetfieldfeatures.md)).

These actions and also possible methods of the port reaction to the structure change of the data supplied to the port are set in the port settings.

> **Important:** The ports are used not only for data transfer but also for [synchronization](./automapping-of-fields.md).

Single mouse click on the port enables to open the dialog for subsequent selection of one of the following commands:

* **Quick view…** opens [Quick view](./../../visualization/preview/quick-view.md) visualizer. It is available only for the output ports.
* **Configure port…** opens the port wizard.
* **Edit port caption…** enables to change the current port caption to any other.

The port caption will be displayed in the Wizards of some nodes where selection of input data sets is logically possible. It will also be displayed on the visualizer selection panel for the output ports (but visualizers as such are to be separately renamed).

## Port Configuration

**Configure port…** command enables to open the window of the input or output data configuration according to the port type.

If the structure of the input data supplied to the port is still unknown (for example, if there is no link established with the input port), the port configuration interface provides an opportunity to set only the structure of the output data of the port.

If the input data structure is known, the port configuration interface enables to set the output data structure of the port and map the fields (or variables) of the input data set of the port with the output one. In this case, it is possible to select two different interfaces for mapping:

[Links](./connections-interface.md): graphically displayed links between the fields/variables of the input and output data sets of the port. 

[Table](./table-interface.md): mapping is performed by selecting the input fields/variables in the table.

> **Important:** When creating the new node, [*Automapping of Fields*](./automapping-of-fields.md) option is enabled by default in its ports. Usage of this option causes the automatic port configuration (setup). In the result, the output data set of the port fully repeats the input data set structure. The automatic synchronization option is disabled when any of the fields/variables of the output data set of the port is deleted by a user.

## Mechanism of Ports Hiding

In Loginom there is a mechanism of hiding of [execution order ports](./../ports/service-ports.md) and [control variables ports](./../variables/control-variables.md), namely, they are hidden from a user by default:

* To display the execution order ports, it is required to use ![ ](./../../images/icons/common/toolbar-controls/order_default.svg) toolbar button of the workflow construction area.
* To display the control variables ports, it is required to select *Show control variables port* option in the context menu of the node.

## Color-Coded Indication of Ports

The color-coded indication of ports is used in Loginom. Ports with the solid line are required ports, namely, connection with other ports is required for their operation. Let's analyze the color-coded indication using the [*Table interface*](./table-interface.md).

* ![ ](./../../images/icons/app/node/ports/inputs/table_active.svg): port is executed;
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg): port has been configured but it is not executed;
* ![ ](./../../images/icons/app/node/ports/inputs/table_error.svg): port is not configured or contains an error;
* ![ ](./../../images/icons/app/node/ports/inputs/table_warning.svg): port has been partially configured.

The optional port is displayed using the stipple line (their color-coded indication is similar to the required ports)
![ ](./../../images/icons/app/node/ports/inputs-optional/table_inactive.svg)
. No link with another port can be established for such port.

> **Note**: The color-coded indication of the ports of variables, connections and the ports with undefined data structure is similar to the one analysed above.

## Linking of Ports

To link the ports, it is required to hover a cursor over the port and press the left mouse button. Then it is required to hover a cursor over the port with which linking is required and release the left mouse button.

When selecting the port, the stipple line appears. It starts in the source port and ends in the mouse cursor position. The type of the port with which it is required to link the source port is displayed on its end for convenience (refer to Figure 3):

![Connection of Ports.](./ports-3.png)

> **Important**: It is possible to connect only the ports related to one type. Namely, *Table* port can be connected only with the similarly-named port. It is also prohibited to connect the output port of the node with its own input port. The cyclic links are forbidden!

When adding the node to the Workflow construction area using Drag-and-Drop method from the components panel, ports can be automatically connected.

If the dragged component is in the area of the automatic connection of another port, the tip with caption and current state of the output port and connection between the connected ports will be displayed.

While attempting to provide the automatic connection of the ports with *Connection* type, correctness of connection is checked. Connection correctness check is performed for other types of ports only when adding node to the Workflow.

When the dragged node has several input ports, the automatic connection can be performed for the upper input port of each type.

The automatic connection is not available if *Alt* key is pressed while dragging the node.