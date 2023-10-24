---
description: Компонент Подмодель в Loginom. Упрощение структуры сценария. Объединение нескольких узлов в один. Мастер настройки.
---
# ![Supernode](./../../images/icons/components/generic_default.svg) Supernode

*Supernode* is a special node that contains other nodes of the *[Workflow](./../../workflow/README.md#proektirovanie-stsenariev)*.

The Main Designation of the *Supernode*:
- Simplification of the *Workflow* structure is achieved by combination of several nodes performing particular stage of the data processing into one node of the *Supernode*. В состав *Подмодели* могут также включаться другие *Подмодели*, их вложенность друг в друга не ограничена. Thus, it is possible to create the hierarchic structure of the workflow.
- Multiple use of the created processing logics for different data. It is possible to implement the random processing logics and set the required structure of input and output data in the *Supernode*. Using the following tools: the *[Derived component](./../../workflow/derived-component.md)*, *[Node execution](./execute-node.md)*, *[Publication of web services](./../../integration/web-services/README.md#sozdanie-sobstvennykh-veb-servisov)*, *[Batch processing of the workflows](./../../workflow/batchlauncher.md#paketnoe-vypolnenie-stsenariev)*, it is possible to use the processing logics created in the *Supernode* many times for different data.

## Ports

Initially, there are no input and output ports. They are created by users in the wizard. It is possible to set the random number of the following input/output ports for the *Supernode*:

### Input

* ![Входные переменные](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) Переменные (необязательный порт)
* ![Входной источник данных](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Таблица данных
* ![Входной источник данных](./../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) Таблица данных (необязательный)
* ![Входное дерево данных](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) Дерево данных

### Output

* ![Выходные переменные](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) Переменные
* ![Выходной набор данных](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Таблица данных
* ![Выходное дерево данных](./../../images/icons/app/node/ports/outputs/tree_inactive.svg) Дерево данных

## Wizard

Ports are created here. It is possible to set a type, name and caption for each port. It will be displayed when hovering a cursor over it. Входящему порту типа *Таблица* можно задать свойство *Необязательный*.

* ![Inputs](./../../images/icons/common/system-object/port-in_default.svg) **Inputs** ![New port](./../../images/icons/common/toolbar-controls/plus_default.svg) enable to create a new input port:
   * ![Для переменных](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) — для переменных;
   * ![Для таблицы](./../../images/icons/app/node/ports/inputs/table_inactive.svg) — для таблицы;
   * ![For data tree](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) — for data tree.
* ![Outputs](./../../images/icons/common/system-object/port-out_default.svg) **Outputs** ![New port](./../../images/icons/common/toolbar-controls/plus_default.svg) enable to create a new output port:
   * ![Для переменных](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) — для переменных;
   * ![Для таблицы](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — для таблицы;
   * ![For data tree](./../../images/icons/app/node/ports/outputs/tree_inactive.svg) — for data tree.
* ![Переместить вниз](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Переместить вниз**, ![Переместить вверх](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — сместить выделенный порт в списке;
* ![Удалить порт](./../../images/icons/common/toolbar-controls/delete_default.svg) — удалить порт;
* ![Delete all ports](./../../images/icons/common/toolbar-controls/delete-all_default.svg) enables to delete all ports.

The port name can be set in the following ways:

* **Select from the item drop-down menu*<Unique>*** (it is used by default): the port name is not explicitly given by a user, in this case, the system generates the internal unique name independently.
* **Select from the item drop-down menu *<Unspecified>***: it is used for [compatibility with past generation products](./../../integration/web-services/publishing-web-service.md#sovmestimost-veb-servisov-loginom-s-deductor) (DIS, Deductor 5.3) when publishing the supernode as a web service. The name can be *<Unspecified>* if there is only one configured port in the output or input list.
* **Explicitly given name**: a user sets the unique port name by himself. Letters of the Latin alphabet from а to z and from А to Z, underscore "_" character and digits are allowed in the name. It is not allowed to start the name from a digit. It is required to provide uniqueness of the input port in the list of the input ports, for the output port - in the list of the output ports.

## The Supernode Construction Area

The *Supernode* node contains the following text: *Enter*, its pressing enables to open the *Supernode* construction area, and execute a random processing workflow in it. When editing the *Supernode* content, its input and output ports created in the wizard are displayed in the left and right parts of the area over the following buttons: ![Output node](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) *Input node* and ![Output node](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) *Output node*.

Варианты активации узлов *Подмодели*: связываем узлы с *Выходным узлом* или задаем порядок выполнения узлов, связывая их с *Входным портом синхронизхации*.

Варианты деактивации узлов *Подмодели*: связываем узлы с *Входным узлом* и *Выходным узлом* или задаем порядок выполнения узлов, связывая их с *Выходным портом синхронизации* и *Входным портом синхронизации*.

It is possible to use the *[Workflow variables](./../../workflow/variables/scenario-variables.md)* that include *User variables* inside the *Supernode*. A user can set a list and values of the user variables. In this case, the area of their usage will be restricted by the *Supernode*.

When pressing ![Move out](./../../images/icons/app/node/submodel/back.svg) *Move out* button, it is possible to move out the *Supernode* to the workflow a level higher.
