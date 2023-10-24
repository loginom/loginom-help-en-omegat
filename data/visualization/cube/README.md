---
description: Построение OLAP-куба в Loginom. Руководство по многомерному анализу данных с помощью визуализатора OLAP куба. Настройка измерений и фактов.
---
# ![Cube Visualiser](./../../images/icons/common/view_types/cube_default.svg) Cube

[Cube](https://wiki.loginom.ru/articles/cube.html) is one of the wide spread methods of the complex multidimensional data analysis called [OLAP](https://wiki.loginom.ru/articles/online-analytical-processing.html) (OnLine Analytical Processing). It is based on data view in the form of the multidimensional cubes that are also called OLAB cubes or hypercubes.

Cube is a convenient tool used for visualization of the multidimensional data and production of the required report forms. It contains dimensions and measures defined while constructing. The main cube peculiarity is that its structure is not strictly defined. Using the mouse for dimensions headers manipulation, a user can provide the most informative cube display.

## Interface

The main window will be opened after addition to the visualizer node (Figure 1):

![The Main Cube Window](./cube-main-window.png)

The main window can be conventionally divided into 6 areas:

1. Area of Free Fields.
2. Area of Dimensions in Rows.
3. Area of Measures.
4. Area of Measures in Columns.
5. Area of Filtration by Dimensions.
6. [Cube Toolbar](./toolbar.md).

Areas from 2 to 5 represent the Cube construction area.

> **Important:** When configuring the Cube, especially when working with large data volumes, update of the Area of Measures (3) can take long time. In these cases it is recommended to disable data update temporally using ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) *Defer layout update* button.

### Cube Configuration

The list of the columns that can be used as dimensions or measures is displayed in the Area of Free Fields (1). The columns already used in the Cube are displayed in bold type.

#### Dimensions

To generate a report using the Cube, it is necessary to add the required dimensions to rows or columns. Добавить измерения в Куб можно несколькими способами:

* Перетащить (Drag-and-Drop) поле из Области свободных полей (1) в Область измерений колонок или строк (2 или 4).
* press ![Add](./../../images/icons/common/toolbar-controls/plus-native_default.svg) button of the required area and select the required field from the list.
* Нажать кнопку ![Настроить измерения](./../../images/icons/common/toolbar-controls/dimension_default.svg) на Панели инструментов и распределить поля в нужные области.

Count of dimensions is limited by the number of the available fields. It is recommended to use not more than 5-7 dimensions to make the report clear and interpretable.

> **Note:** When moving the fields to different areas, the modal windows of actions confirmation can appear if dimension or measure are used in the active calculated measure or in the filter by measure.

As the Cube visualizer is a flat two-dimensional table, the headers form the hierarchic system (tree of headers) when displaying several dimensions. All headers are collapsed up to the most external dimension by default. To expand or collapse the internal dimensions headers, it is required to click on Expand of Collapse button of the external dimension header. There are group operations of expansion or collapsing of headers.

The following options are available when pressing ![Open menu](./../../images/icons/common/toolbar-controls/down_default.svg) to the right from the dimesion name:

* ![Collapse](../../images/icons/common/toolbar-controls/collapce-all_default.svg) **Collapse**  all items up to the minimum dimension detailing.
* ![Expand](../../images/icons/common/toolbar-controls/open-all_default.svg) **Expand** all items up to the maximum dimension detailing.
* ![Ascending](../../images/icons/common/toolbar-controls/low-to-hight_default.svg) **Ascending**: sort the values in ascending order.
* ![Descending](../../images/icons/common/toolbar-controls/hight-to-low_default.svg) **Descending**: sort the values in descending order.
* ![In original order](../../images/icons/blank.svg) **In original order**: place the values in the order of their appearance in data.
* ![Delete](../../images/icons/common/toolbar-controls/delete_default.svg) **Delete**: delete a dimension from the Cube. It is possible to delete a dimension by dragging (Drag-and-Drop) back to the Area of Free Fields.

При нажатии на измерение появляется toolbar со следующими возможностями:
* ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_visible_default.svg)**Отметить все** / ![](../../images/icons/common/toolbar-controls/invert-eye_default.svg)**Снять все** — выделяет все значения в списке или снимает выделение со всех значений списка (%kbd Ctrl A %/ %kbd Ctrl Shift A %).
* ![ ](../../images/icons/common/toolbar-controls/invert-eye_default.svg) **Invert selection**: change the selected values from the list to the unselected ones and vice versa.
* ![ ](../../images/icons/common/toolbar-controls/eye-filter_default.svg) **Check by pattern...**: set the condition and method of dimensions selection.
* ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_copy_default.svg) **Копировать отмеченные** (%kbd Ctrl C %).
* ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_paste_default.svg) **Добавить к отмеченным** (%kbd Ctrl V %).

Специальные возможности копирования и добавления:

* Из фильтра копируются отмеченные значения списка в буфер обмена.
* В фильтр добавляются значения из буфера обмена и присоединяются к уже существующим значениям.

%spoiler% Ограничения копирования и вставки %spoiler%

В браузерах Google Chrome и Mozila Firefox при работе через протокол `http` кнопки ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_copy_default.svg) **Копировать**, ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_paste_default.svg) **Вставить** и горячая клавиша (%kbd Ctrl C % работать не будут.

> Примечание: В браузере `Firefox` для расширения функционала по протоколу `https` необходимо в адресной строке браузера ввести `about:config`, найти параметр `dom.events.testing.asyncClipboard` и изменить его значение на `true`. Заработают горячие клавиши и кнопка ![](../../images/icons/common/toolbar-controls/toolbar-controls_18x18_copy_default.svg) Копировать.

Формат данных буфера обмена — строковые значения, разделенные переводами строки.

%/spoiler%

* **Режим выбора значений фильтра:**

To filter data by the dimension, it is required to click on the required dimension with the mouse, configure the filter on the opened panel and press "Apply". If filtration has been configured by the dimension, it is highlighted in orange. The filter can be used in three modes:

%spoiler% Фильтр по измерению  %spoiler%

* ![ ](../../images/icons/common/toolbar-controls/icon-200_default.svg) **Multiple selection**: a user can select the random count of values from the list of the available ones. The selected values will be displayed in the Cube.
* ![ ](../../images/icons/common/toolbar-controls/icon-201_default.svg)
   **Single selection**: select only one value from the list that will be displayed in the Cube.
* ![ ](../../images/icons/common/toolbar-controls/icon-202_default.svg) **Combined selection**: select one dimension value from the list that has been earlier formed in the multiple selection mode.

В режимах ![ ](../../images/icons/common/toolbar-controls/icon-201_default.svg)
**Одиночный выбор** или ![ ](../../images/icons/common/toolbar-controls/icon-202_default.svg) **Комбинированный выбор** при просмотре куба появляются кнопки у измерения![<](../../images/icons/common/toolbar-controls/arrow-l_default.svg) и ![>](../../images/icons/common/toolbar-controls/arrow-r_default.svg) для перелистывания значений фильтра. The Area of Measures (3) will be rebuilt to comply with the filter value when paging. It is possible to enable paging across the bounds of the values list by pressing on ![ ](../../images/icons/common/toolbar-controls/roll-over_default.svg) **Loop values** button.

В режиме ![ ](../../images/icons/common/toolbar-controls/icon-200_default.svg) **Множественный выбор** с помощью переключателя **Режим включенных/исключенных** фильтр запоминает проходящие фильтр значения, в режиме исключённых значений фильтр запоминает отфильтрованные значения. При изменении входных данных новые значения будут проходить или не проходить фильтр в зависимости от этой настройки.


To configure selection, it is required to open *Check by pattern* window (the configured dimension is also specified in the window header). It is required to select the condition of dimension values and pattern mapping to the left in the drop-down list. The pattern is set to the right from the list in the entry field. The selected method of selection will be applied to all dimensions that comply with the condition (*Check, Add to checked, Uncheck* or *Remove from checked*). The case of letters can be taken into account during the selection process. For this purpose, it is required to select *Case-sensitive* checkbox.

| Режим | Копирование | Вставка |
|:-:|:-:|:-:|
| Множественный, режим включенных значений | Копируются все включенные значения (проходящие фильтр) | Успешно распознанные значения добавляются во включенные значения |
| Множественный, режим исключенных значений | Копируются все исключенные значения (непроходящие фильтр) | Успешно распознанные значения добавляются в исключенные значения |
| Одиночный и комбинированный режимы | Копируется текущее выбранное значение | Обрабатывается только первое строковое значение, остальные игнорируются, успешно распознанное значение становится выделенным, на него прокручивается таблица |

%/spoiler%

> **Note:** The Area of Filtration (5) is located under the Area of Dimensions (4). Configuration of the Area of Filtration is similar to configuration of the Area of Dimensions. The dimensions added to the Area of Filtration will not be displayed in the Cube but they can be used in the calculated measures and for data filtration.

#### Measures

It is possible to add measures in two ways:

* Drag (Drag-and-Drop) the required field from the Area of Free Fields (1) to the Area of Measures (3).
* By pressing on ![Measures](./../../images/icons/common/toolbar-controls/sum_default.svg) Measures button, it is necessary to select the required field and in the appeared [window](./add-measure.md) select the required method of [aggregation](./../../processors/func/aggregation-functions.md) and method of its display.

%spoiler%Агрегация фактов и возможные типы данных%spoiler%

|Вид агрегации|![](./../../images/icons/common/data-types/string_default.svg)|![](./../../images/icons/common/data-types/integer_default.svg)|![](./../../images/icons/common/data-types/float_default.svg)|![](./../../images/icons/common/data-types/boolean_default.svg)|![](./../../images/icons/common/data-types/datetime_default.svg)|![](./../../images/icons/common/data-types/variant_default.svg)|
|:-|:-:|:-:|:-:|:-:|:-:|:-:|
|![](./../../images/icons/common/aggregations/factor-sum_default.svg) Сумма||**•**|**•**||||
|![](./../../images/icons/common/aggregations/factor-count_default.svg) Количество|**•**|**•**|**•**|**•**|**•**|**•**|
|![](./../../images/icons/common/aggregations/factor-min_default.svg) Минимум|**•**|**•**|**•**|**•**|**•**||
|![](./../../images/icons/common/aggregations/factor-max_default.svg) Максимум|**•**|**•**|**•**|**•**|**•**||
|![](./../../images/icons/common/aggregations/factor-avg_default.svg) Среднее||**•**|**•**||**•**||
|![](./../../images/icons/common/aggregations/factor-stddev_default.svg) Стандартное отклонение||**•**|**•**||**•**||
|![](./../../images/icons/common/aggregations/factor-unique-count_default.svg) Количество уникальных|**•**|**•**|**•**|**•**|**•**|**•**|
|![](./../../images/icons/common/aggregations/factor-null-count_default.svg) Количество пропусков|**•**|**•**|**•**|**•**|**•**|**•**|
|![](./../../images/icons/common/aggregations/factor-stat-first_default.svg) Первый|**•**|**•**|**•**|**•**|**•**|**•**|
|![](./../../images/icons/common/aggregations/factor-stat-last_default.svg) Последний|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|

%/spoiler%

By pressing on ![Open list](./../../images/icons/common/toolbar-controls/down_default.svg) button near ![Measures](./../../images/icons/common/toolbar-controls/sum_default.svg) Measures, it is possible to open the drop-down menu with option to call one of the following windows:

* ![Configure measures](./../../images/icons/viewers/cube/cases/case-tune_default.svg) **Configure measures…**: open the measures configuration window.
* ![Add calculated measure](./../../images/icons/viewers/cube/cases/case-calc_default.svg) **Add calculated measure…**: open the window to add the calculated measure to the Cube.
* ![Filter measures](./../../images/icons/viewers/cube/cases/case-filter_default.svg) **Filter measures…**: open the window for measures filtration.
* ![Format measures](./../../images/icons/viewers/cube/cases/case-format_default.svg) **Format measures…**: open the window for formatting of measures and headers of dimensions.

It is possible to delete a measure by deselecting the checkbox in called *Configure measures* window.

> **Note:** The aggregation option and method of its display first in the list are selected by default. Display of several aggregation options and methods of their display for each measure is supported.

It is possible to move ![Measures](./../../images/icons/common/toolbar-controls/sum_default.svg)Measures button from rows to columns, and, thus, it is possible to change location of measures headers. В случаях когда требуется переместить факт в измерения, необходимо с помощью метода DnD переместить факты из Область измерений в колонках переместить (4) в Область измерений в строках (2).