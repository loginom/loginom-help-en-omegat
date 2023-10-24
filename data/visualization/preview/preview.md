---
description: Работа предпросмотра в Loginom. Руководство пользователя по быстрому просмотру данных. Представление данных в Loginom для быстрого просмотра и ознакомления. Фильтрация информации.
---
# Preview

It provides the limited amount of data (not more than 100 first rows of possible resulting data set) for information purposes in the form of the flat two-dimensional table. Filtration, change of data view format and search are not available. Вещественные числа (с плавающей точкой) отображаются с двумя знаками после десятичного разделителя, данные в формате Дата/время отображаются без указания секунд (при этом сокращенный формат представления вещественных чисел и данных в формате Дата/время используется только для визуализации).

Доступен в мастерах [Импорт из базы данных](./../../integration/import/database.md), [Импорт из 1С](./../../integration/import/1c-db.md), [JavaScript](./../../processors/programming/java-script/README.md), [Python](./../../processors/programming/python/README.md). При нажатии на кнопку *Предпросмотр* активируются все входные порты, кроме непосредственно соединенных с текущим узлом *Подключений*. This window is opened when the activation is successfully finished.

When the cursor is hovered over the field caption, ![ ](./../../images/icons/common/toolbar-controls/down_default.svg) button with the additional functions will appear:

* ![ ](./../../images/icons/common/toolbar-controls/low-to-hight_default.svg) **Sort ascending** / ![ ](./../../images/icons/common/toolbar-controls/hight-to-low_default.svg) **Sort descending**: sorting enables to sort data by the selected field in ascending or descending order. It is performed only for the current data set according to the set limits.
* ![ ](./../../images/icons/grid/columns.svg) **Columns**: disable/enable display by the defined columns.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Freeze column** / ![ ](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unfreeze column**: the frozen field is fixed in the left part of the window, and it is separated from the unfrozen part with the vertical line.

It is possible to move the fields relative to each other, and it is also possible to move them from the zone of frozen fields to the unfrozen ones and vice versa.

Field settings are reset when closing the window.

В *Предпросмотре* узла *JavaScript* есть возможность контролировать работу скрипта в ![консоль](./../../images/icons/components/javascript/console.svg) [Консоли отладки кода](./../../processors/programming/java-script/console.md).

В *Предпросмотре* узла *Python* для отображения сообщений *стандартного вывода* (`sys.stdout`) и *стандартного вывода ошибок* (`sys.stderr`) доступна панель ![консоль](./../../images/icons/components/javascript/console.svg) [Вывод](./../../processors/programming/python/console.md).

Закрыть *Предпросмотр* узлов *JavaScript* и *Python* можно кнопкой *X*, в узле *Импорт из базы данных* также доступна кнопка *Закрыть*.
