---
description: Служебные порты в аналитической платформе Loginom. Порт порядка выполнения. Последовательность выполнения узлов сценария в Loginom. Порт связи наследования. Отображение базового узла производного компонента. Порт связи ссылки. Отображение исходного узла для Узла-ссылки.
---
# Service Ports

## Execution Order Port

The execution order port ![ ](./../../images/icons/app/node/ports/port-order/port-order_inactive.svg) is designated for the manul determination of the Workflow nodes execution order. The port is hidden by default. To display it, it is required to use ![ ](./../../images/icons/common/toolbar-controls/order_default.svg) toolbar button of the Workflow construction area.

To create a sequence of nodes execution, it is required to link the ports used to set the execution order with each other
![ ](./../../images/icons/app/node/ports/port-order/port-order_inactive.svg)
(refer to Figure 1).

![Example of use of the execution order port.](service-port-1.png)

## Port of Heritage Connection

Port of heritage connection (refer to Figure 2) is designated to display the base node of the [Derived component](./../derived-component.md). It is possible to enable display of the parent node by ![ ](./../../images/icons/common/toolbar-controls/show-derived-nodes_default.svg) toolbar button of the Workflow construction area.

> **Note:** It is possible to find the base node only if it is located within the current Workflow construction area.

![Example of use of the heritage connection port.](service-port-2.png)

## Port of Reference Connection

Port of reference connection (refer to Figure 3) enables to display the source node for the [Reference node](./../../processors/control/reference-node.md). It is possible to enable display of the source nodes by ![ ](./../../images/icons/common/toolbar-controls/show-reference-links_default.svg) toolbar button of the Workflow construction area.

![Example of use of the reference connection port.](service-port-3.png)
