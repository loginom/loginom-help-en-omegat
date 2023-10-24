---
description: Компонент Заполнение пропусков в Loginom. Автоматическое заполнение пропусков. Методы обработки данных (заменять средним, заменять медианой, заменять на 0, заменять случайным). Мастер настройки.
---
# ![ ](./../../images/icons/components/plausible_default.svg) Заполнение пропусков

## Описание

Компонент предназначен для автоматического заполнения пропущенных значений в наборах данных.
Для каждого столбца исходного набора данных пользователь может выбрать наиболее подходящий метод заполнения пропусков. Пропусками считаются Null-значения.

> **Примечание:** узел не обрабатывает поля с переменным типом данных (см. [типы данных](./../../data/datatype.md)).

## Порты

### Вход

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Входной источник данных (таблица данных).

### Выход

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Выходной набор данных (таблица данных).

## Мастер настройки

Настройка соответствия между столбцами проводится в интерфейсах [таблица](./../../workflow/ports/table-interface.md) или [связи](./../../workflow/ports/connections-interface.md).

### Настройка заполнения пропусков

* **Исходные данные упорядочены** — установку данного флага следует производить в том случае, когда известно, что данные являются упорядоченными. Например, временной или иной ряд, значения которого упорядочены по возрастанию или убыванию (например, по дате или времени). Для упорядоченных и неупорядоченных данных могут применяться различные методы заполнения пропусков.
* **Допустимый процент пропусков** — принимает значение в процентах и определяет порог, после которого заполнение пропусков не происходит. Например, если этому параметру задано значение 50, то поля, содержащие более 50% пропусков, заполняться не будут.
* **Random seed** — начальное число (целое, положительное), которое используется для инициализации генератора псевдослучайных чисел. Последовательность чисел генератора полностью определяется начальным числом. Если генератор повторно инициализируется с тем же начальным числом, он выдаст ту же последовательность чисел.

  Параметр влияет на порядок замены случайными значениями. Можно повторить результат выполнения узла, если подать те же данные и выставить тот же random seed.

  Для параметра доступны следующие команды:
  
  * Всегда случайно — начальное число всегда будет случайным.
  * Генерировать — сгенерируется новое начальное число.
  * Копировать — в буфер обмена будет скопировано указанное значение.

* **Область настройки методов обработки пропусков** — содержит список полей доступных для обработки, с указанием вида данных. Для каждого поля можно выставить флаг, задающий необходимость обработки, и затем выставить метод заполнения пропусков.

Доступны следующие методы обработки:

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

Для каждого поля спектр доступных методов определяется тремя характеристиками данных одновременно (см. [данные](./../../data/README.md)):

* упорядоченностью;
* типом;
* видом.

Таблица применимости по этим характеристикам:

<table>
<tr><th valign=top align=center rowspan=2>Метод</th><th align=center colspan=2>Неупорядоченный набор</th><th align=center colspan=2>Упорядоченный набор</th></tr>
<tr><th align=center><img src=../../images/icons/common/data-types/discrete_default.svg> Дискретный</th><th align=center><img src=../../images/icons/common/data-types/continuous_default.svg> Непрерывный</th><th align=center><img src=../../images/icons/common/data-types/discrete_default.svg> Дискретный</th><th align=center><img src=../../images/icons/common/data-types/continuous_default.svg> Непрерывный</th></tr>

<tr><td align=left>Заменять средним</td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg></td><td align=center> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Заменять медианой</td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Заменять наиболее вероятным</td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Заменять на 0</td><td align=center>  <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <td align=center> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <td align=center> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Заменять случайными значениями</td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Линейная интерполяция</td><td></td><td></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Кубическая интерполяция</td><td></td><td></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Сплайн-интерполяция</td><td></td><td></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td></tr>

<tr><td align=left>Оставить без изменения</td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td></td><td></td></tr>

<tr><td align=left>Удалять записи</td><td align=center><img src=../../images/icons/common/data-types/boolean_default.svg> <img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg> <img src=../../images/icons/common/data-types/string_default.svg></td><td align=center><img src=../../images/icons/common/data-types/datetime_default.svg> <img src=../../images/icons/common/data-types/float_default.svg> <img src=../../images/icons/common/data-types/integer_default.svg></td><td align=center></td><td align=center></td></tr>

<tr><td align=left>Заменять значением «Не задано»</td><td align=center><img src=../../images/icons/common/data-types/string_default.svg></td><td></td><td align=center><img src=../../images/icons/common/data-types/string_default.svg></td><td></td></tr>

</table>

**Смотри также:**

* [Редактирование выбросов](./eliminate-outliers.md)
