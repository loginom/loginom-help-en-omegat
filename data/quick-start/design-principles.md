# Design Principles

The **Project** is a complex of workflows, files, data sources and other elements designated for solution of a particular analytical task.

The project can include several packages due to the fact that each package can provide its objects to other packages using the link mechanism.

## Structural Approach

The project construction is based on the *structural design* methodology— representation of an algorithm in the form of hierarchical structure of blocks.

Each block can be represented on its hierarchical level in the form of the "black box" performing its independent subtask. It is possible to change the subtask solution mechanism inside the "black box". But on the whole, the project is still operable and wil perform the set tasks.

The project designed in such a way has a clear and transparent structure. It allows for development and support of complex projects. It also helps to delegate solution of the selected subtasks.

The "top-down" design (from the general assignment of a task to separate subtasks) is typical of such approach. Solution of the set task is described at the first design step specifying independent subtasks. Subtasks are similarly described at the nest step with specification of the next level elements.

Thus, the project functions are specified at each stage. The process is repeated until definition of subtasks and algorithms solutions of which are obvious.

## Mechanism of the Repeated Use of Algorithms

Selection of the blocks solving independent subtasks allows for their repeated application in the similar tasks. Развитием идеи повторного использования ранее созданных алгоритмов является создание библиотек универсальных функций.

В Studio инструментом для создания таких функций являются *производные компоненты*. Создав один раз компонент «[ABC-анализа](https://wiki.loginom.ru/articles/abc-analysis.html)», его можно применять как в задаче сегментации товаров, так и в сегментации клиентской базы. Подзадача, решаемая компонентом проверки адресов, может применяться как в очистке данных, так и в задачах скоринга.

В производных компонентах реализуется *механизм наследования*, преимуществом которого является то, что он позволяет модифицировать созданный пользователем универсальный компонент лишь в одном месте — в библиотеке функций, и эти изменения автоматически произойдут во всех сценариях, где он применяется.

Однако не всегда удается встроить универсальный компонент в конкретный сценарий без внесения в него изменений. При этом изменить его в библиотеке функций нет возможности, поскольку сработает механизм наследования, и это может привести к ошибкам во всех сценариях, где он применяется.

Данную задачу решает *механизм переопределения*, позволяющий модифицировать производный компонент только в использующем его сценарии, при этом в библиотеке функций он останется неизменным.

## Декомпозиция

Структура Проекта может быть представлена в иерархическом виде:

* Проект может состоять из связанных между собой Пакетов — это возможно благодаря тому, что *каждый пакет может предоставлять свои объекты другим пакетам* через механизм ссылок.
* Пакет включает в себя Модули — декомпозиция пакета на уровне модулей.
* **Модуль** — сам по себе не содержит узлов обработки данных, но предоставляет отдельное пространство для Сценариев и [Подключений](../integration/connections/README.md) к различным источникам данных.
* **Сценарий** — содержит последовательность узлов обработки данных. Сценарий может:
   * Включать в себя подпрограммы — [Подмодель](../processors/control/submodel.md).
   * Получать данные от узлов из других сценариев и пакетов через механизм [Узел-ссылка](../processors/control/unit-link.md).
   * Использовать настройки и обученные модели узлов из других сценариев и пакетов через механизм [Выполнение узла](../processors/control/execute-node.md).
   * Использовать готовые алгоритмы обработки данных, созданные в других сценариях и пакетах через механизм [Производные компоненты](../scenario/derived-component.html).
* **Подмодель** — включает в себя другие узлы, предоставляя, таким образом, отдельное пространство для реализации произвольного алгоритма обработки данных. Подмодель в сценарии представлена в качестве узла, имеющего заданные пользователем входные и выходные порты. Может содержать в себе иерархию вложенных подмоделей. На базе подмодели может быть создан Производный компонент.
