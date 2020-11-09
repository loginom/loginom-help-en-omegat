# ![Разность](../../../images/icons/joindata/join-diff_default.svg) Разность

Результирующий набор данных содержит записи основного набора, для которых по ключевым полям не найдено соответствий в присоединяемом наборе. В результирующем наборе присутствуют поля только основного набора. SQL-операторов аналогов данной операции нет.

For example:

Let's consider two tables as an example. Персона - главная таблица и присоединяемою Город.

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

|Имя|Id города|
|:-|-:|
|Григорий|4|
