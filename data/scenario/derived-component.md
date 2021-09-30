# Derived Component

## Description

**Derived component** is the component created by a user than can be used in the Workflows alongside with the standard components provided by the platform. The data processing algorithm, input and output ports of the derived component are set by the *base node*.

Any node can be the base node with the exception of *Loop*, *Node execution*, *Reference node*, reference derived node for *Connection*. But generally the [Supernode](../processors/control/submodel.md) is used. As it is possible to use the random logics of data processing in the Supernode and set the required input and output ports, a user has an opportunity to create the Derived Component with the universal feature on its basis. It will be suitable for multiple use in different analytical tasks. Thus, a set of tools for implementation of different data processing logics is not limited by standard platform components, and it can be expanded by users. Such approach is an important tool used to implement the structural approach when designing complex solutions (refer to [design tool](../quick-start/design-principles.md)).

The following properties are peculiar to the derived component:

* **Heritage** means that the base node change will cause the Derived Component change, and, correspondingly, all Workflow nodes created on the basis of this component.
* **Overdetermination** means the modification of the derived node without change of the Derived Component from which it has been created.

From the *Derived Components* the *derived nodes* are created. They are descendants of the base node.
The inheritance is performed using the mechanism of the derived nodes update when changing the base one. When introducing changes into the base node in all derived nodes inherited from it, the following notification will appear: ![](../images/icons/informer/error_warning.svg) "Base node was changed...". These changes will be applied to the derived nodes:
* when selecting *Update node configuration* menu option in the context menu of the derived node;
* when activating, retraining, calling the wizard of the derived node or its ports.

The base node is unchanged in the case of overdetermination of properties and settings of the derived nodes. If the base node settings are changed, only the settings that have not been overdetermined by a user will be updated in the derived node. The list of the changes prohibited in the case of the derived node overdetermination is provided below.

The list of the changes prohibited in the case of the derived node overdetermination:

| Inherited node | Object | List of Prohibited Operations |
| :-------- |:-------- | :-------- |
| All nodes | Columns and variables in the input and output ports | <ul> <li>Delete</li> <li>Change data type</li> <li>Change name</li> </ul> |
| Supernode | Supernode nodes | <ul> <li>Replacement of the connection node with the inherited node</li> </ul> |
| | Connections | <ul><li>Delete</li></ul> |
| | Derived components | <ul><li>Deletion, replacement of the base node</li></ul> |
| Nodes with the variable number of ports, including the Supernode | Input and output ports | <ul><li>Delete</li> <li>Change type</li> <li>Change name</li></ul> |

Чтобы принудительно сбросить все внесенные в производный узел изменения и сделать производный и базовый узлы идентичными, следует в контекстном меню производного узла выбрать пункт *Восстановить исходную конфигурацию узла*.

## Creation and Configuration of the Derived Component

Для создания Производного компонента необходимо выбрать базовый узел (Подмодель) и в его контекстном меню выбрать пункт ![](../images/icons/toolbar-controls/derive-node_default.svg) *Создать производный компонент*. The same command is available on the toolbar of the Workflows construction area.

Откроется окно *Настройка производного компонента*, где определяются:

* **Caption**: name of the derived component.
* **Description**: additional information on the component.
* **Visibility area**: availability of the Derived Component on different Package levels is set by the radio button:
   * Private (available only in the current Module);
   * Частично закрытый (доступен только внутри текущего Модуля и его Подмоделей);
   * Public (available only in the current Package);
   * Открытый (доступен во всех пакетах) — для использования Производного компонента из другого пакета необходимо создать Ссылку на Пакет (см. [модификатор доступа](./access-modifier.md)), в котором Производный компонент был создан.

После сохранения настроек Производный компонент будет доступен в панели *Производные компоненты*. Для создания на его основе узла Сценария его необходимо перенести в область построения Сценария. На созданных таким образом узлах отображается кнопка ![](../images/icons/toolbar-controls/show-derived-nodes_default.svg)
"Показать базовый узел", которая позволяет найти базовый узел (в случае, если он расположен в пределах текущей области построения Сценария).

Отредактировать настройки созданных в пакете Производных компонентов можно в разделе *Компоненты панели навигации*: Панель Навигация -> Пакеты -> Текущий пакет -> Компоненты. При выборе данного раздела открывается окно со списком Производных компонентов, в котором доступны следующие действия:

* **Действия панели инструментов раздела:**
   * ![](../images/icons/toolbar-controls_18x18\toolbar-controls_18x18_group-list_default.svg) Группировать (Alt+G) — список Производных компонентов группируется по типу базового узла (*Импорт, Трансформация, Управление, Исследования и т.д.*);
   * ![](../images/icons/toolbar-controls/setup_default.svg) Настроить — открывается окно настройки выделенного в списке Производного компонента;
   * ![](../images/icons/toolbar-controls/delete_default.svg) Delete: delete the Derived Component selected in the list.
* **Actions of the list items context menu :**
   * ![](../images/icons/toolbar-controls/setup_default.svg) Configure: the configuration window of the selected Derived Component will be opened.
   * ![](../images/icons/toolbar-controls/delete_default.svg) Delete: delete the selected Derived Component.
   * Перейти к базовому узлу — осуществляется переход к расположению базового узла в сценарии.
   * Update: update the list of the Derived Components.
