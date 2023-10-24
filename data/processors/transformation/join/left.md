---
description: Слияние данных в Loginom. Левое соединение. Аналог операции LEFT JOIN в SQL.
---
# ![Left Join](./../../../images/icons/components/joindata/join-left_default.svg) Left Join

When the join is left (SQL analogue: `LEFT JOIN`, the main table is left), the main and joined tables are joined by the key fields. All records of the main table fall within the resulting data set. They are appended with the fields from the joined table. If no mapping was detected by the key fields for the record from the main table, the Null value is stated in the appended fields.

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
|Leonid|2|Saint Petersburg|
|Sergey|1|Moscow|
|Gregory|4|&#60;null>|