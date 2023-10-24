---
description: Компонент Выполнение узла в Loginom. Повторное использование имеющегося узла. Базовый узел. Мастер настройки.
---
# ![Node Execution](./../../images/icons/components/script-deductor_default.svg)Node Execution

The component enables to use already existing workflow node for repeated processing of the new data.

**Base node**: the node or [Supernode](./supernode.md), settings and algorithm of which are to be used repeatedly. It can be located outside the current *Supernode*, *Workflow*, *Module* or *Package*.

Добавить *Выполнение узла* в сценарий можно двумя способами:

* Из стандартных компонентов: методом Drag-and-Drop, перенеся компонент в область построения *Сценария*, или через контекстное меню, нажав правой кнопкой мыши по компоненту.
* Из [производных компонентов](../../workflow/derived-component.md) теми же методами.

При добавлении узла *Выполнение узла* от производного компонента его метка формируется следующим образом: `Метка производного компонента (выполнение)`.

Исключение составляет случай, когда создаётся *Выполнение узла* по производному компоненту, у которого запрещено создание производных узлов. В этом случае узел получает такую же метку, как и компонент.

При настройке узла *Выполнение узла* всегда создается производный компонент по базовому узлу. То есть *Выполнение узла* может ссылаться только на компонент. Создаваемые таким образом производные компоненты по умолчанию имеют [область видимости](../../workflow/access-modifier.md) *Закрытый*, а настройка *Производные узлы* отключена.

## Ports

When creating, the node does not have [ports](./../../workflow/ports/README.md). Upon configuration, the node has the ports identical to ports of the base node. It is possible to redefine settings of ports, however, it should be noted that reconfiguration of the input ports can cause incompliance of the new input data with the requirements of the workflow inherited from the base node, and, as a consequence, execution error.

## Wizard

The radio button enables to select the workflow node that is planned to be repeatedly used for processing of the new data. The nodes *available* for selection are dispalyed in the form of a tree.

Дерево узлов имеет две корневые ветки:

* **Узлы текущего модуля** — содержит перечень узлов модуля, в котором в данный момент настраивается *Выполнение узла*;
* **Компоненты** — содержит текущий пакет и перечень внешних пакетов, на которые настроены ссылки и их производные компоненты с областью видимости *Открытый*.

> **Important**: The nodes from the external packages, other workflows and supernodes will be displayed in the tree only on condition of access granted to them by their [access modifier](./../../workflow/access-modifier.md).

The wizard interface enables to search for the nodes in the tree by means of filters, namely, by name and node comment.

**Сохранять конфигурацию выбранного узла** — параметр отвечает за сохранение собственной конфигурации внутреннего компонента, в случае если она отличается от исходной. По умолчанию не установлен.

The *Node execution* component cannot repeatedly use the [Loop](./loop.md) and [Reference node](./reference-node.md) components.


-----

**Note**:

* When executing the node, the base node is not executed.
* [Model overfitting](./../../workflow/training-processors.md) inherited from the base node is possible. However, the base node model will be unchanged.
