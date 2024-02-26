---
description: Слияние данных в Loginom. Разность.
---
# ![Difference](./../../../images/icons/components/joindata/join-diff_default.svg) Difference

The resulting data set contains records of the main data set for which there is no detected mapping by the key fields in the joined data set. There are only fields of the main data set in the resulting data set. Analogue of this operation in Transact-SQL is `EXCEPT` operator.

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

|Name|City Id|
|:-|-:|
|Gregory|4|
