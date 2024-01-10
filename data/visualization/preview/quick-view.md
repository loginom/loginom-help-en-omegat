---
description: Справка по быстрому просмотру данных в Loginom. Отображение информации в виде двумерной таблицы, дерева или формы. Просмотр данных с выходного порта.
---
# ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) Quick Data View

It provides the limited amount of data for information purposes in the form of the flat two-dimensional table, tree or form. Filtration, change of data view format are not available. Real numbers (with floating point) are displayed with two places after decimal separator. The data in the date/time format is displayed without seconds.

> **Important:** Real numbers participate in the processing with the same number of places after decimal separator as in the source data set (or with the same number of places that has been determined at the previous processing stages), and they are displayed only with two places after decimal separator.  Аналогично и данные в формате Дата/время только в визуализаторе представлены в сокращенном формате.

This visualizer is available in any active output:

* ![ ](./../../images/icons/app/node/ports/outputs/table_active.svg) table port,
* ![ ](./../../images/icons/app/node/ports/outputs/variable_active.svg) port of variables,
* ![ ](./../../images/icons/app/node/ports/outputs/tree_active.svg) port of tree.

## Функционал Быстрого просмотра

Открыть *Быстрый просмотр* можно :

* кликнуть дважды левой кнопкой мыши по нужному активному порту,
* кликнуть правой кнопкой мыши по нужному порту и выбрать в контекстном меню ![ ](../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Быстрый просмотр**.

При первом запуске *Быстрый просмотр* открывается в виде модального окна.

> **Примечание.** В окне *Быстрого просмотра* набор данных может отображаться неполностью:
* for Google Chrome and Opera — 1 mln. records,
* for Firefox — 300 thous. records,
* for Microsoft Edge — 50 thous. records.

Для отображения полного набора можно воспользоваться визуализатором [Таблица](./../table/README.md).

## Operations

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_14.svg) **Закрепить внизу** — переносит панель *Быстрого просмотра* вниз.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_04.svg) **Отобразить в окне** — отображает *Быстрый просмотр* в модальном окне.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_03.svg) **Развернуть в окне** — максимизирует панель *Быстрого просмотра*.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_01.svg)  **Закрыть** — закрывает *Быстрый просмотр*.

## Особенности отображения Быстрого просмотра в виде закрепленной панели снизу

При отображении *Быстрого просмотра* в виде закрепленной панели снизу для просмотра данных достаточно кликнуть левой кнопкой мыши по нужному узлу или порту.

> **Примечание.** Набор данных будет отображаться только у активированных узлов, у неактивированных узлов панель *Быстрого просмотра* будет пустой с надписью *Узел не активирован*.

При выборе узла отображаются данные из первого порта. Если у узла несколько выходных портов, то остальные порты отображаются в виде вкладок. Между вкладками можно переключаться:

* непосредственно в панели *Быстрого просмотра*, выбирая нужную вкладку,
* кликая левой кнопкой мыши по выходным портам.

## Table port

Быстрое переключение между вариантами отображения данных в Табличном порту реализовано с помощью горячих клавиш:

* Show table %kbd Alt % + %kbd 1 %;
* Show form %kbd Alt % + %kbd 2 %.
* Скрыть *Быстрый просмотр* %kbd Esc % — работает при незакрепленной панели *Быстрого просмотра*.

### Table

Отображает данные в виде плоской двумерной таблицы.

If the data set includes more than 50 fields, only the first 50 will be displayed for the table port in *Quick View of Data* visualizer. The number of the displayed fields  can be changed using the additional ![ ](./../../images/icons/grid/columns.svg) *Columns* function. The total count of columns in the data set will be shown in the right upper window corner (refer to Figure). When hovering cursor over this area, the tooltip with the number of the displayed fields is shown.

The total count of rows in the data set is shown in the left lower corner of *Quick View of Data* window if there is no enough space for all rows in the visualizer window (refer to Figure).

![Быстрый просмотр данных Табличного порта (режим Таблица).](./images/column-amt.png)

> **Примечание.** При выборе Таблица/Форма каждый следующий порт открывается согласно выбранному значению. Узлы, которые были открыты до этого, открываются по "старому" значению.

### Form

Отображает строку в виде ключ-значение.

В форме по умолчанию отображаются все поля источника данных.

![Быстрый просмотр данных Табличного порта (режим Форма).](./images/form-amt.png)

В режиме Форма есть Поиск, позволяющий найти ключи по Метке или Имени.

> **Примечание**: колонка "Имя" по умолчанию скрыта. Для ее отображения необходимо в выпадающем списке ![](./../../images/icons/grid/columns.svg) "Столбцы" установить галочку напротив столбца "Имя".

%spoiler%Hotkeys:%spoiler%

* Переместить выделенные строки вверх %kbd Ctrl % + %kbd Up %;
* Переместить выделенные строки вниз %kbd Ctrl % + %kbd Down %;
* Копировать значения выделенных ячеек %kbd Ctrl % + %kbd C % (нет в контекстном меню).

%/spoiler%

#### Navigation

Навигация по таблице осуществляется при помощи мышки и панели навигации в верхней части визуализатора:

* Перейти на ![](./../../images/icons/common/toolbar-controls/prev_default.svg) предыдущую/![](./../../images/icons/common/toolbar-controls/next_default.svg) следующую строку  исходного набора данных;
* Перейти на ![](./../../images/icons/common/toolbar-controls/first_default.svg) первую/![](./../../images/icons/common/toolbar-controls/last_default.svg) последнюю строку исходного набора данных.

Для перехода на определённую строку необходимо ввести её номер в поле ввода, расположенное между кнопками навигации.

%spoiler%Hotkeys:%spoiler%

* First row %kbd Alt % + %kbd Up %;
* Previous row %kbd Alt % + %kbd Left %;
* Next row %kbd Alt % + %kbd Right %;
* Last row %kbd Alt % + %kbd Down %.

%/spoiler%

## Port of variables

Отображает переменные в виде ключ-значение.

![Быстрый просмотр данных Порта переменных.](./images/var-amt.png)

## Port of tree

Отображает данные в виде иерархической (древовидной) формы.

![Быстрый просмотр данных Порта дерева.](./images/tree-amt.png)

## Actions with the Fields

When hovering cursor over the field caption, ![ ](./../../images/icons/common/toolbar-controls/down_default.svg) button with additional functions will appear.

Different ports have different options and constraints:

<table>
<thead>
  <tr>
    <th>Port</th>
    <th>Mode</th>
    <th>Sorting</th>
    <th>Visibility change</th>
    <th>Freezing</th>
    <th>Move</th>
    <th>Bound</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">Table</td>
    <td>Form</td>
    <td></td>
    <td align="center">• (partially)</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Table</td>
    <td></td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td><ul><li>1 mln. rows for <i>Chrome</i> and <i>Chromium</i></li><li>300 thous. for <i>FireFox</i></li><li>50 thous. for other browsers (<i>IE</i>)</li></ul></td>
  </tr>
  <tr>
    <td>Tree</td>
    <td></td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td></td>
    <td></td>
    <td>10,000 child nodes</td>
  </tr>
  <tr>
    <td>Variables</td>
    <td></td>
    <td align="center">•</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>

* ![ ](./../../images/icons/common/toolbar-controls/low-to-hight_default.svg) **Sort ascending** / ![ ](./../../images/icons/common/toolbar-controls/hight-to-low_default.svg) **Sort descending**: sorting enables to sort data by the selected field in ascending or descending order. It is performed only for the current data set according to the set limits.
* ![ ](./../../images/icons/grid/columns.svg) **Columns**: change visibility (disable/enable display) of the defined columns.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Freeze column** / ![ ](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unfreeze column**: the frozen field is fixed in the left part of the window, and it is separated from the unfrozen part with the vertical line.

It is possible to move the fields relative to each other, and it is also possible to move them from the zone of frozen fields to the unfrozen ones and vice versa.

Field settings are reset when closing the window.
