---
description: Визуализатор "Конечные классы" в Loginom. Справка по решению задач по преобразованию данных, сокращению размерности данных, восстановлению пропусков, борьбе с выбросами и аномалиями, упрощению описаний исследуемых объектов.
---
# ![](./../../images/icons/common/view_types/coarseclasses_default.svg) Coarse Classes

The Coarse Classes handler enables to solve the following problems:

* Conversion of the continuous and discrete input fields used for training of the models related to the [binary classification](https://wiki.loginom.ru/articles/binary-classification.html) by means of the [binning](https://wiki.loginom.ru/articles/binning.html) based on totality-of-evidence approach or  [WoE analysis](https://wiki.loginom.ru/articles/weight-of-evidence.html) (weights of evidence, WoE).
* Reduction of data dimensionality by excluding the indicators with low significance, by decreasing variety of indicator values.
* Null data recovery when null data forms a separate binning range caption, or it is joined with the nearest one that is close by the WoE coefficient value.
* The struggle against outliers and extreme values is based on formation of the binning range captions during discretization of the continuous field or union of rare unique values into one category.
* Simplification of description of the objects under study.

The visualizer includes the following items:

* [List of input columns](#spisok-vkhodnykh-stolbtsov).
* [Area of fine classes](#oblast-nachalnykh-klassov).
* [Area of coarse classes](#oblast-konechnykh-klassov).

> **Note:** The *Coarse сlasses* visualizer can be used only with the [*Coarse classes*](./../../processors/preprocessing/coarse-classes.md) node.

## Interface

### Operations
For the *List of input columns* ![](./../../images/icons/common/toolbar-controls/fields-list_default.svg)**Hide side bar** operation is available. Pressing the button enables to hide the bar with the list of input columns, whereas the repeated pressing returns the bar.

*Area of coarse classes* can be represented in the [table](#tablitsa) form - ![](./../../images/icons/common/toolbar-controls/table-view_default.svg) **Show coarse class table** *(Alt+One*) or in the form of [charts - ](#diagramma) ![](./../../images/icons/common/toolbar-controls/chart_default.svg) **Show coarse class charts** (*Alt+Two*).

![](./../../images/icons/switches/roc/relative_default.svg)**Event rates** / ![](./../../images/icons/switches/roc/absolute_default.svg)**Events count** switch is available to select display of absolute and relative values.

### List of Input Columns

* Field status:
   * ![](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unlocked** shows whether this field can be used in the process of the coarse classes generation while model overfitting.
   * ![](./../../images/icons/common/toolbar-controls/locked_default.svg) **Locked** shows that this field will not be used while overfitting.

> **Note:** It is not possible to change the field status. It only displays settings in the corresponding [*Coarse classes*](./../../processors/preprocessing/coarse-classes.md) node.

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

When *Events count* switch position is selected, the table will include the following fields:

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
| Weight of evidence | WoE coefficient |
| [Inf. value](https://wiki.loginom.ru/articles/information-value.html) | The value that defines the indicator significance in the [binary classification](https://wiki.loginom.ru/articles/binary-classification.html) model |

The sum is displayed in the lower part of the table:

* Events of all classes.
* Non-events of all classes.
* Events and non-events of all classes.
* Information values of all classes.

When *Event rates* switch position is selected, instead of *Events* and *Non-events* fields, *Event rate* and *Non-event rate* fields will be displayed.

In this case, the following information will be displayed in the lower table part:

* Part of the sum of Events of all classes.
* Part of the sum of Non-events of all classes.
* Sum of Events and Non-events of all classes.
* Sum of information values of all classes.


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
   * value IV.
   * Events count.
   * Non-events count.

![WoE chart and chart IV.](./charts-6.png)