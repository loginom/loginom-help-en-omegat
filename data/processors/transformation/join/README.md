---
description: Слияние данных в Loginom. Правое соединение (аналог RIGHT JOIN в SQL). Левое соединение (аналог LEFT JOIN в SQL). Внутреннее соединение (аналог INNER JOIN в SQL). Полное соединение (аналог FULL JOIN в SQL). Разность.
---
# ![Join](./../../../images/icons/components/join-data_default.svg) Join

Data of the key fields of the main and joined data sets is compared with each other. The comparison result is used by the join algorithm to generate the resulting data set. Join of the data sets that are connected by the key fields — analogue of the JOIN operation in SQL.

Options of data sets join:

* ![ ](./../../../images/icons/components/joindata/join-full_default.svg) [Full join](./cross.md).
* ![ ](./../../../images/icons/components/joindata/join-inner_default.svg) [Inner join](./inner.md).
* ![ ](./../../../images/icons/components/joindata/join-left_default.svg) [Left join](./left.md).
* ![ ](./../../../images/icons/components/joindata/join-right_default.svg) [Right join](./right.md).
* ![ ](./../../../images/icons/components/joindata/join-diff_default.svg) [Difference](./difference.md).

With the exception of the [Difference](./difference.md) method, each of the enumerated join methods is an analogue of the particular join type in SQL.

### Input

* ![Main table](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Main table**: the table to which data sets from the joined table are appended (in the context of the SQL terms, it accepts the left table data for join).
* ![Joined table](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Joined table**: the table data sets of which are appended to the main table (in the context of the SQL terms, it accepts the right table data for join).

### Output

* ![Output data set](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) **Output data set**: join result. As a rule, it contains the fields of the main and joined data sets.

## Wizard

* **Operation type** enables to select the join method.
* **Area of fields mapping**: configuration of the connection fields of the main and joined data sets.

Operation type (join method) can be selected from the drop-down list, or it can be set using the [control variable](./../../../workflow/variables/control-variables.md) of the integer type (refer to [data types](./../../../data/datatype.md)):

* 0 - Inner join.
* 1 - Left join.
* 2 - Right join.
* 3 - Full join.
* 4 - Difference.

The fields are linked using the Drag-and-Drop method. The key fields mapped by this method are linked by the connection lines. The link between the fields can be deleted or set to another field.

Linking is allowed only for the fields with the similar data types.

* **Add joined key fields**: selection of this checkbox enables to keep the key fields from the joined table in the output data set.

> **Important**: Only the key fields of the main table can be included into the resulting data set for any join (`JOIN`).

---

**See also:**

* [Enrich data](./../enrich-data.md);
* [Connection](./../column-union.md)
* [Union](./../union.md)
