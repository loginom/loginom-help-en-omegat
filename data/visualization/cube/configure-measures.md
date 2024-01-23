---
description: Как настроить факты для OLAP куба в Loginom. Руководство по работе с интерфейсом, доступным операциям, способам отображения данных при визуализации с помощью куба.
---
# ![Configure Measures](./../../images/icons/viewers/cube/cases/case-tune_default.svg) Configure Measures

It enables to configure displayed measures selecting checkboxes for the required measures/options of [aggregation](./../../processors/func/aggregation-functions.md) and representation methods.

It is possible to perform the required successive operations with several measures in *Configure measures* window. Changes will be introduced into the *Cube* upon pressing *Apply* button.

> **Note:** ![Count-Measure](./../../images/icons/common/aggregations/factor-count_default.svg)*Count* measure is available in the list. It is available even when none of the source data set field is used as a measure. The only aggregation option is available for it: ![Count-Aggregation](./../../images/icons/common/aggregations/factor-count_default.svg)*Count*. It shows the count of the source data set records included into the cube cell.

## Operations

* ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Move up**: move the measure/aggregation option/representation method one item position up.
* ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move down**: move the measure/aggregation option/representation method one item position down.
* ![](./../../images/icons/common/toolbar-controls/collapce-all_default.svg) **Collapse tree**: collapse the tree of measures.
* ![](./../../images/icons/common/toolbar-controls/open-all_default.svg) **Expand tree**: expand the tree of measures.
* ![](./../../images/icons/common/toolbar-controls/check-all_default.svg) **Check all**: check all measures, options of aggregation with all representation methods.
* ![](./../../images/icons/common/toolbar-controls/uncheck-all_default.svg) **Uncheck all**: uncheck all measures, aggregation options with all representation methods.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus_default.svg) **Add measure...**: open the window to [add measure](./add-measure.md) to cube.
* ![](./../../images/icons/viewers/cube/cases/case-calc_default.svg) **Add calculated measure…**: open the window to add the [calculated measure](./calculated-measure.md) to cube.
* ![](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit calculated measure…**: open the window to edit the calculated measure. Calculated measures in *Configure measures* window are marked with ![](./../../images/icons/components/calc-data_default.svg) icon.
* ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete measure**: delete the selected measure.

> **Note:** Upon ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus_default.svg) Add measure..., ![](./../../images/icons/viewers/cube/cases/case-calc_default.svg) Add calculated measure… or ![](./../../images/icons/common/toolbar-controls/delete_default.svg) Delete measure operations, *Cancel* button in *Configure measures* window will become unavailable. It is possible to cancel any operation by performing the one that is the inverse one. In the  *Cube* only the measures selected in *Configure measures* window at the moment of *Apply* button pressing will be displayed.

## Representation Methods

* ![](./../../images/icons/common/aggregations/factor-sum_default.svg) **Sum** enables to show the sum of values of this measure.
* ![](./../../images/icons/viewers/cube/aggregation/row-percent_default.svg) **Percent by row** enables to display the rate in percentage terms taken by this measure in this row.
* ![](./../../images/icons/viewers/cube/aggregation/col-percent_default.svg) **Percent by column** enables to display the rate in percentage terms taken by this measure in this column.

> **Note:** The representation option that is the first one on the list is selected by default as the representation option. Selection of several aggregation representation options at once is supported for the measure.
