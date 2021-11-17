# Workflow Progress Control

## Order of Execution

In the general case, the order of nodes execution is set by connection of their input and output ports. The nodes are successively executed from the output port to the input. However, sometimes it is not possible to set the data processing order in such a way. For example, if it is required to download data to the external source and then download already modified data from the external source. In this case, to set the nodes execution order, the [service ports](./ports/service-ports.md) are used
(refer to Figure 1).

![Use of the service ports to set the nodes execution order.](run-order-1.png)

Besides, Loginom enables to execute several Workflow branches in parallel. For this purpose, additional settings are not required. It is sufficient to execute the parallel connection of nodes. For example, the following chains of nodes will be executed in parallel (refer to Figure 2):

![Concurrency of workflow branches execution.](run-order-2.png)

Such option enables to decrease the Workflow execution time due to fuller use of the computing capacity of the computer.

## Configure Nodes Execution Order

Sometimes the manual setting of the Workflow nodes execution order is required. For this purpose, the execution order port is used ![](../images/icons/app/node/ports/port-order/port-order_inactive.svg).

To display these ports, it is required to use ![](../images/icons/toolbar-controls/order_default.svg) toolbar button of the Workflow construction area.

Example of configuration of the nodes execution order is provided in the [Service Ports](./ports/service-ports.md) section.

### Loop

[Loop](../processors/control/cycle.md) is the control structure that is designated for organization of the multiple execution of the instructions set.

Loginom gives an opportunity to use the following kinds of loops:

* Counting loop: analogue of "FOR … TO …".
* Post-test loop: analogue of "DO … WHILE …".
* Data set loop (group processing): analogue of "FOR EACH".

Use of the Supernodes provides easy implementation of *loop nesting*.

It is possible to execute the Loops *in multiple threads* that can considerably decrease the processing time.

### Condition (Branching)

[Condition](../processors/control/condition.md) is the control structure that provides the algorithm branching according to the value of some expression (analogue of "SWITCH... CASE..."). According to the set condition the Workflow execution progress can follow one of possible branches (refer to Figure 3).

![Execution of one of the workflow branches according to the condition.](run-order-3.png)
