---
description: Компонент JavaScript в Loginom. Доступ к выходному набору данных. Объект OutputTable. Методы OutputTable. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Access to the Output Data Set

For access to the output port data, the `OutputTable` object is used.

## OutputTable Properties

%spoiler%Columns%spoiler%

**Columns**

It contains read-only collection of columns of the output data set. It returns the object implementing the `IColumns` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

It contains read-only count of columns of the output data set.  It returns the value of the `number` type.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

It contains read-only count of rows of the output data set.  It returns the value of the `number` type.

%/spoiler%

## OutputTable Methods

%spoiler%Get%spoiler%

**Get(row, col)**

- row: row index. It takes the value of the `number` type.
- col: column index or name. It takes the value of the `number` or `string` types.

The method returns the value of the set column in the set string. The returned value can have the following types: `boolean`, `number`, `string`, `Date`, `undefined`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row: row index. It takes the value of the `number` type.
- col: column index or name. It takes the value of the `number` or `string` types.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

%spoiler%GetColumn%spoiler%

**GetColumn(col)**

- col: column index or name. It takes the value of the `number` or `string` types.

Метод возвращает объект столбца, реализующий интерфейс `IColumn` (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%AssignColumns%spoiler%

**AssignColumns(array)**

- array — итерируемый объект, содержащий значения типа `string` или объекты, реализующих интерфейс `IColumnInfo` (см. [Полное описание API](./api-description.md)).

Метод создает столбцы выходного набора из коллекции имен столбцов или объектов, реализующих интерфейс `IColumnInfo`.

%/spoiler%

%spoiler%AddColumn%spoiler%

**AddColumn(columninfo)**

- columninfo — значение типа `string` или объект, реализующий интерфейс `IColumnInfo` (см. [Полное описание API](./api-description.md)). Необязательный аргумент.

Метод добавляет столбец в конец списка столбцов выходного набора, принимая в качестве аргумента имя столбца или объект, реализующий интерфейс `IColumnInfo`. Возвращает объект, реализующий интерфейс `IOutputColumn` (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%InsertColumn%spoiler%

**InsertColumn(col, columninfo)**

- col — индекса столбца. It takes the value of the `number` type.
- columninfo — объект, реализующий интерфейс `IColumnInfo` (см. [Full API Description](./api-description.md)). Необязательный аргумент.

Метод вставляет столбец по заданному индексу в выходной набор. Возвращает объект, реализующий интерфейс `IOutputColumn` (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%DeleteColumn%spoiler%

**DeleteColumn(col)**

- col: column index or name. It takes the value of the `number` or `string` types.

Метод удаляет столбец по имени или индексу.

%/spoiler%

%spoiler%ClearColumns%spoiler%

**ClearColumns()**

It does not have arguments. Метод очищает список столбцов.

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

The method enables to append the new row to the output data set. It does not have arguments.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col: column index or name. It takes the value of the `number` or `string` types.
- value — value. It takes the values of the following types: `boolean`, `number`, `string`, `Date`, `null`, `undefined`.

The method enables to set the value of the set column in the string appended by the `Append() method`.

%/spoiler%

## Examples:

```javascript
import { OutputTable, DataType, DataKind, UsageType } from "builtIn/Data";

let array = [];
for (let i = 0; i < 3; i++){
    array.push({Name: `Test${i}`, DisplayName: `Тест${i}`, DataType: DataType.Integer, DefaultUsageType: UsageType.Active});
}

// Добавление массива столбцов
OutputTable.AssignColumns(array);

// Удаление столбца по индексу
OutputTable.DeleteColumn(0);

// Удаление столбца по имени
OutputTable.DeleteColumn("Test1");

// Удаление всего списка столбцов
OutputTable.ClearColumns();

// Добавление столбца в конец списка столбцов выходного набора
OutputTable.AddColumn({Name: "COL0",
                       DisplayName: "Дата/Время",
                       DataType: DataType.DateTime,
                       DataKind: DataKind.Continuous,
                       DefaultUsageType: UsageType.Active});

// Вставка столбца по заданному индексу в список столбцов выходного набора
OutputTable.InsertColumn(0, {Name: "COL1",
                             DisplayName: "Признак",
                             DataType: DataType.Boolean});

// Получение ссылки на столбец по имени
let COL0 = OutputTable.GetColumn("COL0");
let COL1 = OutputTable.Columns.COL1;

// Вывод значений свойств столбца
console.log("Index: ", COL1.Index);
console.log("Name: ", COL1.Name);
console.log("DisplayName: ", COL1.DisplayName);
console.log("DataType: ", COL1.DataType);
console.log("DataKind: ", COL1.DataKind);
console.log("DefaultUsageType: ", COL1.DefaultUsageType);

// Добавление строки в выходной набор данных
OutputTable.Append();

// В поле с индексом 0 записываются текущие Дата/Время
OutputTable.Columns[0].Set(new Date());

// В поле с индексом 1 записывается значение true
OutputTable.GetColumn(1).Set(true);

// Копирование значений первой строки во вторую
OutputTable.Append();
for (let i = 0, c = OutputTable.ColumnCount; i < c; i++) {
    let value = OutputTable.Get(0, i);
    OutputTable.Set(i, value);
}

// Проверка, что значение в столбце с индексом 1 не определено
console.assert(OutputTable.IsNull(0, 1));
console.assert(typeof OutputTable.Get(0, 1) == "undefined");


console.log("RowCount = ", OutputTable.RowCount);
// Вывод: RowCount =  2

```
