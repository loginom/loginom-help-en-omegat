---
description: Компонент Выполнение узла в Loginom. Повторное использование имеющегося узла. Базовый узел. Мастер настройки.
---
# ![Node Execution](./../../images/icons/components/script-deductor_default.svg)Node Execution

The component enables to use already existing workflow node for repeated processing of the new data.

**Base node**: the node or [Supernode](./supernode.md), settings and algorithm of which are to be used repeatedly. It can be located outside the current *Supernode*, *Workflow*, *Module* or *Package*.

It is possible to add *Node execution* to the Workflow in two ways:

* From the standard components: using the Drag-and-Drop method by moving the component to the *Workflow* construction area or via the context menu by pressing the component with the right mouse button.
* From [derived components](../../workflow/derived-component.md) using the same methods.

When adding the *Node execution* method from the derived component, its caption is formed in the following way: `Derived component caption (execution)`.

The exception is the case when *Node execution* is created by the derived component for which it is forbidden to create derived nodes. In this case, the node gets the same caption as the component.

When configuring the *Node execution* node, the derived component is always created by the base node. Namely, *Node execution* can refer only to the component. By default, created in such a way derived components have [visibility area](../../workflow/access-modifier.md) *Private*, and *Derived nodes* setting is disabled.

## Ports

When creating, the node does not have [ports](./../../workflow/ports/README.md). Upon configuration, the node has the ports identical to ports of the base node. It is possible to redefine settings of ports, however, it should be noted that reconfiguration of the input ports can cause incompliance of the new input data with the requirements of the workflow inherited from the base node, and, as a consequence, execution error.

## Wizard

The radio button enables to select the workflow node that is planned to be repeatedly used for processing of the new data. The nodes *available* for selection are dispalyed in the form of a tree.

Node tree has two root branches:

* **Current module nodes** contains a list of module nodes in which *Node execution* is configured at the moment.
* **Components** contains the current package and list of external packages to which references and their derived components with  *Public* visibility area are configured.

> **Important**: The nodes from the external packages, other workflows and supernodes will be displayed in the tree only on condition of access granted to them by their [access modifier](./../../workflow/access-modifier.md).

The wizard interface enables to search for the nodes in the tree by means of filters, namely, by name and node comment.

**Save configuration of the selected node**: the parameter saves own configuration of the internal component if it differs from the source one. It is not set by default.

The *Node execution* component cannot repeatedly use the [Loop](./loop.md) and [Reference node](./reference-node.md) components.


-----

**Note**:

* When executing the node, the base node is not executed.
* [Model overfitting](./../../workflow/training-processors.md) inherited from the base node is possible. However, the base node model will be unchanged.
