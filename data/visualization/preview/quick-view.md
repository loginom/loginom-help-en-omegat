# ![ ](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) Быстрый просмотр данных

Представляет ограниченное количество данных для ознакомления в виде плоской двумерной таблицы. Filtration, change of data representation format and search are not available. Вещественные числа (с плавающей точкой) отображаются с двумя знаками после десятичного разделителя, данные в формате Дата/время отображаются без указания секунд.

Данный визуализатор доступен в любом активном выходном:

* ![ ](../../images/icons/app/node/ports/outputs/table_active.svg)   табличном порту;
* ![ ](../../images/icons/app/node/ports/outputs/variable_active.svg)  порту переменных;
* ![ ](../../images/icons/app/node/ports/outputs/tree_active.svg) порту дерева.

Открыть его можно:

* выбрав ![ ](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) **Быстрый просмотр…** из контекстного меню порта;
* двойным кликом по порту.


## Действия над полями

При наведении курсора к заголовку поля появится кнопка ![ ](../../images/icons/toolbar-controls/down_default.svg) с дополнительными функциями.

Возможности и ограничения у разных портов различаются:

| Port | Сортировка | Изменение видимости | Закрепление | Перемещение | Предел |
|:---|:--:|:--:|:--:|:--:|:---|
| Таблица | | • | • | • | 50 тысяч строк |
| Дерево | • | • | | | 10 тысяч дочерних узлов |
| Variables | • | | | | &nbsp; |

* ![ ](../../images/icons/toolbar-controls/low-to-hight_default.svg) **Sort ascending** / ![ ](../../images/icons/toolbar-controls/hight-to-low_default.svg) **Sort descending**: sorting enables to sort data by the selected field in ascending or descending order. It is performed only for the current data set according to the set limits.
* ![ ](../../images/icons/grid/columns.svg) **Столбцы** — позволяет изменить видимость (отключить/включить отображение) определенным столбцам.
* ![ ](../../images/icons/toolbar-controls/locked_default.svg) **Freeze column** / ![ ](../../images/icons/toolbar-controls/unlocked_default.svg) **Unfreeze column**: the frozen field is fixed in the left part of the window, and it is separated from the unfrozen part with the vertical line.

It is possible to move the fields relative to each other, and it is also possible to move them from the zone of frozen fields to the unfrozen ones and vice versa.

Field settings are reset when closing the window.

Закрыть *Быстрый просмотр* можно нажатием на кнопку *X* или *Закрыть*.

Если набор данных имеет более 50 полей, то в визуализаторе *Быстрый просмотр данных* для табличного порта будут отображены только первые 50. Количество отображаемых полей можно изменить с помощью дополнительной функции ![ ](../../images/icons/grid/columns.svg) *Столбцы*. В правом верхнем углу окна будет указано общее количество столбцов в наборе данных (см. рисунок). При наведении указателя мыши на эту область выводится подсказка о количестве отображаемых полей.

В левом нижнем углу окна *Быстрый просмотр данных* выводится общее количество строк в наборе, если все строки не помещаются в окне визуализатора (см. рисунок).

![Быстрый просмотр данных](./column_amt.png)