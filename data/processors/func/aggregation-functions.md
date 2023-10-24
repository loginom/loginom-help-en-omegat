---
description: Справка по функциям агрегации данных в Loginom. Статистические функции суммы, количества, минимума, максимума, среднего, медианы, моды, стандартного отклонения, количества уникальных, количества пропусков, первого и последнего элементов.
---
# Aggregation Functions

**Функции агрегации** — статистические функции, которые работают с множеством значений. They return one value that is characteristic of such set.

Рассмотрим все возможные функции агрегации, реализованные в Loginom:

#### ![](./../../images/icons/common/aggregations/factor-sum_default.svg) Сумма
Результатом является сумма значений всех ячеек в столбце.
#### ![](./../../images/icons/common/aggregations/factor-count_default.svg) Количество
Итог — общее количество записей в наборе данных, в том числе пустые записи и записи без значения (*`<null>`*).
#### ![](./../../images/icons/common/aggregations/factor-min_default.svg) Минимум
Результатом является наименьшее значение по столбцу. Пустые записи в агрегации не участвуют, кроме типа ![](./../../images/icons/common/data-types/string_default.svg) Строковый, где пустая запись является наименьшей. Записи с *`<null>`* в агрегации не участвуют вовсе.
#### ![](./../../images/icons/common/aggregations/factor-max_default.svg) Максимум
Результатом является наибольшее значение по столбцу. Для ![](./../../images/icons/common/data-types/string_default.svg) Строкового типа сравнение производится с учетом локали.
#### ![](./../../images/icons/common/aggregations/factor-avg_default.svg) Среднее
Итогом является среднее значение всех ячеек столбца. В расчетах участвуют все поля, кроме пустых и  *`<null>`*.
#### ![](./../../images/icons/common/aggregations/factor-median_default.svg) Медиана
Итог — значение [медианы](https://wiki.loginom.ru/articles/median.html) по столбцу.
#### ![](./../../images/icons/common/aggregations/mode_default.svg) Мода
Итог — значение [моды](https://wiki.loginom.ru/articles/mode.html) по столбцу.
Мода доступна для всех [видов данных](../../data/datakind.md) и [типов данных](../../data/datatype.md).
Колонка результата имеет тип данных исходного поля, а вид данных явно установлен в Дискретный.
Пропущенные значения игнорируются, как и при расчете количества уникальных значений.
В случае, если мод несколько, то будет выбрано наименьшее значение:

* для логического типа данных - False;

* для числовых данных - наименьшее из чисел;

* для строк - наименьшее в лексикографическом порядке.
#### ![](./../../images/icons/common/aggregations/factor-stddev_default.svg) Стандартное отклонение
Результатом является среднеквадратическое [отклонение](https://wiki.loginom.ru/articles/mean-square-deviation.html) по столбцу. Участвующие в агрегации поля такие же, как у агрегации Среднее.
#### ![](./../../images/icons/common/aggregations/factor-unique-count_default.svg) Количество уникальных
Итог — количество уникальных значений записей. При подсчете не учитываются записи со значением *`<null>`* или значением, не соответствующим типу данных.
#### ![](./../../images/icons/common/aggregations/factor-null-count_default.svg) Количество пропусков
Результатом является количество записей с пустыми значениями, со значением *`<null>`* или со значениями, не соответствующими типу данных. Кроме типа данных ![](./../../images/icons/common/data-types/string_default.svg) Строковый, где пропусками считаются записи со значением *`<null>`*.
#### ![](./../../images/icons/common/aggregations/factor-stat-first_default.svg) Первый
Выводится значение первой записи в наборе данных.
#### ![](./../../images/icons/common/aggregations/factor-stat-last_default.svg) Последний
Выводится значение последней записи наборе данных.
#### ![](./../../images/icons/common/aggregations/factor-only_default.svg) Единственный
Выводится единственное уникальное значение, при этом не учитываются (игнорируются) записи без значения (*`<null>`*).





[def]: ./../../images/icons/common/aggregations/mode_default.svg
