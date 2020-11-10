# ![Левое соединение](../../../images/icons/joindata/join-left_default.svg) Левое соединение

При левом соединении (SQL-аналог: `LEFT JOIN`, левой таблицей является главная таблица) главная и присоединяемая таблицы связываются по ключевым полям. В результирующий набор попадают все записи главной таблицы , они дополняются полями из присоединяемой таблицы, при этом если для записи из главной таблицы не было найдено совпадения по ключевым полям, то добавляемые  поля заполняются значением Null.

For example:

Let's consider two tables as an example. A person - the main table and joined City.

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
|Григорий|4|&#60;null>|