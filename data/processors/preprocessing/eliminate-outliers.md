---
description: Компонент Редактирование выбросов в Loginom. Допустимое стандартное отклонение. Интерквартильный размах. Выбросы. Экстремальные значения. Мастер настройки.
---
# ![ ](./../../images/icons/components/e-lim-out-lier_default.svg) Eliminate Outliers

## Description

The component is designated for automatic elimination of outliers and extreme values in data sets. A user sets criteria of outliers and extreme values determination for each field of the source data set by specifying the allowable [standard deviation](https://wiki.loginom.ru/articles/mean-square-deviation.html) or interquartile range. The outliers mean the data values that distinctly deviate from the average ones, the extreme values mean the values that deviate from the typical values to such extent that they are not consistent with the logics of the processes and events under research anymore.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source: data table.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set: the source table after processing.
* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Outliers: the table that contains the source table rows in which outliers have been detected.
* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Extreme values: the table that contains the source table rows in which extreme values have been detected.

## Wizard

* **Source data ordered**: it is required to select this checkbox when it is known that the numeric series is ordered, namely, its values are ordered in ascending or descending order (for example, by date or time). Availability of some elimination methods depends on the status of this checkbox. The checkbox status does not affect processing of logical and string fields.
* **Area of configuration of outliers and extreme values elimination methods** contains a list of the fields available for processing. It is possible to select the checkbox that enables to define the processing avialability for each field. Upon selection of the field, it is possible to set the processing method.
* **Determination of outliers and extreme values**: two detection methods are available:
   * Standard deviation: the criterion is deviation of the indicator value from the mean one more than by the set number of standard deviations. In this case, this parameter can be separately set for outliers and exreme values. This method can be used if it is known that data distribution is close to the normal one.
   * [Interquartile range](https://wiki.loginom.ru/articles/iqr.html): the criterion is distance between the first and the third quartiles of indicator values distribution. If the indicator value deviates from the median more than by the set number of the interquartile range, it is considered to be anomalous. This parameter is set only for outliers and exreme values. This method can be also used when data distribution differs from the normal one.

The following elimination methods are available both for outliers and extreme values:

* Leave unchanged.
* Delete records: delete the records with anomalous values from data set.
* Replace with average: replace anomalous values with the average column value.
* Replace with median: replace anomalous values with the median calculated for the column.
* Replace with most frequent: replace anomalous values with the most frequent column value. Replacement is performed using the [average value from the most frequent bin](https://wiki.loginom.ru/articles/mean-most-likely-interval.html). The bin count varies according to the sample size: the larger the sample size, the higher number of bins.
* Replace with set value: replace anomalous values with the manually recorded value.
* Limit: replace anomalous values with the bound value from which the anomalous values start.

The spectrum of available methods is defined for each field by three data characteristics simultaneously (refer to [data](./../../data/README.md)):

* Degree of order
* Type
* Kind

Applicability table by the following features:

<table>
<tr><th rowspan="2" align="center">Method</th><th colspan="2" align="center">Unordered set</th><th colspan="2" align="center">Ordered set</th></tr>
<tr><th align="center"><img src="../../images/icons/common/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/common/data-types/continuous_default.svg"> Continuous</th><th align="center"><img src="../../images/icons/common/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/common/data-types/continuous_default.svg"> Continuous</th></tr>
<tr><td align="left">Leave unchanged</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Delete records</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td> <td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td></td> <td></td></tr>
<tr><td align="left">Replace with average</td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with median</td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with most frequent</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with set value</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"></td></tr>
<tr><td align="left">Limit</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>
</table>

**See also:**

* [Imputation](./imputation.md)
* [Anomalous values](https://wiki.loginom.ru/articles/outlier.html).
