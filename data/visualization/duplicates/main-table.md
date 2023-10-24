---
description: Основная таблица с дубликатами и противоречиями в Loginom. Справка по работе с таблицей. Знакомство с интерфейсом, расшифровка цветовой индикации, выделение дубликатов, навигация.
---
# Main Table

Таблица отображает дубликаты и противоречия в исходном наборе данных:

![Таблица дубликатов и противоречий.](./images/duplicates-main-table.png)

> **Примечание**: колонки "Дубликат" и "Противоречие" — по умолчанию скрыты при первом запуске визуализатора. Для отображения скрытых столбцов необходимо в выпадающем списке ![](./../../images/icons/grid/columns.svg) "Столбцы" установить галочки напротив столбцов "Дубликат" и/или "Противоречие".

## Цветовая индикация

В таблице своим цветом выделяются строки:

* ![](./images/duplicates-color.png) Дубликаты;
* ![](./images/contradictions-color.png) Противоречия;
* ![](./images/duplicates-contradictions-color.png) Дубликаты и противоречия.

Заголовки колонок "Признак дубликата", "Группа дубликата", "Признак противоречия", "Группа противоречия" выделяются таким же цветом, как и соответствующие строки.

Заголовки колонок, помеченные в компоненте как входные и выходные, выделяются цветом (градации серого), имена этих колонок выделены полужирным шрифтом. Помимо этого, входные поля подчеркиваются ![](./images/input-color.png) цветом, а выходные надчеркиваются ![](./images/output-color.png) цветом.

## Выделение противоречий

При выделении строки с противоречием другие противоречия из этой группы, которые отличаются от выделенного (только первое отличие), будут отмечены цветом:

![Пример выделения группы противоречий.](./images/duplicates-main-table-select-contradiction.png)

## Navigation

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* Go to the ![](./../../images/icons/common/toolbar-controls/prev_default.svg) previous/![](./../../images/icons/common/toolbar-controls/next_default.svg) next page.
* Go to the ![](./../../images/icons/common/toolbar-controls/first_default.svg) first/![](./../../images/icons/common/toolbar-controls/last_default.svg) last page.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons. На одной странице отображается 1 000 000 записей.

%spoiler%Hotkeys:%spoiler%

* %kbd Ctrl % + %kbd Left % — перейти на предыдущую страницу;
* %kbd Ctrl % + %kbd Right % — перейти на следующую страницу;
* %kbd Alt % + %kbd 1 % —  %kbd Alt % + %kbd 8 % — перейти на страницу с номером;
* %kbd Ctrl % + %kbd G % — перейти к строке;
* %kbd Ctrl % + %kbd F % — поиск текущего выделенного значения;
* %kbd F3 % — перейти к следующему найденному значению;
* %kbd Home % — перейти на первую колонку строки таблицы;
* %kbd Home % + %kbd Alt % — перейти на первую строку таблицы;
* %kbd End % — перейти на последнюю колонку строки таблицы;
* %kbd End % + %kbd Alt % — перейти на последнюю строку таблицы;
* %kbd Ctrl % + %kbd Up % — переместить строку в Детализации вверх;
* %kbd Ctrl % + %kbd Down % — переместить строку в Детализации вниз.

%/spoiler%

## Additional Information

* **#**: number of row in the table.
* **№**: row number in the source data set (for example, after filtration).

It is possible to configure sorting by clicking on the columns headers in the visualizer as such.

Value of each cell can be copied in the text format by pressing Ctrl+C keys combination.

There is ![](./../../images/icons/common/toolbar-controls/down_default.svg) button near the header of each column. Its pressing enables to call the drop-down menu. It enables to hide/display the column and also fix the column or remove such fixing.

Order of columns can be changed by dragging holding down the left mouse button on the header of the moved column.