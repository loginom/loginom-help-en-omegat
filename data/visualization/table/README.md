---
description: Построение таблиц в Loginom. Справка по настройке представления данных в виде двумерных таблиц. Использование возможности фильтрации, сортировки, изменение формата отображения данных и поиска.
---
# ![](./../../images/icons/common/view_types/browse_default.svg) Table

It enables to display the data for users in the form of the flat two-dimensional table with possibility of filtering, sorting, changing of data view format and search.

## Interface

### Navigation

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* Перейти на ![](./../../images/icons/common/toolbar-controls/prev_default.svg) предыдущую![](./../../images/icons/common/toolbar-controls/next_default.svg) следующую страницу.
* Перейти на ![](./../../images/icons/common/toolbar-controls/first_default.svg) первую![](./../../images/icons/common/toolbar-controls/last_default.svg) последнюю страницу.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons.
На одной странице отображается `1 000 000` записей. Когда записей меньше `1 000 000`, горячие клавиши, управляющие страницами, не активны.

### Operations

* ![](./../../images/icons/common/toolbar-controls/grid-row-no_default.svg) **Номер строки** — показать/скрыть сквозной номер строки.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_rec-no_default.svg)
   **Номер записи** — показать/скрыть порядковый номер записи.
* ![](./../../images/icons/common/toolbar-controls/show-data-type_default.svg) **Типы данных** — показать/скрыть типы данных.
* ![](./../../images/icons/common/toolbar-controls/header-word-wrap_default.svg) **Многострочные заголовки** — включить/выключить перенос строк в заголовке таблицы.
* ![](./../../images/icons/common/toolbar-controls/null-count_default.svg) **Показать значения null** — показать/скрыть null-значения.
* ![](./../../images/icons/common/toolbar-controls/format_default.svg) **Формат** — открыть [окно настройки формата](./format.md) отображения данных.
* ![](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) **Сортировка** — открыть [окно настройки сортировки](./sorting.md) данных по столбцам.
* ![](./../../images/icons/common/toolbar-controls/filter_default.svg) **Фильтр** — открыть [окно настройки фильтрации](./filter.md).
* ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) ![](./../../images/icons/common/toolbar-controls/down_default.svg)
   **Поиск** — ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) найти значение; ![](./../../images/icons/common/toolbar-controls/down_default.svg) открыть [окно настройки поиска](./search.md).
* ![](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Детализация** — показать/скрыть детализацию по строке таблицы.
* ![](./../../images/icons/common/toolbar-controls/export_default.svg) **Экспорт** — экспортировать таблицу в файл выбранного формата (XLS или HTML).
* **Go to row**: go to the row with the set number (available in the context men).

%spoiler%Hotkeys:%spoiler%
* %kbd Ctrl Left %  — перейти на предыдущую страницу;
* %kbd Ctrl Right % — перейти на следующую страницу;
* %kbd Alt 1 % — %kbd Alt 8 % — перейти на страницу с номером;
* %kbd Ctrl G % — перейти к строке;
* %kbd Ctrl F % — поиск текущего выделенного значения;
* %kbd F3 % — перейти к следующему найденному значению;
* %kbd Home % — перейти на первую колонку строки таблицы;
* %kbd Home Alt % — перейти на первую строку таблицы;
* %kbd End % — перейти на последнюю колонку строки таблицы;
* %kbd End Alt % — перейти на последнюю строку таблицы;
* %kbd Ctrl Up % — переместить строку в Детализации вверх;
* %kbd Ctrl Down % — переместить строку в Детализации вниз.

%/spoiler%

## Additional Information

* **#**: number of row in the table.
* **№**: row number in the source data set (for example, after filtration).

It is possible to configure sorting by clicking on the columns headers in the visualizer as such.

Value of each cell can be copied in the text format by pressing Ctrl+C keys combination.

There is ![](./../../images/icons/common/toolbar-controls/down_default.svg) button near the header of each column. Its pressing enables to call the drop-down menu. It enables to hide/display the column and also fix the column or remove such fixing.

Order of columns can be changed by dragging holding down the left mouse button on the header of the moved column.
