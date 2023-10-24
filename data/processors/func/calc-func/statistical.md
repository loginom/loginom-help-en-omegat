---
description: Справка по статистическим функциям Loginom. Работа с функциями статистики Avg, DKhi2, FKhi2, InvKhi2, Max, Min, PKhi2, StdDev, Sum, SumSq. Описание функций и используемых аргументов.
---
# Статистические функции

## Avg

**Avg(Аргумент1, Аргумент2 ...)**

* Аргументы — любые числовые выражения.

Возвращает среднее арифметическое аргументов.

## DKhi2

**DKhi2(Степени\_свободы, Аргумент)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Функция плотности гамма-распределения хи-квадрат.

## FKhi2

**FKhi2(Степени\_свободы, Аргумент)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Интегральная функция гамма-распределения, равная (1 - односторонняя вероятность распределения хи-квадрат) с n степенями свободы.

## InvKhi2

**InvKhi2(Степени\_свободы, Вероятность)**

* Степени\_свободы — число степеней свободы.
* Вероятность — вероятность, связанная с гамма-распределением.

Возвращает обратное гамма-распределение для интегральной функции, равной (1 - односторонняя вероятность распределения хи-квадрат). Если p=FKhi2(N, X), то InvKhi2(N, P) = X

## Max

**Max(Аргумент1, Аргумент2 ...)**

* Аргумент1,
* Аргумент2,
* ... — числовые выражения.

Возвращает максимальное из аргументов.

## Min

**Min(Аргумент1, Аргумент2 ...)**

* Аргумент1,
* Аргумент2,
* ... — числовые выражения.

Возвращает минимальное из аргументов.

## PKhi2

**PKhi2(Степени\_свободы, Аргумент)**

* Степени\_свободы — число степеней свободы.
* Аргумент — значение, для которого требуется вычислить плотность распределения.

Возвращает одностороннюю вероятность распределения хи-квадрат.  

## Stat  

**Stat("ИмяПоля", "Тип")**

* ИмяПоля — поле, по которому необходимо получить значение показателя,
* Тип — показатель статистики, который необходимо получить.  

Функция возвращает значение одного из статистических показателей.  

> В таблице представлены требования для входных данных.

| Тип показателя статистики | Значение показателя | Вид данных | Тип данных |
| ------------------------- | ------------------- | ---------- | ---------- | 
| Min | Минимальное значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Max | Максимальное значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Mode | Наиболее часто встречающееся значение | ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| Avg | Среднее значение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| StdDev | Стандартное отклонение | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Sum | Сумма значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| SumSq | Сумма квадратов значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| Count | Количество значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| UniqueCount | Количество уникальных значений | ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| NullCount | Количество пропущенных значений | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный, ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный, ![](./../../../images/icons/common/data-types/integer_default.svg) Целый, ![](./../../../images/icons/common/data-types/string_default.svg) Строковый, ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический, ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |

Расчет производится по полям, заданным на вход узла [Калькулятор](https://help.loginom.ru/userguide/processors/transformation/calc/). Столбцы, вычисленные в этом же *Калькуляторе*, не будут рассчитаны. 

## StdDev

**StdDev(Аргумент1, Аргумент2 ...)**

* Аргументы — любые числовые выражения.

Возвращает стандартное отклонение аргументов, определенное на основе несмещенной дисперсии.

## Sum

**Sum(Аргумент1, Аргумент2 ...)**

* Аргументы — любые числовые выражения.

Возвращает  сумму аргументов.

## SumSq

**SumSq(Аргумент1, Аргумент2 ...)**

* Аргументы — любые числовые выражения.

Возвращает сумму квадратов аргументов.
