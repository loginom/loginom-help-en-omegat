---
description: Основная таблица с дубликатами и противоречиями в Loginom. Справка по работе с таблицей. Знакомство с интерфейсом, расшифровка цветовой индикации, выделение дубликатов, навигация.
---
# Main Table

The table displays duplicates and contradictions in the source data set:

![Table of duplicates and contradictions.](./images/duplicates-main-table.png)

> **Note**: "Duplicate" and "Contradiction" columns are hidden by default after the first visualizer start. To display the hidden columns, it is required to select "Duplicate" and/or "Contradiction" checkboxes in the ![](./../../images/icons/grid/columns.svg) "Columns" drop-down list.

## Color-Coded Indication

The following rows are highlighted by specific color in the table:

* ![](./images/duplicates-color.png) Duplicates;
* ![](./images/contradictions-color.png) Contradictions;
* ![](./images/duplicates-contradictions-color.png) Duplicates and contradictions.

Headers of "Duplicate indicator", "Duplicate group", "Contradiction indicator", "Contradiction group" columns are highlighted by the same color as corresponding rows.

Headers of the columns marked in the component as the input and output ones are highlighted by color (gray gradations). Names of these columns are displayed in semibold type. Besides, the input fields are underlined with the ![](./images/input-color.png) color and the output ones are underlined with the ![](./images/output-color.png) color.

## Selection of Contradictions

When selecting the row with contradiction, other contradictions from this group that differ from the selected one (only the first difference) will be highlighted with color:

![Example of selection of contradiction group.](./images/duplicates-main-table-select-contradiction.png)

## Navigation

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* Go to the ![](./../../images/icons/common/toolbar-controls/prev_default.svg) previous/![](./../../images/icons/common/toolbar-controls/next_default.svg) next page.
* Go to the ![](./../../images/icons/common/toolbar-controls/first_default.svg) first/![](./../../images/icons/common/toolbar-controls/last_default.svg) last page.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons. 1,000,000 records are displayed on one page.

%spoiler%Hotkeys:%spoiler%

* %kbd Ctrl % + %kbd Left %: go to the previous page.
* %kbd Ctrl % + %kbd Right %: go to the next page.
* %kbd Alt % + %kbd 1 % —  %kbd Alt % + %kbd 8 %: go to the page with number.
* %kbd Ctrl % + %kbd G %: go to the row.
* %kbd Ctrl % + %kbd F %: search for the current selected value.
* %kbd F3 %: go to the next found value.
* %kbd Home %: go to the first column of the table row.
* %kbd Home % + %kbd Alt %: go to the first table row.
* %kbd End %: go to the last column of the table row.
* %kbd End % + %kbd Alt %: go to the last table row.
* %kbd Ctrl % + %kbd Up %: move up the row in Detailing.
* %kbd Ctrl % + %kbd Down %: move down the row in Detailing.

%/spoiler%

## Additional Information

* **#**: number of row in the table.
* **№**: row number in the source data set (for example, after filtration).

It is possible to configure sorting by clicking on the columns headers in the visualizer as such.

Value of each cell can be copied in the text format by pressing Ctrl+C keys combination.

There is ![](./../../images/icons/common/toolbar-controls/down_default.svg) button near the header of each column. Its pressing enables to call the drop-down menu. It enables to hide/display the column and also fix the column or remove such fixing.

Order of columns can be changed by dragging holding down the left mouse button on the header of the moved column.