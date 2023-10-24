---
description: Компонент Дерево данных в Loginom. Общие сведения. Корневой узел. Дочерний узел. Родительский узел. Признак Контейнер. Признак Массив.
---

### Data Tree
Tree: the data structure in the form of a set of connected nodes. The first tree node is called a root. There is always only one root node. If the root is connected with another root, it is a parent root, and the connected root is called a chid root.

The tree nodes can have the **container** and **array** indicators.

**Container** is a node that can include child nodes (and there can be 0 child nodes) but it cannot have a value. It is impossible to set the data type and kind for the node-container. The root node is always a container.

The **array** indicator shows that more than one instance of such node can be included into one parent node. The minimum number of the node instances is equal to 0, and it cannot be configured. The only exception is the root node. The minimum number of its instances is equal to 0 if it is an array, and 1 if it is not an array.

Древовидные данные можно передавать на вход и выход узлов (аналогично набору данных и переменным) через порт соответствующего типа, а также передавать в опубликованный пакет через Интегратор (см. [Web Services](./../../integration/web-services/README.md)).