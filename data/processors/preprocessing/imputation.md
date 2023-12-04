---
description: Компонент Заполнение пропусков в Loginom. Автоматическое заполнение пропусков. Методы обработки данных (заменять средним, заменять медианой, заменять на 0, заменять случайным). Мастер настройки.
---
# ![ ](./../../images/icons/components/plausible_default.svg) Imputation

## Description

Компонент предназначен для автоматического заполнения пропущенных значений в наборах данных.
A user can select the most suitable imputation method for each column of the source data set. Null values are considered to be null data.

> **Note:** The node does not process the fields with the variable data type (refer to [data types](./../../data/datatype.md)).

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

Adjustment of columns mapping is performed in the [table](./../../workflow/ports/table-interface.md) or [links](./../../workflow/ports/connections-interface.md) interfaces.

### Imputation Configuration

* **Source data ordered**: it is required to select this checkbox when it is known that the data is ordered. For example, time or other series the values of which are ordered in ascending or descending order (for example, by date or time). Diffferent imputation methods can be used for ordered and unordered data.
* **Allowable percentage of nulls**: it takes the value expressed in percentage terms and sets the threshold after which no imputation occurs. For example, if 50 value is set for this parameter, the fileds that contain more than 50% of null data will not be filled in.
* **Random seed** is a starting seed (integer, positive ) that is used for initialization of pseudo-random number generator. Sequence of generator numbers is fully determined by the starting seed. If the generator is repeatedly initialized with the same starting seed, it will provide the same sequence of numbers.

   Параметр влияет на порядок замены случайными значениями. Можно повторить результат выполнения узла, если подать те же данные и выставить тот же random seed.

   The following commands are available for the parameter:

   * Always randomly: the starting seed will always be random.
   * Generate: the new starting seed will be generated.
   * Copy: the specified value will be copied to the clipboard.

* **Область настройки методов обработки пропусков** — содержит список полей доступных для обработки, с указанием вида данных. It is possible to select the checkbox that enables to define the processing necessity for each field. Then, it is possible to set the imputation method.

The following processing methods are available:

* **Заменять средним** — выявленные пропуски заменяются средним значением столбца.
* **Заменять медианой** — выявленные пропуски заменяются медианой, вычисленной по столбцу.
* **Заменять наиболее вероятным** — выявленные пропуски заменяются наиболее вероятным значением по столбцу, замена производится на [среднее значение из наиболее вероятного интервала](https://wiki.loginom.ru/articles/mean-most-likely-interval.html), число интервалов варьируется в зависимости от объема выборки — чем она больше, тем больше интервалов.
* **Заменять на 0** — выявленные пропуски заменяются значением 0.
* **Заменять случайными значениями** — выявленные пропуски заменяются случайными значениями, которые формируются из диапазона от наименьшего до наибольшего значения столбца.
* **Линейная интерполяция** — выявленные пропуски заменяются на вычисленные промежуточные значения линейной функции, полученной по известным значениям (условно проведя прямую между ними).
* **Кубическая интерполяция** — выявленные пропуски заменяются на промежуточные значения кубического сплайна (сплайны третьей степени с непрерывной первой производной), полученного по известным значениям.
* **Сплайн-интерполяция** — выявленные пропуски заменяются на промежуточные значения сплайн-функции , полученной по известным значениям.
* **Оставить без изменения** — выявленные пропуски заполняться не будут.
* **Удалять записи** — строки с выявленными пропусками исключаются из выходного набора данных.
* **Заменять значением "Не задано"** — выявленные пропуски заменяются значением "Не задано".

The spectrum of available methods is defined for each field by three data characteristics simultaneously (refer to [data](./../../data/README.md)):

* упорядоченностью;
* типом;
* видом.

Applicability table by the following features:

<table>
<tr><th valign="top" align="center" rowspan="2">Method</th><th align="center" colspan="2">Unordered set</th><th align="center" colspan="2">Ordered set</th></tr>
<tr><th align="center"><img src="../../images/icons/common/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/common/data-types/continuous_default.svg"> Continuous</th><th align="center"><img src="../../images/icons/common/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/common/data-types/continuous_default.svg"> Continuous</th></tr>

<tr><td align="left">Replace with average</td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"></td><td align="center"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with median</td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with most frequent</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Заменять на 0</td><td align="center">  <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <td align="center"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <td align="center"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Replace with random values</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Linear interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Cubic interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Spline interpolation</td><td></td><td></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td></tr>

<tr><td align="left">Leave unchanged</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td></td><td></td></tr>

<tr><td align="left">Delete records</td><td align="center"><img src="../../images/icons/common/data-types/boolean_default.svg"> <img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"> <img src="../../images/icons/common/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/common/data-types/datetime_default.svg"> <img src="../../images/icons/common/data-types/float_default.svg"> <img src="../../images/icons/common/data-types/integer_default.svg"></td><td align="center"></td><td align="center"></td></tr>

<tr><td align="left">Replace with "Not defined"</td><td align="center"><img src="../../images/icons/common/data-types/string_default.svg"></td><td></td><td align="center"><img src="../../images/icons/common/data-types/string_default.svg"></td><td></td></tr>

</table>

**See also:**

* [Eliminate outliers](./eliminate-outliers.md)
