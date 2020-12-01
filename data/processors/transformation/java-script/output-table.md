# ![](../../../images/icons/components/javascript_default.svg) Access to the Output Data Set

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

- row is a row index. It takes the value of the `number` type.
- col is a column index or name. It takes the value of the `number` or `string` types.

The method returns the value of the set column in the set string. The returned value can have the following types: `boolean`, `number`, `string`, `Date`, `undefined`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row is a row index. It takes the value of the `number` type.
- col is a column index or name. It takes the value of the `number` or `string` types.

The method returns the boolean `true` value if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

The method enables to append the new row to the output data set. It does not have arguments.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col is a column index or name. It takes the value of the `number` or `string` types.
- value — value. It takes the values of the following types: `boolean`, `number`, `string`, `Date`, `null`, `undefined`.

The method enables to set the value of the set column in the string appended by the `Append() method`.

%/spoiler%

## Examples:

```javascript
import { OutputTable } from "builtIn/Data";

// Append string to the output data set
OutputTable.Append();
// The true value is recorded in the field with "COL0" name
OutputTable.Set("COL0", true);
// The current Date/Time are recorded in the field with index 1
OutputTable.Set(1, new Date());

// Checking that the value in column No 2 is not defined
console.assert(OutputTable.IsNull(0, 2));
console.assert(typeof OutputTable.Get(0, 2) == "undefined");

// Copying the values of the first string to the second one
OutputTable.Append();
for (let i = 0, c = OutputTable.ColumnCount; i < c; i++) {
    let value = OutputTable.Get(0, i);
    OutputTable.Set(i, value);
}

console.log("RowCount = ", OutputTable.RowCount);
// Outputting: RowCount =  2

```
