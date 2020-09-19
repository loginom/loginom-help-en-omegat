# ![Reference Node](../../images/icons/controls/reference_link.svg) Reference Node

Reference node enables to receive results of processing (execution) of the other node that can be located outside the current [Supernode](./submodel.md), [Workflow](../../scenario/README.md), *Module* or *Package*. As opposed to the [Node execution](../../processors/control/execute-node.md) component, the *Reference node* component does not accept input data, and it can be used only as source of the data from other nodes. According to the strategy of [decomposition](../../quick-start/design-principles.md#dekompozitsiya) of the complex analytic solution that can consist of several *Workflows* or *Packages*, it performs the task of data transfer between its independent blocks.

## Ports

When creating, the *Reference node* does not have [ports](../../scenario/ports/README.md). Upon the node configuration, the output ports of the data source node are displayed. Configuration of these ports is available only in the source node.

## Wizard

В окне мастера в виде дерева отображаются доступные для создания ссылки узлы. Для удобства навигации в дереве отдельно представлены узлы текущего модуля и все доступные для ссылки узлы. Доступность узлов определяется их видимостью (см. следующий раздел "Видимость узлов"). Необходимо выбрать один из узлов, выходные данные которого требуется получить в текущем месте сценария.

Интерфейс мастера предоставляет возможность осуществлять поиск узлов в общем списке с помощью фильтров: по имени и комментарию узла.

## Видимость узлов

Узлы, находящиеся за пределами текущей *Подмодели*, *Сценария*, *Модуля* или *Пакета*, по умолчанию недоступны для выбора. Для настройки видимости узла необходимо установить соответствующий [модификатор доступа](../../scenario/access-modifier.md). Для ссылки на узлы другого *Пакета* необходимо в текущем *Пакете* создать [ссылку на другой Пакет](../../scenario/link-to-packet.md).

> **Важно**: При выполнении *Узла-ссылки* выполняется узел, являющийся источником ссылки.