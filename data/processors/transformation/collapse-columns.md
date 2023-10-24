---
description: Свертка столбцов в Loginom. Транспонирование таблиц в Loginom. Мастер настройки.
---
# ![Collapse Columns](./../../images/icons/components/column-flipping_default.svg) Collapse Columns

Компонент предназначен для транспонирования таблицы. In this case, headers of the selected columns are moved to the values of rows, and their data is moved to one column. As the data of different [types](./../../data/datatype.md) can be moved to this column, ![Variable](./../../images/icons/common/data-types/variant_default.svg) *Variable* data type is used for them.

%spoiler%Example:%spoiler%

Source data set:

| Client code | Month | SMS number | Number of incoming minutes | Status | Discount availability |
| ----------: | :---- | ---------: | --------------: | :----- | :------------- |
| 1 | August | 81 | 506 | constant | True |
| 1 | September | 32 | 231 | not constant | False |

Let's collapse columns. `Client code` and `Month` fields will be selected as ![Info](./../../images/icons/common/usage-types/unspecified_default.svg) *Info*. And `SMS number` (![Integer type](./../../images/icons/common/data-types/integer_default.svg)*Integer type*), `Number of incoming minutes` (![Integer type](./../../images/icons/common/data-types/integer_default.svg)*Integer type*), `Status` (![String type](./../../images/icons/common/data-types/string_default.svg)*String type*), `Discount availability` (![Logical type](./../../images/icons/common/data-types/boolean_default.svg)*Logical type*) will be selected as ![Transposed](./../../images/icons/common/dataset-operations/dsa-flipping_default.svg) *Transposed*.

Resulting data set:

| Client code | Month | Names | Captions | Values | Data Types |
| ----------: | :---- | :---- | :---- | :------- | ----------: |
| 1 | August | COL3 | SMS number | 81 | 4 |
| 1 | August | COL4 | Number of incoming minutes | 506 | 4 |
| 1 | August | COL5 | Status | constant | 5 |
| 1 | August | COL6 | Discount availability | True | 1 |
| 1 | September | COL3 | SMS number | 32 | 4 |
| 1 | September | COL4 | Number of incoming minutes | 231 | 4 |
| 1 | September | COL5 | Status | not constant | 5 |
| 1 | September | COL6 | Discount availability | False | 1 |

%/spoiler%

## Input

* ![Input data source](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source**: the port for connection of the input data set.

### Output

* ![Output data source](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set**: the table with transposed data set is output to the port.

## Wizard

The wizard window is divided into two areas: available fields (to the left) and selected fields (to the right).

* **Available fields** contain a list of fields of the input data set.
* **Selected fields** are divided into lists.
   * ![Info](./../../images/icons/common/usage-types/unspecified_default.svg) **Info**: contains the fields that will not be changed.
   * On the basis of ![Transposed](./../../images/icons/common/dataset-operations/dsa-flipping_default.svg) **Transposed** fields 4 new columns will be generated: *Names*, *Captions*, *Values*, *Data types*.

To configure, it is required to move the input data set fields to the *Info* or *Transposed* lists, dragging them with the mouse. It can be also done using the navigation buttons.

The resulting data set contains the following columns:

* The source data set columns from the *Info* list. Their values do not change anyhow.
* Сформированные узлом столбцы.
   * **Names**: the column with the names of the transposed columns.
   * **Captions**: the column with captions of columns.
   * **Values**: this column contains all values of the transposed columns because these columns can be of different type (as in the example), so, the Values column can have ![Variable](./../../images/icons/common/data-types/variant_default.svg) *Variable* type of data.
   * **Data types**: the column that contains information on the data type of values. The types in this column are numerated as follows:
      * **0** — ![Undefined](./../../images/icons/common/data-types/none_default.svg) *Undefined*.
      * **1** — ![Logical](./../../images/icons/common/data-types/boolean_default.svg) *Logical*.
      * **2** — ![Date/time](./../../images/icons/common/data-types/datetime_default.svg) *Date/time*.
      * **3** — ![Real](./../../images/icons/common/data-types/float_default.svg) *Real*.
      * **4** — ![Integer](./../../images/icons/common/data-types/integer_default.svg) *Integer*.
      * **5** — ![String](./../../images/icons/common/data-types/string_default.svg) *String*.
      * **6** — ![Variable](./../../images/icons/common/data-types/variant_default.svg) *Variable*.

При установке флага *Игнорировать пустые значения* узел не будет включать в результирующий набор строки с пустыми значениями в транспонируемых полях.
