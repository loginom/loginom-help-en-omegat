---
description: Работа предпросмотра в Loginom. Руководство пользователя по быстрому просмотру данных. Представление данных в Loginom для быстрого просмотра и ознакомления. Фильтрация информации.
---
# Preview

It provides the limited amount of data (not more than 100 first rows of possible resulting data set) for information purposes in the form of the flat two-dimensional table. Filtration, change of data view format and search are not available. Real numbers (with floating point) are displayed with two places after decimal separator. The data in the Date/time format is displayed without seconds (in this case, the abbreviated format of the real numbers and data representation in the Date/time format is used only for the visualization purposes).

It is available in [Import from database](./../../integration/import/database.md), [Import from 1С](./../../integration/import/1c-db.md), [JavaScript](./../../processors/programming/java-script/README.md), [Python](./../../processors/programming/python/README.md) wizards. When pressing *Preview* button, it is possible to activate all input ports, with the exception of the *Connections* connected with the current node. This window is opened when the activation is successfully finished.

When the cursor is hovered over the field caption, ![ ](./../../images/icons/common/toolbar-controls/down_default.svg) button with the additional functions will appear:

* ![ ](./../../images/icons/common/toolbar-controls/low-to-hight_default.svg) **Sort ascending** / ![ ](./../../images/icons/common/toolbar-controls/hight-to-low_default.svg) **Sort descending**: sorting enables to sort data by the selected field in ascending or descending order. It is performed only for the current data set according to the set limits.
* ![ ](./../../images/icons/grid/columns.svg) **Columns**: disable/enable display by the defined columns.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Freeze column** / ![ ](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unfreeze column**: the frozen field is fixed in the left part of the window, and it is separated from the unfrozen part with the vertical line.

It is possible to move the fields relative to each other, and it is also possible to move them from the zone of frozen fields to the unfrozen ones and vice versa.

Field settings are reset when closing the window.

In *Preview* of the *JavaScript* node it is possible to control the script operation in ![console](./../../images/icons/components/javascript/console.svg) of [Code debugging console](./../../processors/programming/java-script/console.md).

In *Preview* of the *Python* node to display messages of *standard display* (`sys.stdout`) and *standard display of errors* (`sys.stderr`), ![console](./../../images/icons/components/javascript/console.svg) [Output](./../../processors/programming/python/console.md) panel is available.

It is possible to close *Preview* of *JavaScript* and *Python* nodes using *X* button, in *Import from database* node, *Close* button is also available.
