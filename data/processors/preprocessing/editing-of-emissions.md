# ![ ](../../images/icons/components/e-lim-out-lier_default.svg) Eliminate Outliers

## Description

Обработчик предназначен для автоматической корректировки выбросов и экстремальных значений в наборах данных. Для каждого поля исходного набора данных критерии определения выбросов и экстремальных значений задаются пользователем с помощью указания допустимого [стандартного отклонения](https://wiki.loginom.ru/articles/mean-square-deviation.html) или интерквартильного размаха. Под выбросами при этом подразумеваются значения данных, существенно отклоняющиеся от средних, а под экстремальными — значения, которые настолько сильно отклоняются от типичных значений, что перестают соответствовать логике исследуемых процессов и явлений.

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source is a data table.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set is a source table after processing.
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Выбросы — таблица, содержащая строки исходной таблицы, в которых были обнаружены выбросы.
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Экстремальные значения — таблица, содержащая строки исходной таблицы, в которых были обнаружены экстремальные значения.

## Wizard

* **Исходные данные упорядочены** — выставлять данный флаг следует в том случае, когда известно, что числовой ряд является упорядоченным, т. namely, таким, значения которого упорядочены по возрастанию или убыванию (например, по дате или времени). Доступность некоторых методов обработки зависит от состояния данного флага. На обработку логических и строковых полей положение флага не влияет.
* **Область настройки методов обработки выбросов и экстремальных значений** — содержит список полей доступных для обработки. Для каждого поля можно выставить флаг, определяющий наличие обработки, и затем, выделив поле, задать метод редактирования.
* **Определение выбросов и экстремальных значений** — доступны два метода выявления:
   * Стандартное отклонение — критерием является отклонение значения признака от среднего более, чем на заданное число стандартных отклонений. При этом данный параметр отдельно задается для выбросов и для экстремальных значений. Данный метод следует применять, если известно, что распределение данных близко к нормальному.
   * Интерквартильный размах — критерием является расстояние между 1-м и 3-м квартилями распределения значений признака. Если значение признака отклоняется от медианы более, чем на заданное число интерквартильного размаха, то оно считается аномальным. Данный параметр задается отдельно для выбросов и экстремальных значений. Этот метод можно применять и в случае, когда распределение данных отличается от нормального.

Как для выбросов, так и для экстремальных значений доступны следующие методы редактирования:

* оставить без изменения;
* удалять записи — исключить строки с аномальными значениями из набора данных;
* заменять средним — заменять аномалии средним значением столбца;
* заменять медианой — заменять аномалии медианой, вычисленной по столбцу;
* заменять наиболее вероятным — замена аномалий наиболее вероятным значением по столбцу, замена производится на среднее значение из наиболее вероятного интервала, число интервалов варьируется в зависимости от объема выборки — чем она больше, тем больше интервалов;
* заменять заданным значением — замена аномалий на значение, прописанное вручную;
* ограничивать — аномалии будут заменены значением границы, с которой начинается определение аномалии.

Для каждого поля спектр доступных методов определяется тремя характеристиками данных одновременно (см. [data](../../data/README.md)):

* Упорядоченностью;
* Типом;
* Видом.

Таблица применимости по этим характеристикам:

<table>
<tr><th rowspan="2" align="center">Method</th><th colspan="2" align="center">Неупорядоченный набор</th><th colspan="2" align="center">Упорядоченный набор</th></tr>
<tr><th align="center"><img src="../../images/icons/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/data-types/continuous_default.svg"> Continuous</th><th align="center"><img src="../../images/icons/data-types/discrete_default.svg"> Discrete</th><th align="center"><img src="../../images/icons/data-types/continuous_default.svg"> Continuous</th></tr>
<tr><td align="left">Leave unchanged</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Delete records</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td> <td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td></td> <td></td></tr>
<tr><td align="left">Replace with average</td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with median</td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with most frequent</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>
<tr><td align="left">Replace with set value</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td></td><td align="center"> <img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td></td>
<tr><td align="left">Limit</td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td><td align="center"><img src="../../images/icons/data-types/boolean_default.svg"> <img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"> <img src="../../images/icons/data-types/string_default.svg"></td><td align="center"><img src="../../images/icons/data-types/datetime_default.svg"> <img src="../../images/icons/data-types/float_default.svg"> <img src="../../images/icons/data-types/integer_default.svg"></td></tr>
</table>

**See also:**

* [Imputation](../../processors/preprocessing/filling-omissions.md);
* [Anomalous values](https://wiki.loginom.ru/articles/outlier.html).
