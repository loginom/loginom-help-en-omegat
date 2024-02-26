---
description: Компонент Квантование в Loginom. Структура результирующего набора.
---
# Resulting Data Set Structure

The resulting data set consists of the source data set columns and the columns calculated by the node. They are described in the table:

|Column name|Description|
|:-|:-|
|Bins identifier|Field name|
|Bin number|Index bin number|
|Caption|Bin caption that is set by the wizard template|
|Lower bound|Lower bin bound|
|Upper bound|Upper bin bound|
|Lower bin bound inclusive|false: the bin bound is not included into the bin;<br> true: the bin bound is included into the bin.|
|Upper bin bound inclusive|false: the bin bound is not included into the bin;<br> true: the bin bound is included into the bin.|
|Lower bin bound open|true: if «Lower bin bound open» checkbox is selected;<br> false: if «Lower bin bound open» checkbox is not selected.|
|Upper bin bound open|true: if «Upper bin bound open» checkbox is selected;<br> false: if «Upper bin bound open» checkbox is not selected.|
|Out of bin value| The values that are not included into bins:<br> -1 – the value that is less than the least bin bound;<br> 0 – the value that is included into one of the bins;<br> 1 – the value that exceeds the upper bin bound.|