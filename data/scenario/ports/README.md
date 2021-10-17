# Ports

**Port**: method of communication between the nodes. There are the following port types according to the structure of transferred/accepted data:

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Table data;
* ![ ](../../images/icons/app/node/ports/inputs/variable_inactive.svg) Variables;
* ![ ](../../images/icons/app/node/ports/inputs/tree_inactive.svg) Data in the hierarchic tree-like form;
* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) Parameters of connection to the data source;
* ![ ](../../images/icons/app/node/ports/inputs/model_inactive.svg) Data structure is not defined.

The Workflow nodes accept data via the input ports and give them back via the output ones. The input ports are located to the left on the workflow node icon, and the output ones - to the right (refer to Figure 1).

![Workflow node with two input ports and one output port.](ports-1.png)

Before the node processing data is sent to its input port when it can be preliminarily modified.

Inside the port (refer to Figure 2) data is also represented in the form of the input and output fields data sets (or [variables](../variables/README.md)according to the port type). The input data set represents the data that is accepted by the port. The output data set represents the data that is given back by the port. When configuring the port, a user has the following possibilities:

* Set the random structure of the output data set: its list and parameters of fields/variables.
* Map the fields (or variables) of the input port data set with the fields of the output one.

It is possible to represent the schema of the data movement for the node that accepts and gives back the data set (table) as follows: Figure 2):

![Schema of data movement for the node that accepts and gives back the data set (table).](ports-2.svg)

Thus, for the node the data movement schema of which is represented on Figure 2, the data undergo the following transformation stages:

1. Change of the data structure in the input port and its transfer for processing.
1. Node processing by the algorithm. In the result of the processing, the new data supplied to the output port is generated.
1. Change of the data structure in the output port.

It is possible to introduce the following changes of the data structure in the port:

* Change of the fields/variables names;
* Change of the fields/variables captions;
* Set fields order in the table;
* Delete unnecessary fields/variables;
* set fields usage types (refer to [features of data set field](../../data/datasetfieldoptions.md)).

These actions and also possible methods of the port reaction to the structure change of the data supplied to the port are set in the port settings.

> **Important:** The ports are used not only for data transfer but also for [synchronization](../ports/field-synchronization.md).

## Port Configuration

It is possible to open the port configuration dialog by clicking on the port with the mouse button. Then it is required to select "Configure port..." command. "Configure columns mapping" or "Adjustment of variables mapping" dialog will be opened according to the port type.

If the structure of the input data supplied to the port is still unknown (for example, if there is no link established with the input port), the port congiguration interface provides an opportunity to set only the structure of the output data of the port.

If the input data structure is known, the port configuration interface enables to set the output data structure of the port and map the fields (or variables) of the input data set of the port with the output one. In this case, it is possible select two different interfaces for mapping:

[Links](../ports/interface-relations.md): graphically displayed links between the fields/variables of the input and output data sets of the port. 

[Table](../ports/interface-table.md): mapping is performed by selecting the input fields/variables in the table.

> **Important:** When creating the new node, [Automapping of Fields](../ports/field-synchronization.md) option is enabled by default in its ports. Usage of this option causes the automatic port configuration (setup). In the result, the output data set of the port fully repeats the input data set structure. The automatic synchronization option is disabled when any of the fields/variables of the output data set of the port is deleted by a user.

## Mechanism of Ports Hidding

In Loginom there is a mechanism of hidding of [execution order ports](../ports/service-ports.md) and [control variables ports](../variables/control-variables.md), namely, they are hidden from a user by default:

* To display the execution order ports, it is required to use ![ ](../../images/icons/toolbar-controls/order_default.svg) toolbar button of the workflow construction area.
* To display the control variables ports, it is required to select "Show control variables port" option in the context menu of the node.

## Color Indication of Ports

The color indication of ports is used in Loginom. Ports with сплошной линией are required ports, namely, connection with other ports is required for their operation. Let's analyze the color indication using ["Table" interface](./interface-table.md) as an example.

* ![ ](../../images/icons/app/node/ports/inputs/table_active.svg): port is executed;
* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg): port has been configured but it is not executed;
* ![ ](../../images/icons/app/node/ports/inputs/table_error.svg): port is not configured or contains an error;
* ![ ](../../images/icons/app/node/ports/inputs/table_warning.svg): port has been partially configured.

The optional port is displayed using пунктиром (their color indication is similar to the required ports)
![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg)
. No link with another port can be established for such port.

> **Note**: Color indication of the ports of variables, connections and the ports with undefined data structure is similar to the one analyzed above.

## Linking of Ports

To link the ports, it is required to hover a cursor over the port and press the left mouse button. Then it is required to hover a cursor over the port with which linking is required and release the left mouse button.

When selecting the port, пунктирная линия appears. It starts in the source port and ends in the mouse cursor position. The type of the port with which it is required to link the source port is displayed on its end for convenience (refer to Figure 3):

![Connection of Ports.](ports-3.png)

> **Important**: It is allowed to connect only the ports of the same type. Namely, the "Table" port can be connected only with the одноименным портом. It is also prohibited to connect the output port of the node with its own input port. The cyclic links are forbidden!
