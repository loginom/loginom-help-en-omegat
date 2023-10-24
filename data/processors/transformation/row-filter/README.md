---
description: Фильтр строк в Loginom. Мастер настройки.
---
# ![Row Filter](./../../../images/icons/components/filter-data_default.svg) Row Filter

Компонент *Фильтр строк* позволяет выделить записи, которые удовлетворяют одному или нескольким условиям. Several criteria are joined into the complex criterion using the logical AND/OR operators.

The complex criterion example:

(City = `Moscow`) **AND** (Name = `Sasha`) **AND** (Age >= `30`) **AND** (Sex = `male`) **OR** (City = `Tula`)

The [control variables](./../../../workflow/variables/control-variables.md) can be used as the criteria parameter. In this case, the example provided above will be as follows:

(City = `<VAR1>`) **AND** (Name = `<VAR2>`) **AND** (Age>= `<VAR3>`) **AND** (Sex = `<VAR4>`) **OR** (City = `<VAR5>`)

Where: `VAR1` ... `VAR5` are the names of the control variables accepted by the node as the input parameters.

Thus, the filtering criterion can be dynamically set during the workflow execution.

> Важно: при написании сложных условий приоритет будет у оператора **И**.
> Например, сложное условие вида: "A **ИЛИ** B **И** C **ИЛИ** D **И** E **И** F" будет выполняться следующим образом: "A **ИЛИ** (B **И** C) **ИЛИ** (D **И** E **И** F)"

The input data set is divided into two output data sets (data tables): the records that meet the filtering criterion and the records that do not meet the criterion.

### Input

* ![Input data source](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** (data table).

### Output

* ![Meet criterion](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Meet criterion** (data table).
* ![Do not meet criterion](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Do not meet criterion** (data table).

## Wizard

*Login status* is located in the upper part of the wizard.

Area of the filtering criteria settings is located under the login status row. The new criterion is added by pressing + button. Then it is required to select the field name, [comparison ratio](./filtering-criteria.md) (*Condition*) and comparison value.

В зависимости от отношения сравнения, вида и типа данных поля, по которому задается условие фильтрации, значение сравнения можно задать с помощью переключателя или выбрать из предлагаемого списка. Также можно ввести данные с клавиатуры.

Для условий *в списке/вне списка* элементы для сравнения добавляются по клавише %kbd Enter %, удаляются — по клавишам %kbd Backspace % или %kbd Delete %. Перемещаться по введенным элементам списка можно при помощи стрелок. Доступна вставка списка значений из буфера обмена (см. [Особенности работы с буфером обмена в Фильтре строк](./filterdata-paste-from-clipboard.md)).

Для условий *пустой/не пустой* значение для сравнения не задается.

When creating several criteria, it is required to set the logical AND/OR operators between them. AND operator is set by default. To change the operator, it is required to left-click on it.

В узле имеется возможность предпросмотра результата фильтрации (выводятся первые 25 строк результирующей таблицы). To start it, it is required to press *Apply filter* button.

> **Note:** To show data in the preview window, only the first thousand rows of the source data set are processed. If no records that meet the filtering criterion are detected among them, the following warning is shown: `Maximum scanned row count reached: 1000`.
