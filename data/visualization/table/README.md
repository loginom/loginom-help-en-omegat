---
description: Построение таблиц в Loginom. Справка по настройке представления данных в виде двумерных таблиц. Использование возможности фильтрации, сортировки, изменение формата отображения данных и поиска.
---
# ![](./../../images/icons/common/view_types/browse_default.svg) Table

It enables to display the data for users in the form of the flat two-dimensional table with possibility of filtering, sorting, changing of data view format and search.

## Interface

### Navigation

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* Go to the ![](./../../images/icons/common/toolbar-controls/prev_default.svg) previous![](./../../images/icons/common/toolbar-controls/next_default.svg) next page.
* Go to the ![](./../../images/icons/common/toolbar-controls/first_default.svg) first![](./../../images/icons/common/toolbar-controls/last_default.svg) last page.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons.
`1,000,000` records are displayed on one page. When there are less than `1,000,000` records, the hotkeys that control pages are not active.

### Operations

* ![](./../../images/icons/common/toolbar-controls/grid-row-no_default.svg) **Row number**: show/hide continuous row number.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_rec-no_default.svg)
   **Record number**: show/hide index record number.
* ![](./../../images/icons/common/toolbar-controls/show-data-type_default.svg) **Data types**: show/hide data types.
* ![](./../../images/icons/common/toolbar-controls/header-word-wrap_default.svg) **Multiline headers**: enable/disable break of lines in the table header.
* ![](./../../images/icons/common/toolbar-controls/null-count_default.svg) **Show null values**: show/hide null values.
* ![](./../../images/icons/common/toolbar-controls/format_default.svg) **Format**: open [format configuration window](./format.md) of data view.
* ![](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) **Sort**: open data [sorting configuration window](./sorting.md) by columns.
* ![](./../../images/icons/common/toolbar-controls/filter_default.svg) **Filter**: open [filtration configuration window](./filter.md).
* ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) ![](./../../images/icons/common/toolbar-controls/down_default.svg)
   **Search** — ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) find the value; ![](./../../images/icons/common/toolbar-controls/down_default.svg) open [search configuration window](./search.md).
* ![](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Detailing**: show/hide detailing by the table row.
* ![](./../../images/icons/common/toolbar-controls/export_default.svg) **Export**: export table to the file of the selected format (XLS or HTML).
* **Go to row**: go to the row with the set number (available in the context men).

%spoiler%Hotkeys:%spoiler%
* %kbd Ctrl Left %: go to the previous page.
* %kbd Ctrl Right %: go to the next page.
* %kbd Alt 1 % — %kbd Alt 8 %: go to the page with number.
* %kbd Ctrl G %: go to the row.
* %kbd Ctrl F %: search for the current selected value.
* %kbd F3 %: go to the next found value.
* %kbd Home %: go to the first column of the table row.
* %kbd Home Alt %: go to the first table row.
* %kbd End %: go to the last column of the table row.
* %kbd End Alt %: go to the last table row.
* %kbd Ctrl Up %: move up the row in Detailing.
* %kbd Ctrl Down %: move down the row in Detailing.

%/spoiler%

## Additional Information

* **#**: number of row in the table.
* **№**: row number in the source data set (for example, after filtration).

It is possible to configure sorting by clicking on the columns headers in the visualizer as such.

Value of each cell can be copied in the text format by pressing Ctrl+C keys combination.

There is ![](./../../images/icons/common/toolbar-controls/down_default.svg) button near the header of each column. Its pressing enables to call the drop-down menu. It enables to hide/display the column and also fix the column or remove such fixing.

Order of columns can be changed by dragging holding down the left mouse button on the header of the moved column.
