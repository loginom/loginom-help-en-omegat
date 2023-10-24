---
description: Справка по статистическим функциям Loginom. Работа с функциями статистики Avg, DKhi2, FKhi2, InvKhi2, Max, Min, PKhi2, StdDev, Sum, SumSq. Описание функций и используемых аргументов.
---
# Statistical Functions

## Avg

**Avg(Argument1, Argument2 ...)**

* Аргументы — любые числовые выражения.

Returns the arithmetic mean of arguments.

## DKhi2

**DKhi2(Degrees\_of\_freedom, Argument)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Density function of gamma distribution of Chi-square.

## FKhi2

**FKhi2(Degrees\_of\_freedom, Argument)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Integral function of gamma distribution equal to (1 - one-sided probability of Chi-square distribution) with n degrees of freedom.

## InvKhi2

**InvKhi2(Degrees\_of\_freedom, Probability)**

* Степени\_свободы — число степеней свободы.
* Вероятность — вероятность, связанная с гамма-распределением.

Returns inverse gamma distribution for the integral function equal to (1 - one-sided probability of Chi-square distribution). If p=FKhi2(N, X), then InvKhi2(N, P) = X

## Max

**Max(Argument1, Argument2 ...)**

* Argument1.
* Argument2.
* ... — числовые выражения.

Returns the maximum argument.

## Min

**Min(Argument1, Argument2 ...)**

* Argument1.
* Argument2.
* ... — числовые выражения.

Returns the minimum argument.

## PKhi2

**PKhi2(Degrees\_of\_freedom, Argument)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Returns one-sided probability of Chi-square distribution.

## Stat

**Stat("ИмяПоля", "Тип")**

* ИмяПоля — поле, по которому необходимо получить значение показателя,
* Тип — показатель статистики, который необходимо получить.

Функция возвращает значение одного из статистических показателей.

> В таблице представлены требования для входных данных.

| Тип показателя статистики | Значение показателя | Data kind | Data type |
| ------------------------- | ------------------- | ---------- | ---------- |
| Min | Минимальное значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Max | Максимальное значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Mode | Наиболее часто встречающееся значение | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| Avg | Среднее значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| StdDev | Стандартное отклонение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Sum | Сумма значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| SumSq | Сумма квадратов значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Count | Количество значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| UniqueCount | Количество уникальных значений | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| NullCount | Количество пропущенных значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |

Расчет производится по полям, заданным на вход узла [Калькулятор](https://help.loginom.ru/userguide/processors/transformation/calc/). Столбцы, вычисленные в этом же *Калькуляторе*, не будут рассчитаны.

## StdDev

**StdDev(Argument1, Argument2 ...)**

* Аргументы — любые числовые выражения.

Возвращает стандартное отклонение аргументов, определенное на основе несмещенной дисперсии.

## Sum

**Sum(Argument1, Argument2 ...)**

* Аргументы — любые числовые выражения.

Returns the sum of arguments.

## SumSq

**SumSq(Argument1, Argument2 ...)**

* Аргументы — любые числовые выражения.

Returns the sum of squared arguments.
