# ![Внутреннее соединение](../../../images/icons/joindata/join-inner_default.svg) Внутреннее соединение

При внутреннем соединении (SQL-аналог: `INNER JOIN`) происходит соединение двух таблиц. Для данного способа слияния порядок таблиц не важен.
Результирующий набор данных содержит все строки, для которых найдено совпадение ключевых полей главной и присоединяемой таблицы.

For example:

Let's consider two tables as an example. Персона - главная таблица и присоединяемая Город.

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

|Имя|Id города|Город|
|:-|-:|:-|
|Андрей|1|Москва|
|Леонид|2|Санкт-Петербург|
|Сергей|1|Москва|
