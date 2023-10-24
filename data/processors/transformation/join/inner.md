---
description: Слияние данных в Loginom. Внутреннее соединение. Аналог операции INNER JOIN в SQL.
---
# ![Inner Join](./../../../images/icons/components/joindata/join-inner_default.svg) Inner Join

Two tables are joined in the case of the inner join (SQL analogue: `INNER JOIN`). The order of tables is not important for this join method.
The resulting data set contains all rows for which mapping of the key fields of the main and joined table has been detected.

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
