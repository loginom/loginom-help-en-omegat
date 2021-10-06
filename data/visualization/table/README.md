# ![](../../images/icons/view_types/browse_default.svg) Table

Позволяет представить данные для пользователя в виде плоской двумерной таблицы с возможностью фильтрации, сортировки, изменения формата отображения данных и поиска.

## Interface

### Navigation

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* Перейти на ![](../../images/icons/toolbar-controls/prev_default.svg) предыдущую/![](../../images/icons/toolbar-controls/next_default.svg) следующую страницу;
* Перейти на ![](../../images/icons/toolbar-controls/first_default.svg) первую/![](../../images/icons/toolbar-controls/last_default.svg) последнюю страницу.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons.
50,000 records are displayed on one page.

### Operations

* ![](../../images/icons/toolbar-controls/grid-row-no_default.svg) **Номер строки** — показать/скрыть сквозной номер строки;
* ![](../../images/icons/toolbar-controls/show-data-type_default.svg) **Типы данных** — показать/скрыть типы данных;
* ![](../../images/icons/toolbar-controls/null-count_default.svg) **Показать значения null** — показать/скрыть null-значения;
* ![](../../images/icons/toolbar-controls/format_default.svg) **Формат** — открыть [окно настройки формата](./format.md) отображения данных;
* ![](../../images/icons/toolbar-controls/sort-asc_default.svg) **Сортировка** — открыть [окно настройки сортировки](./sorting.md) данных по столбцам;
* ![](../../images/icons/toolbar-controls/filter_default.svg) **Фильтр** — открыть [окно настройки фильтрации](./filter.md);
* ![](../../images/icons/toolbar-controls/zoom_default.svg) ![](../../images/icons/toolbar-controls/down_default.svg) **Поиск** — ![](../../images/icons/toolbar-controls/zoom_default.svg) найти значение; ![](../../images/icons/toolbar-controls/down_default.svg) открыть [окно настройки поиска](./search.md);
* ![](../../images/icons/toolbar-controls/toggle-left-panel_default.svg) **Детализация** — показать/скрыть детализацию по строке таблицы;
* ![](../../images/icons/toolbar-controls/export_default.svg) **Экспорт** — экспортировать таблицу в файл выбранного формата (XLS или HTML);
* **Перейти к строке** — перейти к строке с заданным номером (доступно в контекстном меню).

%spoiler%Hotkeys:%spoiler%

* **Ctrl + Left**: go to the previous page;
* **Ctrl + Right**: go to the next page;
* **Alt + 1** — **Alt + 8** — перейти на страницу с номером;
* **Ctrl + G** — перейти к строке;
* **Ctrl + F**: search for the current selected value;
* **F3** — перейти к следующему найденному значению;
* **Home** — перейти на первую колонку строки таблицы;
* **Home + Alt** — перейти на первую строку таблицы;
* **End** — перейти на последнюю колонку строки таблицы;
* **End + Alt** — перейти на последнюю строку таблицы;
* **Ctrl + Up** — переместить строку в Детализации вверх;
* **Ctrl + Down** — переместить строку в Детализации вниз.

%/spoiler%

## Additional Information

* **#** — номер строки в таблице;
* **№** — номер строки в исходном наборе данных (например, после фильтрации).

It is possible to configure sorting by clicking the columns headers in the visualizer as such.

Значение каждой ячейки можно скопировать в текстовом формате, нажав комбинацию клавиш Ctrl+C.

Рядом с заголовком каждого столбца есть кнопка ![](../../images/icons/toolbar-controls/down_default.svg), нажатием на которую вызывается выпадающее меню. Через него можно скрыть/отобразить столбец, а также зафиксировать или снять фиксацию со столбца.

Порядок столбцов можно менять перетаскиванием, удерживая левую кнопку мыши на заголовке перемещаемого столбца.
