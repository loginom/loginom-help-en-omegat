# ![Grouping](../../images/icons/components/group-data_default.svg) Grouping

The grouping enables to perform actions with a data set that are simillar to the SQL request actions using `GROUP BY` offer. The handler enables to combine records of the selected fields into groups, and to calculate the statistical indicators for the remaining fields (sum, mean, minimum, etc). One string is returned for each group. In this case, the statistical indicators (or [aggregation functions](../func/aggregation-functions.md)) are calculated for each group but not for the whole data set.

%spoiler%Example:%spoiler%

Source table:

| Date | Goods | Weight, kg |
| :--- | :---- | ------: |
| 12.07.2015 | Apples | 20 |
| 12.07.2015 | Apples | 18 |
| 12.07.2015 | Tomatoes | 24 |
| 13.07.2015 | Tomatoes | 22 |
| 13.07.2015 | Pears | 12 |
| 13.07.2015 | Pears | 16 |

It is required to select the *Date* and *Goods* fields as the group fields, and the *Weight, kg* as the parameter field (it will be used for aggregation). As an example, let's use three aggregation functions: sum, number of records and mean.

Resulting table:

| Date | Goods | Weight, kg (Sum) | Weight, kg (Number) | Weight, kg (Mean) |
| :--- | :---- | --------------: | -------------------: | ----------------: |
| 12.07.2015 | Tomatoes | 24 | 1 | 24 |
| 12.07.2015 | Apples | 38 | 2 | 19 |
| 13.07.2015 | Pears | 28 | 2 | 14 |
| 13.07.2015 | Tomatoes | 22 | 1 | 22 |

The example shows that the group is formed by the unique combination of the fields values selected as the grouping ones.

%/spoiler%

### Input

* ![Input data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source**: the port for connection of the input data set.

### Output

* ![Output data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set**: the port providing the grouped table.

## Wizard

The wizard window is divided into two areas.

* **Available fields** contain a list of fields of the input data set.
* **Selected fields** are divided into the *Group* and *Parameters* lists.
   * ![Group](../../images/icons/usage-types/group_default.svg) **Group**: grouping fields.
   * ![Parameters](../../images/icons/usage-types/value_default.svg) **Parameters** denote the fields by which the aggregation functions are calculated.

To configure, it is required to move the input data set fields to the *Group* or *Parameters* lists, dragging them with the mouse. It can be also done using the following buttons : ![Move to Group](../../images/icons/usage-types/group_default.svg) **Move to Group** (hotkeys combination - **Alt+G**) and ![Move to Parameter](../../images/icons/usage-types/value_default.svg) **Move to Parameter** (hotkeys combination - **Alt+S**). The ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_filter_default.svg) *Filter* field is located over the list of the available fields. It enables to find the field by name or its part.

The aggregation method is configured for each parameter in a separate window. To open it, it is required to double click on the field in the *Parameters* list, or to call this window from the context menu. Then, it is required to tick the necessary aggregation methods. The result for each method will be recorded in a separate column.

Two parameters selected using checkboxes are located in the lower part of the wizard:

* **Cache group values**: the result data will be [cached](../../scenario/caching.md) for use for subsequent nodes.
* **Sort result data**: the data in the resulting table will be sorted by the grouping fields according to their location sequence in the *Groups* list.
