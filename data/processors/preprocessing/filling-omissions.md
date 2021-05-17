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

Columns mapping is configured in [table](../../scenario/ports/interface-table.md) or [links](../../scenario/ports/interface-relations.md) interfaces.

### Imputation Configuration

* **Source data ordered**: it is required to select this checkbox when it is known that the data is ordered. Например, временной или иной ряд, значения которого упорядочены по возрастанию или убыванию (например, по дате или времени). Для упорядоченных и неупорядоченных данных могут применяться различные методы заполнения пропусков.
* **Допустимый процент пропусков** — принимает значение в процентах и определяет порог, после которого заполнение пропусков не происходит. Например, если этому параметру задано значение 50, то поля, содержащие более 50% пропусков, заполняться не будут.
* **Область настройки методов обработки пропусков** — содержит список полей доступных для обработки. Для каждого поля можно выставить флаг, задающий необходимость обработки, и затем выставить метод заполнения пропусков.

Доступны следующие методы обработки:

* Заменять средним — выявленные пропуски заменяются средним значением столбца;
* Заменять медианой — выявленные пропуски заменяются медианой, вычисленной по столбцу;
* Заменять наиболее вероятным — выявленные пропуски заменяются наиболее вероятным значением по столбцу, замена производится на среднее значение из наиболее вероятного интервала, число интервалов варьируется в зависимости от объема выборки — чем она больше, тем больше интервалов;
* Заменять случайными значениями — выявленные пропуски заменяются случайными значениями, которые формируются из диапазона от наименьшего до наибольшего значения столбца;
* Линейная интерполяция — выявленные пропуски заменяются на вычисленные промежуточные значения линейной функции, полученной по известным значениям (условно проведя прямую между ними);
* Кубическая интерполяция — выявленные пропуски заменяются на промежуточные значения кубического сплайна (сплайны третьей степени с непрерывной первой производной), полученного по известным значениям;
* Сплайн-интерполяция — выявленные пропуски заменяются на промежуточные значения сплайн-функции , полученной по известным значениям;
* Оставить без изменения — выявленные пропуски заполняться не будут;
* Удалять записи — строки с выявленными пропусками исключаются из выходного набора данных;
* Заменять значением "Не задано" — выявленные пропуски заменяются значением "Не задано".

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
