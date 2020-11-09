# ![Full join](../../../images/icons/joindata/join-full_default.svg) Full join

## Cross join (SQL analogue: `CROSS JOIN`)

When the join is full ( `CROSS JOIN`), the cross join (or Cartesian product) is performed. Each row of one table is joined with each row of the second table providing all possible combinations of rows of two tables.
In the case of such join, the order of tables (left, right) is not important, and it is not required to map the key fields.

For example:

Let's consider two tables as an example. Main table — A person, joined — A city.

Main table:

|Name|City Id|
|:-|-:|
|Andrey|1|
|Leonid|2|
|Sergey|1|
|Gregory|4|

Joined table:

|Id|City|
|-:|:-|
|1|Moscow|
|2|Saint Petersburg|
|3|Kazan|

![Link](./merge.svg)

Resulting table:

|Name|City Id|City|
|:-|-:|:-|
|Andrey|1|Moscow|
|Andrey|1|Saint Petersburg|
|Andrey|1|Kazan|
|Leonid|2|Moscow|
|Leonid|2|Saint Petersburg|
|Leonid|2|Kazan|
|Sergey|1|Moscow|
|Sergey|1|Saint Petersburg|
|Sergey|1|Kazan|
|Gregory|4|Moscow|
|Gregory|4|Saint Petersburg|
|Gregory|4|Kazan|

## Full join (SQL analogue: `FULL JOIN`)

При полном соединении (`FULL JOIN`) производится полное внешнее соединение двух наборов. В результирующий набор добавляются следующие записи:

1. Внутреннее соединение (`INNER JOIN`) первой и второй таблиц;
2. Записи первой таблицы, которые не вошли во внутреннее соединение на шаге 1. Для таких записей поля, соответствующие второй таблице, заполняются значениями `NULL`;
3. Записи второй таблицы, которые не вошли во внутреннее соединение на шаге 1. Для таких записей поля, соответствующие первой таблице, заполняются значениями `NULL`.

При таком соединении необходимо сопоставление ключевых полей.

For example:

Let's consider two tables as an example. Main table — A person, joined — A city.

Main table:

|Name|City Id|
|:-|-:|
|Andrey|1|
|Leonid|2|
|Sergey|1|
|Gregory|4|

Joined table:

|Id|City|
|-:|:-|
|1|Moscow|
|2|Saint Petersburg|
|3|Kazan|

![Link](./merge.svg)

Resulting table:

|Name|City Id|City|
|:-|-:|:-|
|Andrey|1|Moscow|
|Leonid|2|Saint Petersburg|
|Sergey|1|Moscow|
|Gregory|4|&#60;null>|
|&#60;null>||Kazan|

> **Важно:** Для того, чтобы при способе слияния *Полное соединение* использовать `FULL JOIN` соединение, необходимо в мастере настройки сопоставить ключевые поля соединяемых наборов. Если сопоставление отсутствует, то задействуется алгоритм `CROSS JOIN` соединения. При данном способе слияния объем результирующей выборки может очень быстро расти.

При любом соединении (`JOIN`) в результирующий набор данных включаются ключевые поля только главной таблицы. Чтобы включить ключевые поля присоединяемой таблицы в результирующий набор данных, необходимо установить флаг *Добавлять присоединяемые ключевые поля*. Если флаг установлен, то результрующая таблица из предыдущего примера будет выглядеть следующим образом:

|Name|City Id|City|Id|
|:-|-:|:-|:-|
|Andrey|1|Moscow|1|
|Leonid|2|Saint Petersburg|2|
|Sergey|1|Moscow|1|
|Gregory|4|&#60;null>||
|&#60;null>||Kazan|3|
