---
description: Компонент Python в Loginom. Доступ к входным наборам данных. Объект типа InputTable. Свойства источника данных. Методы источника данных. Использование модуля builtin_pandas_utils. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Доступ к входным наборам данных

Для доступа к данным портов `Входной источник данных[N]` используется кортеж `InputTables[]`, в котором обращение к источнику данных порта происходит через его номер:

`InputTables[N]`, где N — номер (индекс) порта. Первый порт имеет индекс 0.

Элементы кортежа имеют тип `DataSourceClass` (см. [Полное описание API](./api-description.md)).
Поскольку первый порт присутствует в узле *Python* по умолчанию, для доступа к его данным выделен отдельный класс `InputTable`.

## Свойства источника данных

%spoiler%Columns%spoiler%

**Columns**

Содержит доступную для чтения итерируемую коллекцию столбцов. Реализует протоколы *Mapping* и *Sequence*.  Возвращает значение типа `ColumnsClass`. Доступ к элементам может осуществляться через скобочную нотацию [] по именам и по индексам. Элементы коллекции имеют тип `InputColumnClass`, унаследованный от `ColumnClass`, реализующий протокол *Sequence* (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

Содержит доступное для чтения количество столбцов.  Возвращает значение типа `int`.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

Содержит доступное для чтения количество строк. Возвращает значение типа `int`.

%/spoiler%

## Методы источника данных

%spoiler%Get%spoiler%

**Get(row, col)**

- row — индекс строки. Принимает значение типа `int`.
- col — индекс или имя столбца. Принимает значение типов `int` или `str`.

Метод возвращает значение заданного столбца в заданной строке. Возвращаемое значение может иметь типы: `bool`, `int`, `float`, `str`, `datetime.datetime`, `None`.

%/spoiler%

%spoiler%GetColumn%spoiler%

**GetColumn(col)**

- col — индекс или имя столбца. Принимает значение типов `int` или `str`.

Метод возвращает столбец входного набора. Возвращаемое значение имеет тип `InputColumnClass`, унаследованный от `ColumnClass`, реализующий протокол *Sequence*. (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row — индекс строки. Принимает значение типа `int`.
- col — индекс или имя столбца. Принимает значение типа `int` или `str`.

Метод возвращает булево значение `true`, если столбец в заданной строке имеет пропущенное значение. В противном случае возвращается `false`.

%/spoiler%

## Использование модуля builtin_pandas_utils

Для создания `pandas.DataFrame` по набору данных порта в модуле [builtin_pandas_utils](./api-description.md#modul-builtinpandasutils) реализован метод `to_data_frame`, принимающий в качестве аргумента значение типа `DataSourceClass` (см. пример ниже).

## Примеры

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