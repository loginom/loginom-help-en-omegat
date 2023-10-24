---
description: Обработка. Оглавление. Сценарий. Узел. Компонент. Стандартные компоненты. Производные компоненты.
---
# Processing

## Basic Terms

**Workflow**: sequence of actions that must be performed for data analysis. The processing workflow is a combination of data processing nodes configured by a user to solve a particular task.

The processing sequence is determined by connection of the previous workflow node output and input of the subsequent one. The node input and output are **input** and **output ports**.

![](./../quick-start/readme-1.png)

*Workflow Example*

The workflow **node** performs a separate operation with data. A list of possible operations is represented by a number of ready **components**. Thus, the **component** is a prototype or template of the future workflow node. To create the workflow node that performs the required operation with data, the corresponding component must be dragged from the component panel to the workflow construction area (refer to ["The first workflow"](./../quick-start/first-workflow.md)).

The workflow nodes are created from 2 types of components :

* [Стандартные компоненты](./standard-components.md) - предоставляются в рамках платформы;
* [Derived components](./../workflow/derived-component.md) are created and configured by a user. The derived component can be created from combination of the workflow nodes implementing the random processing logics.

Thus, a set of tools for implementation of different data processing logics is not limited by standard platform components, and it can be expanded by users.

The [supernode](./control/supernode.md) is most commonly used to create the derived component. The supernode is a special node that can include other workflow nodes. Random logics can be implemented in the Supernode. At the same time, the workflow handler can consider it as the "black box".

The supernode accepts information by means of input ports, performs processing and sends results to output ports. Input and output ports are set by a user.

От узла к узлу могут передаваться как наборы данных - таблицы, так и переменные - объекты, содержащие лишь одно значение. Статистические данные таблиц (например, сумма по столбцу, среднее значение и т.д.) при помощи специального компонента могут быть преобразованы в переменные.

Переменные, в свою очередь, могут применяться в узлах для преобразования таблиц. As tables and variables have different structure, the ports corresponding to them cannot be connected with each other, and they are differently identified.