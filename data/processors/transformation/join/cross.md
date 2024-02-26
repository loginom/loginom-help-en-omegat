---
description: Слияние данных в Loginom. Полное соединение (SQL-аналог FULL JOIN). Перекрестное соединение (SQL-аналог CROSS JOIN).
---
# ![Full Join](./../../../images/icons/components/joindata/join-full_default.svg) Full Join

## Cross Join (SQL Analogue: `CROSS JOIN`)

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

![For CROSS JOIN no connection between tables is established](./merge-crossjoin.png)

Resulting table:

|Name|City Id|id|City|
|:-|-:|-:|:-|
|Andrey|1|1|Moscow|
|Andrey|1|2|Saint Petersburg|
|Andrey|1|3|Kazan|
|Leonid|2|1|Moscow|
|Leonid|2|2|Saint Petersburg|
|Leonid|2|3|Kazan|
|Sergey|1|1|Moscow|
|Sergey|1|2|Saint Petersburg|
|Sergey|1|3|Kazan|
|Gregory|4|1|Moscow|
|Gregory|4|2|Saint Petersburg|
|Gregory|4|3|Kazan|

## Full Join (SQL Analogue: `FULL JOIN`)

When the join is full (`FULL JOIN`), the full external join of two data sets is performed. The following records are added to the resulting data set:

1. Inner join (`INNER JOIN`) of the first and second tables.
2. Records of the first table that were not included into the inner join during step 1. For such records, the `NULL` values are appended to the fields matching the second table.
3. Records of the second table that were not included into the inner join during step 1. For such records, the `NULL` values are appended to the fields matching the first table.

Mapping of the key fields is required for such join.

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

![Link](./merge-fulljoin.png)

Resulting table:

|Name|City Id|City|
|:-|-:|:-|
|Andrey|1|Moscow|
|Leonid|2|Saint Petersburg|
|Sergey|1|Moscow|
|Gregory|4|&#60;null>|
|&#60;null>||Kazan|

> **Important:** To use `FULL JOIN` when selecting *Full join* method of join, it is required to map the key fields of the joined data sets in the wizard. If there is no mapping, the `CROSS JOIN` algorithm of join is used. When selecting this join method, the resulting sample volume can get higher very rapidly.

Only the key fields of the main table can be included into the resulting data set for any join (`JOIN`). To include the key fields of the joined table into the resulting data set, it is required to select the following checkbox: *Add joined key fields*. If the checkbox is selected, the resulting table specified in the previous example will be as follows:

|Name|City Id|City|Id|
|:-|-:|:-|:-|
|Andrey|1|Moscow|1|
|Leonid|2|Saint Petersburg|2|
|Sergey|1|Moscow|1|
|Gregory|4|&#60;null>||
|&#60;null>||Kazan|3|