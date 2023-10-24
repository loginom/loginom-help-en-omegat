---
description: Как настроить факты для OLAP куба в Loginom. Руководство по работе с интерфейсом, доступным операциям, способам отображения данных при визуализации с помощью куба.
---
# ![Configure Measures](./../../images/icons/viewers/cube/cases/case-tune_default.svg) Configure Measures

Позволяет настроить отображаемые факты, выставляя флаги у нужных фактов/вариантов [агрегации](./../../processors/func/aggregation-functions.md) и способов отображения.

It is possible to perform the required successive operations with several measures in *Configure measures* window. Changes will be introduced into the *Cube* upon pressing *Apply* button.

> **Note:** ![Count-Measure](./../../images/icons/common/aggregations/factor-count_default.svg)*Count* measure is available in the list. It is available even when none of the source data set field is used as a measure. The only aggregation option is available for it: ![Count-Aggregation](./../../images/icons/common/aggregations/factor-count_default.svg)*Count*. It shows the count of the source data set records included into the cube cell.

## Operations

* ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — переместить факт/вариант агрегации/способ отображения на позицию вверх.
* ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Переместить вниз** — переместить факт/вариант агрегации/способ отображения на позицию вниз.
* ![](./../../images/icons/common/toolbar-controls/collapce-all_default.svg) **Свернуть дерево** — свернуть дерево фактов.
* ![](./../../images/icons/common/toolbar-controls/open-all_default.svg) **Развернуть дерево** — развернуть дерево фактов.
* ![](./../../images/icons/common/toolbar-controls/check-all_default.svg) **Выбрать все** — выбрать все факты, варианты агрегации со всеми способами отображения.
* ![](./../../images/icons/common/toolbar-controls/uncheck-all_default.svg) **Отменить выбор всех** — убрать выбор всех фактов, вариантов агрегации со всеми способами отображения.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus_default.svg) **Добавить факт...** — открыть окно для [добавления факта](./add-measure.md) в куб.
* ![](./../../images/icons/viewers/cube/cases/case-calc_default.svg) **Добавить вычисляемый факт…** — открыть окно для добавления [вычисляемого факта](./calculated-measure.md) в куб.
* ![](./../../images/icons/common/toolbar-controls/edit_default.svg) **Редактировать вычисляемый факт…** — открыть окно редактирования вычисляемого факта. В окне *Настроить факты* вычисляемые факты отмечены иконкой ![](./../../images/icons/components/calc-data_default.svg).
* ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete measure**: delete the selected measure.

> **Note:** Upon ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus_default.svg) Add measure..., ![](./../../images/icons/viewers/cube/cases/case-calc_default.svg) Add calculated measure… or ![](./../../images/icons/common/toolbar-controls/delete_default.svg) Delete measure operations, *Cancel* button in *Configure measures* window will become unavailable. It is possible to cancel any operation by performing the one that is the inverse one. In the  *Cube* only the measures selected in *Configure measures* window at the moment of *Apply* button pressing will be displayed.

## Representation Methods

* ![](./../../images/icons/common/aggregations/factor-sum_default.svg) **Сумма** — показывает сумму значений данного факта.
* ![](./../../images/icons/viewers/cube/aggregation/row-percent_default.svg) **Процент по горизонтали** — отображает долю в процентах от занимаемого данным фактом в данной строке.
* ![](./../../images/icons/viewers/cube/aggregation/col-percent_default.svg) **Percent by column** enables to display the rate in percentage terms taken by this measure in this column.

> **Note:** The representation option that is the first one on the list is selected by default as the representation option. Selection of several aggregation representation options at once is supported for the measure.
