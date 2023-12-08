---
description: Справка по статистическим функциям Loginom. Работа с функциями статистики Avg, DKhi2, FKhi2, InvKhi2, Max, Min, PKhi2, StdDev, Sum, SumSq. Описание функций и используемых аргументов.
---
# Statistical Functions

## Avg

**Avg(Argument1, Argument2 ...)**

* Arguments - any numeric expressions.

Returns the arithmetic mean of arguments.

## DKhi2

**DKhi2(Degrees\_of\_freedom, Argument)**

* Degrees\_of\_freedom - number of degrees of freedom.
* Argument: the value for which it is required to calculate the distribution density.

Density function of gamma distribution of Chi-square.

## FKhi2

**FKhi2(Degrees\_of\_freedom, Argument)**

* Degrees\_of\_freedom - number of degrees of freedom.
* Argument: the value for which it is required to calculate the distribution density.

Integral function of gamma distribution equal to (1 - one-sided probability of Chi-square distribution) with n degrees of freedom.

## InvKhi2

**InvKhi2(Degrees\_of\_freedom, Probability)**

* Degrees\_of\_freedom - number of degrees of freedom.
* Probability: the probability connected with gamma distribution.

Returns inverse gamma distribution for the integral function equal to (1 - one-sided probability of Chi-square distribution). If p=FKhi2(N, X), then InvKhi2(N, P) = X

## Max

**Max(Argument1, Argument2 ...)**

* Argument1.
* Argument2.
* ... — numeric expressions.

Returns the maximum argument.

## Min

**Min(Argument1, Argument2 ...)**

* Argument1.
* Argument2.
* ... — numeric expressions.

Returns the minimum argument.

## PKhi2

**PKhi2(Degrees\_of\_freedom, Argument)**

* Degrees\_of\_freedom - number of degrees of freedom.
* Argument: the value for which it is required to calculate the distribution density.

Returns one-sided probability of Chi-square distribution.

## Stat

**Stat("FieldName", "Type")**

* FieldName: the field by which it is required to get the indicator value.
* Type: the statistics indicator which must be obtained.

Function returns the value of one of the statistical indicators.

> Requirements for input data are listed in the table.

| Type of statistics indicator | Indicator value | Data kind | Data type |
| ------------------------- | ------------------- | ---------- | ---------- |
| Min | Minimum value | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| Max | Maximum value | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| Mode | The most frequently occurring value | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer, ![](./../../../images/icons/common/data-types/string_default.svg) String, ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical, ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |
| Avg | Average value | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| StdDev | Standard deviation | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| Sum | Sum of values | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| SumSq | Sum of square values | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| Count | Sum of values | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer, ![](./../../../images/icons/common/data-types/string_default.svg) String, ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical, ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |
| UniqueCount | Count of unique values | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer, ![](./../../../images/icons/common/data-types/string_default.svg) String, ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical, ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |
| NullCount | Count of the null values | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous, ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Real, ![](./../../../images/icons/common/data-types/integer_default.svg) Integer, ![](./../../../images/icons/common/data-types/string_default.svg) String, ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical, ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |

Calculation is made by the fields that are set for the [Calculator](https://help.loginom.ru/userguide/processors/transformation/calc/) node input. The columns calculated in the same *Calculator* will not be calculated.

## StdDev

**StdDev(Argument1, Argument2 ...)**

* Arguments - any numeric expressions.

It returns the standard deviation of arguments defined on the basis of unbiased variance.

## Sum

**Sum(Argument1, Argument2 ...)**

* Arguments - any numeric expressions.

Returns the sum of arguments.

## SumSq

**SumSq(Argument1, Argument2 ...)**

* Arguments - any numeric expressions.

Returns the sum of squared arguments.
