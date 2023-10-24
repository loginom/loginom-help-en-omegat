---
description: Компонент JavaScript в Loginom. Доступ к входным наборам данных. Объект InputTable. Методы источника данных. Свойства источника данных. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Access to the Input Data Sets

For access to the data of `Input data source[N]` ports, `InputTables[]` and `InputTable` objects are used. The port data source is accessed by its number:

`InputTables[N]` where N is a port number (index). The first port has 0 index.

As the first port is in the *JavaScript* node by default, there is a separate `InputTable` object to provide access to its data.

## Data Source Properties

%spoiler%Columns%spoiler%

**Columns**

It contains read-only collection of columns. Возвращает объект, реализующий интерфейс `IIntputColumns`. Элементы коллекции — объекты, реализующие интерфейс `IIntputColumn` (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

It contains read-only count of columns.  It returns the value of the `number` type.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

It contains read-only count of rows. It returns the value of the `number` type.

%/spoiler%

## Data Source Methods

%spoiler%Get%spoiler%

**Get(row, col)**

- row: row index. It takes the value of the `number` type.
- col: column index or name. It takes the value of the `number` or `string` types.

The method returns the value of the set column in the set string. The returned value can have the following types: `boolean`, `number`, `string`, `Date`, `undefined`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row: row index. It takes the value of the `number` type.
- col: column index or name. It takes the value of the `number` or `string` type.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

%spoiler%GetColumn%spoiler%

**GetColumn(col)**

- col: column index or name. It takes the value of the `number` or `string` types.

Метод возвращает объект столбца, реализующий интерфейс `IIntputColumn` (см. [Full API Description](./api-description.md)).

%/spoiler%

## Examples:

```javascript
import { InputTable, InputTables } from "builtIn/Data";

let inputTable0 = InputTables[0],                   // Источник данных с порта №1
    inputTable1 = InputTables[1];                   // Источник данных с порта №2
let colOutlook0 = inputTable0.Columns.OUTLOOK,      // Получение ссылки на столбец по имени
    colDefault0 = inputTable0.GetColumn("DEFAULT");
let colOutlook1 = inputTable1.Columns[0],           // Получение ссылки на столбец по индексу
    colDefault1 = inputTable1.GetColumn(1);

// Получение из объекта Columns массива столбцов
let arrayOfColumns = Array.from(InputTable.Columns);
// Вывод значений свойств столбцов в консоль
arrayOfColumns.forEach(column => {
    console.log("Index: ", column.Index);
    console.log("Name: ", column.Name);
    console.log("DisplayName: ", column.DisplayName);
    console.log("DataType: ", column.DataType);
    console.log("DataKind: ", column.DataKind);
    console.log("UsageType: ", column.UsageType);
    console.log("DefaultUsageType: ", column.DefaultUsageType);
    console.log("RowCount: ", column.RowCount);
    console.log("");
});

// Getting the values array from the "CLASS" column
let arrayOfColumnValues = Array.from(InputTable.Columns["CLASS"]);
// Outputting the values of the "CLASS" column
arrayOfColumnValues.forEach((value, index) => {
    console.log(index, ":", value);
});

// Reading the values from the input table using the Get method
for (let i = 0, с = InputTable.RowCount; i < с; i++) {
    // Outputting the values of the column with 0 index
    console.log(`InputTable.Get(${i}, 0) = `, InputTable.Get(i, 0));
    // Outputting the values of the column with the "CLASS" name
    console.log(`InputTable.Get(${i}, "CLASS") = `, InputTable.Get(i, "CLASS"));
}

```
