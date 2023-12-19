---
description: Компонент Python в Loginom. Доступ к выходному набору данных. Объект типа OutputTable. Методы OutputTable. Использование модуля builtin_pandas_utils. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Access to the Output Data Set

Для доступа к данным выходного порта используется объект типа `OutputTable`.

## OutputTable Properties

%spoiler%Columns%spoiler%

**Columns**

It contains read-only iterated collection of columns. It implements *Mapping* and *Sequence* protocols.  It returns the value of the `ColumnsClass` type. Доступ к элементам может осуществляться через скобочную нотацию [] по именам и по индексам. При установке флага *Разрешить формировать выходные столбцы из кода* элементы коллекции имеют тип `ConfigurableOutputColumnClass`, иначе — `OutputColumnClass`. Оба этих типа унаследованны от `ColumnClass`, и реализуют протокол *Sequence* (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

It contains read-only count of columns of the output data set.  It returns the value of the `int` type.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

It contains read-only count of rows of the output data set.  It returns the value of the `int` type.

%/spoiler%

## OutputTable Methods

%spoiler%Get%spoiler%

**Get(row, col)**

- row: row index. It takes the value of the `int` type.
- col: column index or name. It takes the value of the `int` or `str` types.

The method returns the value of the set column in the set string. The returned value can have the following types: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row: row index. It takes the value of the `int` type.
- col: column index or name. It takes the value of the `int` or `str` types.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

%spoiler%GetColumn%spoiler%

**GetColumn(col)**

- col: column index or name. It takes the value of the `int` or `str` types.
   При установке флага *Разрешить формировать выходные столбцы из кода* возвращается значение типа `ConfigurableOutputColumnClass`, иначе — `OutputColumnClass`. Оба этих типа унаследованны от `ColumnClass`, и реализуют протокол *Sequence* (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

The method enables to append the new row to the output data set. It does not have arguments.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col: column index or name. It takes the value of the `int` or `str` types.
- value — value. It takes the values of the following types: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

The method enables to set the value of the set column in the string appended by the `Append() method`.

%/spoiler%

%spoiler%AssignColumns%spoiler%

**AssignColumns(array)**

- array — итерируемый объект, содержащий элементы типа ColumnInfo (см. [Full API Description](./api-description.md)).
   Метод создает столбцы выходного набора из коллекции элементов типа ColumnInfo.

%/spoiler%

%spoiler%AddColumn%spoiler%

**AddColumn(ColumnInfo, Name, DisplayName, DataType, DataKind, DefaultUsageType)**

It takes arguments by key words:

- ColumnInfo — value of the ColumnInfo type (refer to [Full API Description](./api-description.md)). The optional argument.
- Name — column name, the value of the `str` type. The optional argument.
- DisplayName — column caption, the value of the `str` type. The optional argument.
- DataType — column data type, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.
- DataKind — the column data kinds, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.
- DefaultUsageType — default column usage type, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.

The method adds column to the column list end of the output data set. It returns the value of the OutputColumnClass type (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%InsertColumn%spoiler%

**InsertColumn(Index, ColumnInfo, Name, DisplayName, DataType, DataKind, DefaultUsageType)**

It takes arguments by key words:

- Index — column index in the column collection that takes the value of the `int` type.
- ColumnInfo — value of the ColumnInfo type (refer to [Full API Description](./api-description.md)). The optional argument.
- Name — column name, the value of the `str` type. The optional argument.
- DisplayName — column caption, the value of the `str` type. The optional argument.
- DataType — column data type, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.
- DataKind — the column data kinds, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.
- DefaultUsageType — default column usage type, the value of the `int` type (refer to [Enumerations](./enum.md)). The optional argument.

The method inserts the column by the set index into the output data set. It returns the value of the OutputColumnClass type (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%DeleteColumn%spoiler%

**DeleteColumn(col)**

- col: column index or name. It takes the value of the `int` or `str` types.
   The method deletes the column by name or index.

%/spoiler%

%spoiler%ClearColumns%spoiler%

**ClearColumns()**

It does not have arguments. The method clears the column list.

%/spoiler%

## builtin_pandas_utils Module Use

Если включена опция "Разрешить формировать выходные столбцы из кода", доступны следующие методы (см. Example No2):

%spoiler%to_data_frame%spoiler%

**to_data_frame(table, dataframe, with_index)**

Метод задает структуру полей `OutputTable` по `pandas.DataFrame`. Arguments:

- table — ссылка на выходной набор OutputTableClass;
- dataframe — ссылка на `pandas.DataFrame`, структура которого используется для создания столбцов выходного набора;
- with_index — если аргумент принимает `True`, то индексы `pandas.DataFrame` включаются в структуру выходного набора. The optional argument. The default value is `False`.

%/spoiler%

%spoiler%fill_table%spoiler%

**fill_table(table, dataframe, with_index)**

Метод осуществляет запись из `pandas.DataFrame` в `OutputTable`. Arguments:

- table — ссылка на выходной набор. Принимает значение типа `OutputTableClass`;
- dataframe — ссылка на `pandas.DataFrame`;
- with_index — если аргумент принимает `True`, то индексы `pandas.DataFrame` выгружаются в выходной набор. The optional argument. The default value is `False`.

%/spoiler%

## Examples:

### Example No1

```python
from builtin_data import InputTable, OutputTable, DataType, DataKind, UsageType
import datetime

#Copy input data set columns
OutputTable.AssignColumns(InputTable.Columns)
#Delete column by index
OutputTable.DeleteColumn(0)
#Delete column by name
OutputTable.DeleteColumn("Test1")
#Delete the whole list of columns
OutputTable.ClearColumns()
#Add column to the list end of the output data set columns
OutputTable.AddColumn(Name="COL0",
                      DisplayName="Date/Time",
                      DataType=DataType.DateTime,
                      DataKind=DataKind.Continuous,
                      DefaultUsageType=UsageType.Active)
#Insertion of a column into the output data set column list by the set index
OutputTable.InsertColumn(Index=0,
                         Name="COL1",
                         DisplayName="Indicator",
                         DataType=DataType.Boolean)
#Getting reference to the column by name
COL0 = OutputTable.GetColumn("COL0")
COL1 = OutputTable.GetColumn("COL1")
#Outputting the values of the columns properties
print("Index: ", COL1.Index)
print("Name: ", COL1.Name)
print("DisplayName: ", COL1.DisplayName)
print("DataType: ", COL1.DataType)
print("DataKind: ", COL1.DataKind)
print("DefaultUsageType: ", COL1.DefaultUsageType)

#Append string to the output data set
OutputTable.Append()
#The current Date/Time are recorded in the field with index 0
OutputTable.Columns[1].Set(datetime.datetime.now())
#true value is recorded in the field with index 1 
OutputTable.GetColumn(0).Set(True)
#Copying the values of the first string to the second one
OutputTable.Append()
for i in range(OutputTable.ColumnCount):
    value = OutputTable.Get(0, i)
    OutputTable.Set(i, value)

#Checking that the value in the string with index 0 in the column with index 1 is not defined
print(OutputTable.IsNull(0, 1))
print(OutputTable.Get(0, 1) is None)

print("RowCount = ", OutputTable.RowCount)
#Outputting: RowCount =  2

```

### Example No2

Apply `builtin_pandas_utils` module

```python
from builtin_data import InputTable, OutputTable, ConfigurableOutputTableClass
from builtin_pandas_utils import to_data_frame, prepare_compatible_table, fill_table

#The input port is optional, and it is possible that it does not contain data
if InputTable:
    #Create pd.DataFrame by input data set
    input_frame = to_data_frame(InputTable)
    #input_frame grouping
    output_frame = input_frame.groupby(["Class"]).sum()
    #Если включена опция "Разрешить формировать выходные столбцы из кода",
    #структуру выходного набора можно подготовить по pd.DataFrame
    assert isinstance(OutputTable, ConfigurableOutputTableClass)
    #Определение структуры выходного набора
    prepare_compatible_table(OutputTable, output_frame, with_index=True)
    #Заполнение выходного набора
    fill_table(OutputTable, output_frame, with_index=True)

```
