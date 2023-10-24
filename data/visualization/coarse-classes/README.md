---
description: Визуализатор "Конечные классы" в Loginom. Справка по решению задач по преобразованию данных, сокращению размерности данных, восстановлению пропусков, борьбе с выбросами и аномалиями, упрощению описаний исследуемых объектов.
---
# ![](./../../images/icons/common/view_types/coarseclasses_default.svg) Coarse Classes

The Coarse Classes handler enables to solve the following problems:

* Conversion of the continuous and discrete input fields used for training of the models related to the [binary classification](https://wiki.loginom.ru/articles/binary-classification.html) by means of the [binning](https://wiki.loginom.ru/articles/binning.html) based on totality-of-evidence approach or  [WoE analysis](https://wiki.loginom.ru/articles/weight-of-evidence.html) (weights of evidence, WoE).
* Reduction of data dimensionality by excluding the indicators with low significance, by decreasing variety of indicator values.
* восстановление пропусков, когда пропуски образуют отдельную метку интервала квантования или объединяются с соседним, близким по значению WoE-индекса;
* The struggle against outliers and extreme values is based on formation of the binning range captions during discretization of the continuous field or union of rare unique values into one category.
* Simplification of description of the objects under study.

The visualizer includes the following items:

* [List of input columns](#spisok-vkhodnykh-stolbtsov).
* [Area of fine classes](#oblast-nachalnykh-klassov).
* [Area of coarse classes](#oblast-konechnykh-klassov).

> **Примечание:** визуализатор *Конечные классы* может использоваться только с узлом [*Конечные классы*](./../../processors/preprocessing/coarse-classes.md).

## Interface

### Operations
Для *Списка входных столбцов* доступна операция ![](./../../images/icons/common/toolbar-controls/fields-list_default.svg)**Скрыть боковую панель**. Pressing the button enables to hide the bar with the list of input columns, whereas the repeated pressing returns the bar.

*Area of coarse classes* can be represented in the [table](#tablitsa) form - ![](./../../images/icons/common/toolbar-controls/table-view_default.svg) **Show coarse class table** *(Alt+One*) or in the form of [charts - ](#diagramma) ![](./../../images/icons/common/toolbar-controls/chart_default.svg) **Show coarse class charts** (*Alt+Two*).

Также имеется переключатель ![](./../../images/icons/switches/roc/relative_default.svg)**Доли событий** / ![](./../../images/icons/switches/roc/absolute_default.svg)**Количество событий** — для выбора отображения абсолютных и относительных значений.

### List of Input Columns

* Field status:
   * ![](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unlocked** shows whether this field can be used in the process of the coarse classes generation while model overfitting.
   * ![](./../../images/icons/common/toolbar-controls/locked_default.svg) **Locked** shows that this field will not be used while overfitting.

> **Примечание:** статус поля изменить нельзя, он только отражает настройки в соответствующем узле [*Конечные классы*](./../../processors/preprocessing/coarse-classes.md).

* Column caption.
* Estimated significance level IV (refer to Figure 1).

![List of input columns.](./readme-1.png)

### Area of Fine Classes

The fine classes are displayed in the form of one display option - a chart.

When hovering the mouse cursor over the chart in the right upper corner, ![](./chart-buttons-3.svg) button appears. Its pressing enables to expand the chart over the whole visualizer area.

Fine classes chart can be as follows:

* Rate.
* [WoE (weight of evidence)](https://wiki.loginom.ru/articles/weight-of-evidence.html).
* [IV (information value)](https://wiki.loginom.ru/articles/information-value.html).

Display selection is switched by buttons (refer to Figure 2) in the lower part of the chart.

![Chart display option.](./charts-1.png)

When expanding the chart over the whole visualizer area, the drop-down list appears. It enables to select the field for which the chart will be generated (refer to Figure 3).

When hovering the mouse cursor over the chart column, the pop-up window appears. It displays the field value and WoE/IV/Rate value (refer to Figure 3).

![Fine classes chart.](./charts-2.png)

### Area of Coarse Classes

The coarse classes are displayed in the form of a table or WoE chart (refer to Figure 4) / chart IV. Chart IV can display as follows:
* Count (refer to Figure 5).
* Rate (refer to Figure 6).

#### Table

При установке переключателя в положение *Количество событий*, таблица будет состоять из следующих полей:

| Field | Description |
|:--------------------|:----------|
| № | Class number |
| Caption | A set of names of the fine classes included into the coarse class |
| Lower | Lower bin bound |
| Upper | Upper bin bound |
| Events | One of the states of the binary target class variable |
| Non-events | Opposite state of the binary target class variable |
| Total | The sum of class events and non-events |
| Rate | The coarse class rate based on the total volume of records |
| Weight of evidence | Коэффициент WoE |
| [Inf. value](https://wiki.loginom.ru/articles/information-value.html) | The value that defines the indicator significance in the [binary classification](https://wiki.loginom.ru/articles/binary-classification.html) model |

The sum is displayed in the lower part of the table:

* Events of all classes.
* Non-events of all classes.
* Events and non-events of all classes.
* Information values of all classes.

При установке переключателя в положение *Доли событий*, вместо полей *События* и *Не-события* будут отображаться поля *Доля событий* и *Доля не-событий*.

При этом в нижней части таблицы будет отображаться:

* Доля суммы Событий всех классов ;
* Доля суммы Не-событий всех классов;
* Сумма Событий и Не-событий всех классов;
* Сумма информационных индексов всех классов.


#### Chart

When hovering the mouse cursor over the chart in the right upper corner, ![](./chart-buttons-3.svg) button appears. It enables to expand the chart over the whole visualizer area.

![WoE chart.](./charts-3.png)

![](./chart-buttons-4.png) ![](./chart-buttons-5.png) buttons are used to switch Count and Rate charts.

![Rate Chart.](./charts-4.png)

![Count Chart.](./charts-5.png)

When hovering mouse cursor over the chart column, the window appears (refer to. Figure 7) which displays as follows:

* For WoE chart:
   * WoE value.
* For chart IV:
   * значение IV.
   * количество Событий.
   * non-events count.

![WoE chart and chart IV.](./charts-6.png)