---
description: Создание ссылки на внешний пакет в аналитической платформе Loginom. Узел-ссылка. Выполнение узла. Производный компонент. Общий пакет.
---
# References to Other Packages

This mechanism is required for use of objects and/or receipt of the data sets from other packages. Workflow nodes, connections, derived components can be used as such objects. To make these objects available in other packages, "Public" visibility area must be set for them (available in all packages) which is set by the following object parameter: «[Access modifier](./access-modifier.md)».

It is required to perform the following actions when creating the reference:

1. Select "References" item on the "Navigation" toolbar.
2. Select "Add" item in the context menu of the "References" item. "Add reference to package" window will be opened.
3. Set the path to the package access to which objects it is required to receive in "Path to the package file" parameter.
4. Press "Apply".

It is possible to perform the following actions upon creation of the Reference to the external Package:
* Refer to its objects using [Reference node](./../processors/control/reference-node.md), [Node execution](./../processors/control/execute-node.md) nodes.
* Use the [Derived components](./derived-component.md) created in it.

The first two are used if it is not required to change the data processing logics, the latter one if correction is required for the algorithm.

Для открытых Пакетов допустимо использование всех вариантов, для закрытых используются только Узел-ссылка и Выполнение узла.

## Additional Information
Recurring fragments can occur in the components of the connected Package. Separately they are of no interest and are designated for use in the connected Package. They are **service components**. As a rule, they are nested relative to the main components of the connected Package, and prefix is included into their name in the form of the double underscore. It is not possible to disable their visibility.

## Общий пакет

При открытии пакета, ссылающегося на другой пакет (далее — внешний пакет), и который не открыт в данной сессии, последний будет загружен как *Общий пакет*. Это можно увидеть в [Администрировании](./../admin/README.md) на странице [Диспетчер](./../admin/dispatcher.md). Пакет будет находится в *Общих* пока будет активна хотя бы одна ссылка из других пакетов.

> **Важно:** При работе с *Узлом-ссылкой*, ссылающейся на узел другого пакета, следует помнить, что запрошенные в *общем пакете* данные будут загружены/рассчитаны один раз.
> * При этом, все соответствующие узлы будут заблокированы до тех пор, пока расчеты не завершатся!
> * При повторном запросе будут возвращены ранее полученные данные, то есть пересчет производится не будет!

Если необходимо произвести пересчет данных, можно:

* Закрыть все пакеты, ссылающиеся на внешний и загруженный как *общий* пакет.
* Либо изменить дату создания внешнего пакета (например, сохранив его). Это приведет к появлению второй, но уже обновленной копии в Общих пакетах.
* Либо открыть внешний пакет в текущей пользовательской сессии. Тогда он не будет открыт как *общий*.

После этого рабочий пакет необходимо открыть заново.

%spoiler%Example:%spoiler%

![Пример работы с внешним пакетом lib](./common-package.png)

Здесь у нескольких пользователей открыты пакеты ссылающиеся на внешний пакет *lib*.

Первый пользователь (*Albert*) открыл внешний пакет *lib* и, следом, рабочий. Его внешний пакет будет работать с данными в своей сессии, независимо от открытых пакетов других пользователей.

Другие пользователи (*Alisa* и *Jeanette*) открыли лишь рабочие пакеты в своих сессиях. Поэтому внешний пакет *lib* загрузился как *общий* (счетчик отображает количество сессий, которые ссылаются на данный пакет), и все обращения этих пользователей будут направлены к *общему* пакету. Результаты в соответствующих Узлах-ссылках будут идентичными у данных пользователей в их сессиях.

%/spoiler%
