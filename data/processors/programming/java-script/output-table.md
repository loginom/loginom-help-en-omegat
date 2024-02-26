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

The method returns the column object that implements the `IColumn` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%AssignColumns%spoiler%

**AssignColumns(array)**

- array — iterated object that contains the values of the `string` type or the objects that implement the `IColumnInfo` interface (refer to [Full API Description](./api-description.md)).

The method creates the output data set columns from the collection of columns names of objects that implement the `IColumnInfo` interface.

%/spoiler%

%spoiler%AddColumn%spoiler%

**AddColumn(columninfo)**

- columninfo — value of the `string` type or the object that implements the `IColumnInfo` interface (refer to [Full API Description](./api-description.md)). The optional argument.

The method adds column to the column list end of the output data set taking the column name or the object that implements the `IColumnInfo` interface as an argument. It returns the object that implements the `IOutputColumn` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%InsertColumn%spoiler%

**InsertColumn(col, columninfo)**

- col — column index. It takes the value of the `number` type.
- columninfo — object that implements the `IColumnInfo` interface (refer to [Full API Description](./api-description.md)). The optional argument.

The method inserts the column by the set index into the output data set. It returns the object that implements `IOutputColumn` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%DeleteColumn%spoiler%

**DeleteColumn(col)**

- col: column index or name. It takes the value of the `number` or `string` types.

The method deletes the column by name or index.

%/spoiler%

%spoiler%ClearColumns%spoiler%

**ClearColumns()**

It does not have arguments. The method clears the column list.

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

// Add array of columns
OutputTable.AssignColumns(array);

// Delete column by index
OutputTable.DeleteColumn(0);

// Delete column by name
OutputTable.DeleteColumn("Test1");

// Delete the whole list of columns
OutputTable.ClearColumns();

// Add column to the list end of the output data set columns
OutputTable.AddColumn({Name: "COL0",
                       DisplayName: "Date/Time",
                       DataType: DataType.DateTime,
                       DataKind: DataKind.Continuous,
                       DefaultUsageType: UsageType.Active});

// Insertion of a column into the output data set column list by the set index
OutputTable.InsertColumn(0, {Name: "COL1",
                             DisplayName: "Indicator",
                             DataType: DataType.Boolean});

// Getting reference to the column by name
let COL0 = OutputTable.GetColumn("COL0");
let COL1 = OutputTable.Columns.COL1;

// Outputting the values of the columns properties
console.log("Index: ", COL1.Index);
console.log("Name: ", COL1.Name);
console.log("DisplayName: ", COL1.DisplayName);
console.log("DataType: ", COL1.DataType);
console.log("DataKind: ", COL1.DataKind);
console.log("DefaultUsageType: ", COL1.DefaultUsageType);

// Append string to the output data set
OutputTable.Append();

// The current Date/Time are recorded in the field with index 0
OutputTable.Columns[0].Set(new Date());

// true value is recorded in the field with index 1
OutputTable.GetColumn(1).Set(true);

// Copying the values of the first string to the second one
OutputTable.Append();
for (let i = 0, c = OutputTable.ColumnCount; i < c; i++) {
    let value = OutputTable.Get(0, i);
    OutputTable.Set(i, value);
}

// Checking that the value in the column with index 1 is not defined
console.assert(OutputTable.IsNull(0, 1));
console.assert(typeof OutputTable.Get(0, 1) == "undefined");


console.log("RowCount = ", OutputTable.RowCount);
// Outputting: RowCount =  2

```
