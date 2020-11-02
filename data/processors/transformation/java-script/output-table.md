# ![](../../../images/icons/components/javascript_default.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используется объект `OutputTable`.

## Свойства OutputTable

%spoiler%Columns%spoiler%

**Columns**

Содержит доступную для чтения коллекцию столбцов выходного набора данных. It returns the object implementing the `IColumns` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

Содержит доступное для чтения количество столбцов выходного набора данных.  It returns the value of the `number` type.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

Содержит доступное для чтения количество строк выходного набора данных.  It returns the value of the `number` type.

%/spoiler%

## Методы OutputTable

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

The method returns the boolean `true` value, if the column in the set string has the null value. Otherwise, the `false` value returns.

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

Метод добавляет новую строку в выходной набор данных. It does not have arguments.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col is a column index or name. It takes the value of the `number` or `string` types.
- value — значение. Принимает значения следующих типов: `boolean`, `number`, `string`, `Date`, `null`, `undefined`.

Метод задает значение заданного столбца в строке, добавленной методом `Append()`.

%/spoiler%

## Examples:

```javascript
import { OutputTable } from "builtIn/Data";

// Добавление строки в выходной набор данных
OutputTable.Append();
// В поле с именем "COL0" записывается значение true
OutputTable.Set("COL0", true);
// В поле с индексом 1 записываются текущие Дата/Время
OutputTable.Set(1, new Date());

// Проверка, что значение в столбце №2 не определено
console.assert(OutputTable.IsNull(0, 2));
console.assert(typeof OutputTable.Get(0, 2) == "undefined");

// Копирование значений первой строки во вторую
OutputTable.Append();
for (let i = 0, c = OutputTable.ColumnCount; i < c; i++) {
    let value = OutputTable.Get(0, i);
    OutputTable.Set(i, value);
}

console.log("RowCount = ", OutputTable.RowCount);
// Вывод: RowCount =  2

```
