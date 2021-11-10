# ![ ](../../images/icons/components/plausible_default.svg) Imputation

## Description

The handler is designated for automatic filling of null values in data sets.
A user can select the most suitable imputation method for each column of the source data set. Null values are considered to be null data.

> **Note:** The node does not process the fields with the variable data type (refer to [data types](../../data/datatype.md)).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

Adjustment of columns mapping is performed in the [table](../../scenario/ports/interface-table.md) or [links](../../scenario/ports/interface-relations.md) interfaces.

### Imputation Configuration

* **Source data ordered**: it is required to select this checkbox when it is known that the data is ordered. For example, time or other series the values of which are ordered in ascending or descending order (for example, by date or time). Diffferent imputation methods can be used for ordered and unordered data.
* **Allowable percentage of nulls**: it takes the value expressed in percentage terms and sets the threshold after which no imputation occurs. For example, if 50 value is set for this parameter, the fileds that contain more than 50% of null data will not be filled in.
* **Area of configuration of null data processing** contains a list of the fields available for processing. It is possible to select the checkbox that enables to define the processing necessity for each field. Then, it is possible to set the imputation method.

The following processing methods are available:

* Replace with average: replace detected null data with the average column value.
* Replace with median: replace detected null data with the median calculated for the column.
* Replace with most frequent: replace null data with the most frequent column value. Replacement is performed using the average value from the most frequent histogram bin. The bin count varies according to the sample size: the larger the sample size, the higher number of bins.
* Replace with random values: replace detected null data with the random values that are formed from the range from the lowest to the highest column value.
* Linear interpolation: detected null data is replaced with the calculated intermediate values of the linear function received using the known values (drawing a conditional line between them).
* Cubic interpolation: detected null data is replaced with the intermediate values of the cubic spline (the third degree splines with the continuous first derivative) received using the known values.
* Spline interpolation: detected null data is replaced with the intermediate values of the spline function received using the known values.
* Leave unchanged: detected null data will not be filled in.
* Delete records: delete the rows with detected null data from the output data set.
* Replace with "Not defined": replace detected null data with "Not defined".

The spectrum of available methods is defined for each field by three data characteristics simultaneously (refer to [data](../../data/README.md)):

* Degree of order
* Type
* Kind

Applicability table by the following features:

<table>
<tr><th valign="top" align="center" rowspan="2">Method</th><th align="center" colspan="2">Unordered set</th><th align="center" colspan="2">Ordered set</th></tr>
<tr><th align="center"><img src="../../images/icons/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/data-types/continuous_default.svg"> Continuous</th><th align="center"><img src="../../images/icons/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/data-types/continuous_default.svg"> Continuous</th></tr>

<tr><td align="left">Replace with average</td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"></td><td align="center"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with median</td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with most frequent</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with random values</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Linear interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Cubic interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Spline interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Leave unchanged</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td></td><td></td></tr>

<tr><td align="left">Delete records</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"></td><td align="center"></td></tr>

<tr><td align="left">Replace with "Not defined"</td><td align="center"><img src="../../images/icons/data-types/string_default.svg"></td><td></td><td align="center"><img src="../../images/icons/data-types/string_default.svg"></td><td></td></tr>


</table>

**See also:**

* [Eliminate outliers](./editing-of-emissions.md)
