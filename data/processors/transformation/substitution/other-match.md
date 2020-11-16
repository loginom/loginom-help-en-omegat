# Substitution of the Replacements not Included into the Table

*Replace other* parameter is required for processing of the values that are not included into the *Replacement table* and that are out of the [allowable interval](./exact-match.md#primenenie-dopustimogo-intervala). Four configuration options parameter:

* Do not replace;
* With empty;
* With value;
* With regular expression.

And the row for input of the new value of the records not included into the *Replacement table*.

When *Do not replace* option is selected, the values not included into the *Replacement table* are not subject to the additional processing.

## With empty

When *With empty* option is selected, all values not included into the *Replacement table* will be replaced with the null value `<null>`.

Возьмем первый пример из [замены по точному совпадению](./exact-match.md):

Result of the performed replacement

|Source data value|New value|
|-:|:-|
|12|Poor|
|15|15|
|24|Satisfactory|
|35|35|
|48|Excellent|
|73|73|

С выбранным пунктом *На пропущенное*, данная таблица имела бы такой вид

|Значение исходных данных|Новое значение|
|-:|:-|
|12|Плохо|
|15|`<null>`|
|24|Удовлетворительно|
|35|`<null>`|
|48|Отлично|
|73|`<null>`|

## На значение

Пункт *На значение* заменяет все значения вне *Таблицы замен*, на введенное в строке.

Возьмем второй пример из [замены по точному совпадению](./exact-match.md#primenenie-dopustimogo-intervala):

Result of the performed replacement

|Source data value|New value|
|-:|:-|
|12|Poor|
|15|Poorо|
|24|Satisfactory|
|35|Good|
|48|Excellent|
|73|73|

Выбрав *На значение* и введя в строку `Вне оценочного диапазона`, получим результат

|Значение исходных данных|Новое значение|
|-:|:-|
|12|Плохо|
|15|Плохо|
|24|Удовлетворительно|
|35|Хорошо|
|48|Отлично|
|73|Вне оценочного диапазона|

## На регулярное выражение

Если у параметра *Заменять остальное* выбрать пункт *На регулярное выражение*, то для значений, не найденных при помощи таблицы замен, используется зарезервированное обозначение `$1`. В строке, задающей новое значение, символы `$1` будут заменены на исходное значение.

Для примера используем пример из [замены по регулярному выражению](./regexp-match.md):
<table>
 <tr><th align="left">Исходные данные</th><th colspan="2">Replacement Table</th><th rowspan="2" align="left" valign="top">Заменять остальное:</br>На регулярное выражение</th><th align="left" valign="top">Результат замены</th></tr>


<tr><td>БИК банка</td><th>Замена</th><th>Value</th><td>БИК банка Замена</td></tr>


<tr><td>40147О00</td><td rowspan="4" valign="top">\D</td><td Rowspan="4" valign="top">Ошибочный БИК</td><td rowspan="4" valign="top" align="left">БИК $1 указывается в платежном поручении</td><td align="left">Ошибочный БИК</td></tr>


<tr><td>40147781</td><td align="left">БИК 40147781 указывается в платежном поручении</td></tr>


<tr><td>40155000</td><td align="left">БИК 40155000 указывается в платежном поручении</td></tr>


<tr><td>4017З001</td><td align="left">Ошибочный БИК</td></tr>
</table>