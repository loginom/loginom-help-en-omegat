---
description: Слияние данных в Loginom. Правое соединение. Аналог операции RIGHT JOIN в SQL.
---
# ![Right Join](./../../../images/icons/components/joindata/join-right_default.svg) Right Join

When the join is right (SQL analogue: `RIGHT JOIN`, the joined table is right) the main and joined tables are joined by the key fields. All records of the joined table fall within the resulting data set. They are appended with the fields from the main table. If no mapping was detected by the key fields for the record from the joined table, the Null value is stated in the appended fields.
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

![Link](./merge-fulljoin.png)

Resulting table:

|Name|City Id|City|
|:-|-:|:-|
|Andrey|1|Moscow|
|Sergey|1|Moscow|
|Leonid|2|Saint Petersburg|
|&#60;null>|&#60;null>|Kazan|