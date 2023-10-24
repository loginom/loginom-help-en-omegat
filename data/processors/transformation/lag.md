---
description: Скользящее окно в Loginom. Предварительная обработка данных. Нейронные сети. Прогнозирование. Мастер настройки.
---
# ![Lag](./../../images/icons/components/sliding-window_default.svg) Lag

The [windowing method](https://wiki.loginom.ru/articles/windowing-method.html) of data processing is used for data preprocessing during forecasting when it is required to supply the values of several related lags of the source data set to the analyzer input (for example, neural network). The "lag" term reflects the processing nature. A continuous data section is selected. It is called a lag that is "sliding", in its turn, along the whole source data set.

In the result, the data set will be obtained. Its field will contain the value that complies with the current lag (it will have the same name as in the source data set). The fields with the values moved to the past and to the future from the current lag correspondingly will be located to the left and to the right of it.

Thus, the processing based on the windowing method has two parameters:

* **Depth period**: lag count to the "past".
* **Forecast horizon**: the lag count to the "future".

It should be noted that incomplete records will be generated for the bound lag positions (start and end of the source sample): null values for the "past" lags will be generated at the source sample start, and for the "future" lags - at the end. On case by case basis, a user can include such incomplete records into the resulting sample or exclude them.

%spoiler%Example:%spoiler%

Source table:

| Date | Sales, pieces |
| :--- | -----------: |
| 01.09.2011 | 45 |
| 01.10.2011 | 82 |
| 01.11.2011 | 120 |
| 01.12.2011 | 192 |
| 01.01.2012 | 229 |
| 01.02.2012 | 161 |

For `Sales, pieces` field, it is required to set *Depth period* parameter equal to two, and *Forecast horizon* parameter equal to one. Different resulting tables will be obtained according to *Leave incomplete records* parameter.

The resulting table in the case of *Leave incomplete records* value:

| Date | Sales, pieces[-2] | Sales, pieces[-1] | Sales, pieces | Sales, pieces[+1] |
| :--- | ---------------: | ---------------: | -----------: | ---------------: |
| | | | | 45 |
| 01.09.2011 | | | 45 | 82 |
| 01.10.2011 | | 45 | 82 | 120 |
| 01.11.2011 | 45 | 82 | 120 | 192 |
| 01.12.2011 | 82 | 120 | 192 | 229 |
| 01.01.2012 | 120 | 192 | 229 | 161 |
| 01.02.2012 | 192 | 229 | 161 | |
| | 229 | 161 | | |
| | 161 | | | &nbsp; |

%/spoiler%

## Ports

### Input

* ![Input data source](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source**: the port for connection of the input data set.

### Output

* ![Output data source](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set**: the table with the data set appended with biased fields is output to the port.

## Wizard

The wizard window contains a list of the input table fields. The following configured features are available for each field:

* **Depth period**: number of values from the previous records for which the new fields are created in the output data set.
* **Forecast horizon**: number of values from the subsequent records for which the new fields are created in the output data set.

*Incomplete records processing method* parameter provides the following methods:

* **Leave incomplete records** enables to save all records added by the node.
* **Delete added incomplete records** enables to delete the records added by the node not involving the records from the source data set.
* **Delete all incomplete records** enables to delete the records added by the node and the records with null values in the added fields.

The resulting table options from the example with different *Incomplete records processing methods*.

The resulting table in the case of *Leave incomplete records* value:

| Date | Sales, pieces[-2] | Sales, pieces[-1] | Sales, pieces | Sales, pieces[+1] |
| :--- | ---------------: | ---------------: | -----------: | ---------------: |
| | | | | 45 |
| 01.09.2011 | | | 45 | 82 |
| 01.10.2011 | | 45 | 82 | 120 |
| 01.11.2011 | 45 | 82 | 120 | 192 |
| 01.12.2011 | 82 | 120 | 192 | 229 |
| 01.01.2012 | 120 | 192 | 229 | 161 |
| 01.02.2012 | 192 | 229 | 161 | |
| | 229 | 161 | | |
| | 161 | | | &nbsp; |

The resulting table in the case of *Delete added incomplete records* value:

| Date | Sales, pieces[-2] | Sales, pieces[-1] | Sales, pieces | Sales, pieces[+1] |
| :--- | ---------------: | ---------------: | -----------: | ---------------: |
| 01.09.2011 | | | 45 | 82 |
| 01.10.2011 | | 45 | 82 | 120 |
| 01.11.2011 | 45 | 82 | 120 | 192 |
| 01.12.2011 | 82 | 120 | 192 | 229 |
| 01.01.2012 | 120 | 192 | 229 | 161 |
| 01.02.2012 | 192 | 229 | 161 | &nbsp; |

The resulting table in the case of *Delete all incomplete records* value:

| Date | Sales, pieces[-2] | Sales, pieces[-1] | Sales, pieces | Sales, pieces[+1] |
| :--- | ---------------: | ---------------: | -----------: | ---------------: |
| 01.11.2011 | 45 | 82 | 120 | 192 |
| 01.12.2011 | 82 | 120 | 192 | 229 |
| 01.01.2012 | 120 | 192 | 229 | 161 |
