---
description: Справка по функциям агрегации данных в Loginom. Статистические функции суммы, количества, минимума, максимума, среднего, медианы, моды, стандартного отклонения, количества уникальных, количества пропусков, первого и последнего элементов.
---
# Aggregation Functions

**Aggregation functions** are statistical functions that are used with a set of values. They return one value that is characteristic of such set.

Let's consider all possible aggregation functions available in Megaladata:

#### ![](./../../images/icons/common/aggregations/factor-sum_default.svg) Sum
The sum of values of all column cells is a result.
#### ![](./../../images/icons/common/aggregations/factor-count_default.svg) Count
Result: total number of records in the data set, including null records and records without a value (*`<null>`*).
#### ![](./../../images/icons/common/aggregations/factor-min_default.svg) Minimum
The minimum value by column is a result. The null records are not included into the aggregation, with the exception of ![](./../../images/icons/common/data-types/string_default.svg) String type where the null record is the minimum one. Records with *`<null>`* are not included into the aggregation at all.
#### ![](./../../images/icons/common/aggregations/factor-max_default.svg) Maximum
The highest value by column is a result. For ![](./../../images/icons/common/data-types/string_default.svg) String type comparison is made taking locale into account.
#### ![](./../../images/icons/common/aggregations/factor-avg_default.svg) Average
The average value of all column cells is a result. The fields that are not empty and *`<null>`* are included into calculations.
#### ![](./../../images/icons/common/aggregations/factor-median_default.svg) Median
Result: [Median](https://wiki.loginom.ru/articles/median.html) value by column.
#### ![](./../../images/icons/common/aggregations/mode_default.svg) Mode
Result: [mode](https://wiki.loginom.ru/articles/mode.html) value by column.
The mode is available for all [data linds](../../data/datakind.md) and [data types](../../data/datatype.md).
The result column has the source field data type, and data kind is explicitly set in Discrete.
Null values are ignored as when calculating the count of unique values.
If there are several modes, the lowest value will be selected:

* for the logical data type - False;

* for the numeric data - the least number;

* for strings - the least one in the lexicographical order.
#### ![](./../../images/icons/common/aggregations/factor-stddev_default.svg) Standard deviation
The mean-square [deviation](https://wiki.loginom.ru/articles/mean-square-deviation.html) by column is a result. The fields that are included into the aggregation are as for the Average aggregation.
#### ![](./../../images/icons/common/aggregations/factor-unique-count_default.svg) Count of unique
Result: count of unique values of records. The records with the null value, with *`<null>`* value or the value that does not match the data type are not taken into account in the calculation process.
#### ![](./../../images/icons/common/aggregations/factor-null-count_default.svg) Null count
The number of records with the null values, *`<null>`* value or the values that do not match the data type is a result. With the exception of ![](./../../images/icons/common/data-types/string_default.svg) String data type where the records with  *`<null>`* value are considered to be null.
#### ![](./../../images/icons/common/aggregations/factor-stat-first_default.svg) First
The first record value in the data set is displayed.
#### ![](./../../images/icons/common/aggregations/factor-stat-last_default.svg) Last
The last record value in the data set is displayed.
#### ![](./../../images/icons/common/aggregations/factor-only_default.svg) Single
The only unique value is displayed. In this case, the records without a value (*`<null>`*) are not taken into account (ignored).





[def]: ./../../images/icons/common/aggregations/mode_default.svg
