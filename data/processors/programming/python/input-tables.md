---
description: Компонент Python в Loginom. Доступ к входным наборам данных. Объект типа InputTable. Свойства источника данных. Методы источника данных. Использование модуля builtin_pandas_utils. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Access to the Input Data Sets

Для доступа к данным портов `Входной источник данных[N]` используется кортеж `InputTables[]`, в котором обращение к источнику данных порта происходит через его номер:

`InputTables[N]` where N is a port number (index). The first port has 0 index.

Элементы кортежа имеют тип `DataSourceClass` (см. [Full API Description](./api-description.md)).
Поскольку первый порт присутствует в узле *Python* по умолчанию, для доступа к его данным выделен отдельный класс `InputTable`.

## Data Source Properties

%spoiler%Columns%spoiler%

**Columns**

Содержит доступную для чтения итерируемую коллекцию столбцов. Реализует протоколы *Mapping* и *Sequence*.  Возвращает значение типа `ColumnsClass`. Доступ к элементам может осуществляться через скобочную нотацию [] по именам и по индексам. Элементы коллекции имеют тип `InputColumnClass`, унаследованный от `ColumnClass`, реализующий протокол *Sequence* (см. [Full API Description](./api-description.md)).

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

Метод возвращает столбец входного набора. Возвращаемое значение имеет тип `InputColumnClass`, унаследованный от `ColumnClass`, реализующий протокол *Sequence*. (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row: row index. It takes the value of the `int` type.
- col: column index or name. Принимает значение типа `int` или `str`.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

## builtin_pandas_utils Module Use

Для создания `pandas.DataFrame` по набору данных порта в модуле [builtin_pandas_utils](./api-description.md#modul-builtinpandasutils) реализован метод `to_data_frame`, принимающий в качестве аргумента значение типа `DataSourceClass` (см. пример ниже).

## Examples:

```python
from builtin_data import InputTable, InputTables
from builtin_pandas_utils import to_data_frame
import numpy as np

inputTable0 = InputTables[0]                    #Источник данных с порта №1
inputTable1 = InputTables[1]                    #Источник данных с порта №2
colOutlook0 = inputTable0.Columns["OUTLOOK"]    #Получение ссылки на столбец по имени
colOutlook1 = inputTable1.Columns[1]            #Получение ссылки на столбец по индексу

#Вывод значений свойств столбцов
for column in InputTable.Columns:
    print("Index: ", column.Index)
    print("Name: ", column.Name)
    print("DisplayName: ", column.DisplayName)
    print("DataType: ", column.DataType)
    print("DataKind: ", column.DataKind)
    print("UsageType: ", column.UsageType)
    print("DefaultUsageType: ", column.DefaultUsageType)
    print("RowCount: ", column.RowCount, "\n")

#Вывод значений столбца
for index, value in enumerate(colOutlook0):
    print("Индекс {}, значение {}".format(index, value))

#Чтение значений из входной таблицы методом Get
for i in range(InputTable.RowCount):
    #Вывод значений столбца с индексом 0
    print("InputTable.Get({}, 0) = {}".format(i, InputTable.Get(i, 0)))
    #Вывод значений столбца с именем "CLASS"
    print("InputTable.Get({}, 'CLASS') = {}".format(i, InputTable.Get(i, "CLASS")))

#Получение из столбца "CLASS" массива значений
arrayOfColumnValues = np.array(InputTable.Columns["CLASS"])
print(arrayOfColumnValues)

#Создание pd.DataFrame по входному набору
data = to_data_frame(InputTable)
print(data)

```
