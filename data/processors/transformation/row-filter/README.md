---
description: Фильтр строк в Loginom. Мастер настройки.
---
# ![Row Filter](./../../../images/icons/components/filter-data_default.svg) Row Filter

The *Row filter* component enables to select the records that meet one or several criteria. Several criteria are joined into the complex criterion using the logical AND/OR operators.

The complex criterion example:

(City = `Moscow`) **AND** (Name = `Sasha`) **AND** (Age >= `30`) **AND** (Sex = `male`) **OR** (City = `Tula`)

The [control variables](./../../../workflow/variables/control-variables.md) can be used as the criteria parameter. In this case, the example provided above will be as follows:

(City = `<VAR1>`) **AND** (Name = `<VAR2>`) **AND** (Age>= `<VAR3>`) **AND** (Sex = `<VAR4>`) **OR** (City = `<VAR5>`)

Where: `VAR1` ... `VAR5` are the names of the control variables accepted by the node as the input parameters.

Thus, the filtering criterion can be dynamically set during the workflow execution.

> Important: When writing complex conditions, **AND** operator will be prioritised.
> For example, the following complex condition: "A **OR** B **AND** C **OR** D **AND** E **AND** F" will be executed as follows: "A **OR** (B **AND** C) **OR** (D **AND** E **AND** F)"

The input data set is divided into two output data sets (data tables): the records that meet the filtering criterion and the records that do not meet the criterion.

### Input

* ![Input data source](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** (data table).

### Output

* ![Meet criterion](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Meet criterion** (data table).
* ![Do not meet criterion](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Do not meet criterion** (data table).

## Wizard

*Login status* is located in the upper part of the wizard.

Area of the filtering criteria settings is located under the login status row. The new criterion is added by pressing + button. Then it is required to select the field name, [comparison ratio](./filtering-criteria.md) (*Condition*) and compare value.

According to relation of comparison, data kind and type of the field by which filterng criterion is set, compare value can be set using a switch or selecting from the provided list. It is also possible to enter data from the keyboard.

As far as *listed/not listed* conditions are concerned, elements for comparison are added using %kbd Enter % key, they are deleted using %kbd Backspace % or %kbd Delete % keys. It is possible to move along the selected element using arrows. It is possible to paste values list from clipboard (refer to [Features of Work with Clipboard in the Row Filter](./filterdata-paste-from-clipboard.md)).

Compare value is not set for *null/not null* conditions.

When creating several criteria, it is required to set the logical AND/OR operators between them. AND operator is set by default. To change the operator, it is required to left-click on it.

It is possible to preview the filtering result in the node (the first 25 rows of the resulting table are shown). To start it, it is required to press *Apply filter* button.

> **Note:** To show data in the preview window, only the first thousand rows of the source data set are processed. If no records that meet the filtering criterion are detected among them, the following warning is shown: `Maximum scanned row count reached: 1000`.
