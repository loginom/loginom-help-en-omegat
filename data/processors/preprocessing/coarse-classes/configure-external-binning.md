---
description: Компонент Конечные классы в Loginom. Настройка внешнего разбиения.
---
# Configure External Binning

Данная настройка необходима в том случае, когда задан порт *Внешние диапазоны квантования*, т.е. в узел Конечные классы подается внешнее разбиение в виде таблицы. Если входной источник данных содержит настройки разбиения для данного столбца, то в мастере для него выбирается назначение *Входное (внешнее разбиение)*. In this case, the binning is taken from the table, and it is not calculated using the algorithm based on the current data.

## Requirements to the External Binning

To use the external binning, it is required to create the table in a certain manner:

* In the case of the continuous data, the external binning string maps one class (bin) for the field values of the main data source.
* In the case of the discrete data, the external binning string maps one unique field value of the main data source.

The columns that must be included into the external binning for the continuous and discrete binning correspondingly are described in the table:

| Column usage type | Column name for auto setup | Data type | For the continuous binning | For the discrete binning | Description |
| -------- | -------- | -------- | -------- | -------- | -------- |
| Column name | ColumnName | String | + | + | Field name of the main data source to which the external binning relates. Namely, the strings that define the external binning for the main data source field are selected by the current column value. |
| Upper bound | UpperBound | Real/integer | + | - | Strictly increasing sequence of binning bounds. In this case, count of classes is calculated with one more class, as it is required to take into account the class that includes the values exceeding the last bound. |
| Upper bound open | IncludeUpperBound | Binary | + | - | Строго постоянное в рамках разбиения одного поля значение, определяющее тип верхней границы диапазона класса — открытая (не включается) или закрытая (включается) |
| Unique value | UniqueValue | Any (valid) | - | + | Unique values of the main data source fields that map the external binning. |
| Class number | ClassNumber | Integer | - | + | The class number that meets the unique value. |

### Example of the External Binning Table

Continuous binning

| Column name | Upper bound | Include upper bound |
| -------- | -------- | -------- |
| COL2 | 3728129 | False |
| COL2 | 7934343 | False |
| COL2 | 10533052 | False |
| COL2 | 30721946 | False |
| COL2 | 36494956 | False |
| COL2 | 39509806 | False |
| COL8 | 490,01 | False |
| COL8 | 2308,07 | False |
| COL8 | 5981,98 | False |
| COL8 | 6600,01 | False |
| COL8 | 10050,99 | False |
| COL8 | 14870 | False |

Discrete binning

|Column name|Class number|Unique value|
|-|-|-|
|COL4|0|female|
|COL4|1|male|
|COL4|2|NULL|
|COL4|2||
|COL6|0|Bronze|
|COL6|1|Silver|
|COL6|2|Gold|
|COL6|2|Platinum|