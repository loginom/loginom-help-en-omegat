# Start of Work

To solve the analysis tasks, [**Loginom**](https://loginom.ru) allows for data import from different sources and application of the required processing algorithms. It is possible to view results in the system or to export them to the external data receivers.

Thus, the platform can be used both for creation of indepenent analytical solutions, and for development of modules integrated with external systems.

One of the main concepts on which the [**Loginom**](https://loginom.ru) platform is based is the [Workflow](./first-scenario.md).

The **Workflow** is a sequence of actions that must be performed for data analysis. It is a combination of data processing nodes configured by a user to solve particular tasks.

The workflow node performs a separate operation with data. A list of possible operations is represented by a number of ready*components*.

The processing sequence is determined by connection of the previous workflow node output and input of the subsequent one. The handler input and output are *input* and *output [ports](../scenario/ports/README.md)*.

![Workflow example](./readme-1.png)

The workflow nodes are created from 2 types of components :

* **Standard components** are provided by the platform.
* **Derived components** are created and configured by users.

The derived components can be created from combination of the workflow nodes implementing the random processing logics.

Thus, a set of tools for implementation of different data processing logics is not limited by standard platform components, and it can be expanded by users.

The [supernode](../processors/control/submodel.md) is most commonly used to create the derived component.

The supernode is a special node that can include other workflow nodes. Random logics can be implemented in the supernode. At the same time, the workflow handler can consider it as the "[black box](https://wiki.loginom.ru/articles/black-box.html)". Подмодель принимает информацию через входные порты, производит обработку и выдает результат на выходные порты. Входные и выходные порты задаются пользователем.

На рисунке «Пример сценария» узел [«ABC-анализ»](https://wiki.loginom.ru/articles/abc-analysis.html) является производным компонентом — подмоделью.

![Узлы подмодели «ABC-анализ».](./readme-2.png)

В состав подмодели могут также включаться и другие подмодели. Вложенность подмоделей друг в друга не ограничена.

Виды портов узлов сценария:

<table>
    <tr>
        <th align="left" width="150">Порт</th>
        <th align="left">Описание</th>
    </tr>
    <tr>
        <td><img src="../images/icons/app/node/ports/inputs/table_inactive.svg"> Таблица</td>
        <td>Представляет собой структурированный набор данных, где все данные упорядочены в двумерную структуру, состоящую из столбцов и строк. В ячейках такой таблицы содержатся элементы данных: строки, числа, даты, логические значения.</td>
    </tr>
    <tr>
        <td><img src="../images/icons/app/node/ports/inputs/variable_inactive.svg"> Переменные</td>
        <td>Представляют собой объекты, содержащие только одно значение. С помощью специальных обработчиков имеется возможность преобразовать данные из таблиц в переменные и обратно.</td>
    </tr>
     <tr>
        <td><img src="../images/icons/app/node/ports/inputs/tree_inactive.svg"> Дерево</td>
        <td>Представляет собой набор данных в иерархической древовидной структуре.</td>
    </tr>
    <tr>
        <td><img src="../images/icons/app/node/ports/inputs/link_inactive.svg"> Подключения</td>
        <td>Определяют настройки для работы с внешними источниками и приемниками данных.</td>
    </tr>
</table>

Поскольку таблицы, переменные и подключения имеют разную структуру, то соответствующие им порты не могут быть соединены друг с другом и имеют разное обозначение.

Количество входов и выходов узла варьируется в зависимости от функционала. Входы узла могут настраиваться автоматически (при подключении связи) или вручную.
