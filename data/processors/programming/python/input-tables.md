---
description: Компонент Python в Loginom. Доступ к входным наборам данных. Объект типа InputTable. Свойства источника данных. Методы источника данных. Использование модуля builtin_pandas_utils. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Access to the Input Data Sets

To have access to the data of `Input data source[N]` ports, `InputTables[]` tuple is used. Access to the port data source is provided by its number in this tuple:

`InputTables[N]` where N is a port number (index). The first port has 0 index.

The tuple elements have the`DataSourceClass` type (refer to [Full API Description](./api-description.md)).
As the first port is in the *Python* node by default, there is a separate `InputTable` class to provide access to its data.

## Data Source Properties

%spoiler%Columns%spoiler%

**Columns**

It contains read-only iterated collection of columns. It implements *Mapping* and *Sequence* protocols.  It returns the value of the `ColumnsClass` type. Access to the elements can be provided by means of [] parenthetic notation by names and indexes. The collection elements have the `InputColumnClass` type inherited from `ColumnClass` that implements the *Sequence* protocol (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

It contains read-only count of columns.  It returns the value of the `int` type.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

It contains read-only count of rows. It returns the value of the `int` type.

%/spoiler%

## Data Source Methods

%spoiler%Get%spoiler%

**Get(row, col)**

- row: row index. It takes the value of the `int` type.
- col: column index or name. It takes the value of the `int` or `str` types.

The method returns the value of the set column in the set string. The returned value can have the following types: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

%/spoiler%

%spoiler%GetColumn%spoiler%

**GetColumn(col)**

- col: column index or name. It takes the value of the `int` or `str` types.

The method returns the input data set column. The returned value has the `InputColumnClass` type inherited from `ColumnClass` that implements the *Sequence* protocol. (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row: row index. It takes the value of the `int` type.
- col: column index or name. It takes the value of the `int` or `str` type.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

## builtin_pandas_utils Module Use

To create `pandas.DataFrame` by the port data set in [builtin_pandas_utils](./api-description.md#modul-builtinpandasutils) module, `to_data_frame` method that takes as an argument the value of the `DataSourceClass` type is implemented (refer to the example below).

## Examples:

```python
from builtin_data import InputTable, InputTables
from builtin_pandas_utils import to_data_frame
import numpy as np

inputTable0 = InputTables[0]                    #Source of the data from port No №1
inputTable1 = InputTables[1]                    #Source of the data from port No2
colOutlook0 = inputTable0.Columns["OUTLOOK"]    #Getting reference to the column by name
colOutlook1 = inputTable1.Columns[1]            #Getting reference to the column by index

#Outputting the values of the columns properties
for column in InputTable.Columns:
    print("Index: ", column.Index)
    print("Name: ", column.Name)
    print("DisplayName: ", column.DisplayName)
    print("DataType: ", column.DataType)
    print("DataKind: ", column.DataKind)
    print("UsageType: ", column.UsageType)
    print("DefaultUsageType: ", column.DefaultUsageType)
    print("RowCount: ", column.RowCount, "\n")

#Outputting the column values
for index, value in enumerate(colOutlook0):
    print("Индекс {}, значение {}".format(index, value))

#Reading the values from the input table using the Get method
for i in range(InputTable.RowCount):
    #Outputting the values of the column with 0 index
    print("InputTable.Get({}, 0) = {}".format(i, InputTable.Get(i, 0)))
    #Outputting the values of the column with the "CLASS" name
    print("InputTable.Get({}, 'CLASS') = {}".format(i, InputTable.Get(i, "CLASS")))

#Getting the values array from the "CLASS" column
arrayOfColumnValues = np.array(InputTable.Columns["CLASS"])
print(arrayOfColumnValues)

#Creation of pd.DataFrame by the input data set
data = to_data_frame(InputTable)
print(data)

```
