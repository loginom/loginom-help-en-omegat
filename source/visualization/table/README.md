---
description: Построение таблиц в Loginom. Справка по настройке представления данных в виде двумерных таблиц. Использование возможности фильтрации, сортировки, изменение формата отображения данных и поиска.
---
# ![](./../../images/icons/common/view_types/browse_default.svg) Таблица

Позволяет представить данные для пользователя в виде плоской двумерной таблицы с возможностью фильтрации, сортировки, изменения формата отображения данных и поиска.

## Интерфейс

### Навигация

Навигация по таблице осуществляется при помощи мышки и панели навигации в нижней части визуализатора:

* Перейти на ![](./../../images/icons/common/toolbar-controls/prev_default.svg) предыдущую![](./../../images/icons/common/toolbar-controls/next_default.svg) следующую страницу.
* Перейти на ![](./../../images/icons/common/toolbar-controls/first_default.svg) первую![](./../../images/icons/common/toolbar-controls/last_default.svg) последнюю страницу.

Для перехода на определённую страницу необходимо ввести её номер в поле ввода, расположенное между кнопками навигации.
На одной странице отображается `1 000 000` записей. Когда записей меньше `1 000 000`, горячие клавиши, управляющие страницами, не активны.

### Операции

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
* **Перейти к строке** — перейти к строке с заданным номером (доступно в контекстном меню).

%spoiler%Горячие клавиши:%spoiler%
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

## Дополнительная информация

* **#** — номер строки в таблице;
* **№** — номер строки в исходном наборе данных (например, после фильтрации).

Настроить сортировку можно, щёлкая на заголовки столбцов непосредственно в самом визуализаторе.

Значение каждой ячейки можно скопировать в текстовом формате, нажав комбинацию клавиш Ctrl+C.

Рядом с заголовком каждого столбца есть кнопка ![](./../../images/icons/common/toolbar-controls/down_default.svg), нажатием на которую вызывается выпадающее меню. Через него можно скрыть/отобразить столбец, а также зафиксировать или снять фиксацию со столбца.

Порядок столбцов можно менять перетаскиванием, удерживая левую кнопку мыши на заголовке перемещаемого столбца.
