# ![](../../../images/icons/components/javascript_default.svg) Доступ к выходному набору данных

Для доступа к данным выходного порта используется объект `OutputTable`.

## Свойства OutputTable

%spoiler%Columns%spoiler%

**Columns**

Содержит доступную для чтения коллекцию столбцов выходного набора данных. Возвращает объект, реализующий интерфейс `IColumns` (см. [Полное описание API](./api-description.md)).

%/spoiler%

%spoiler%ColumnCount%spoiler%

**ColumnCount**

Содержит доступное для чтения количество столбцов выходного набора данных.  Возвращает значение типа `number`.

%/spoiler%

%spoiler%RowCount%spoiler%

**RowCount**

Содержит доступное для чтения количество строк выходного набора данных.  Возвращает значение типа `number`.

%/spoiler%

## Методы OutputTable

%spoiler%Get%spoiler%

**Get(row, col)**

- row — индекс строки. Принимает значение типа `number`.
- col — индекс или имя столбца. Принимает значение типов `number` или `string`.

Метод возвращает значение заданного столбца в заданной строке. Возвращаемое значение может иметь типы: `boolean`, `number`, `string`, `Date`, `undefined`.

%/spoiler%

%spoiler%IsNull%spoiler%

**IsNull(row, col)**

- row — индекс строки. Принимает значение типа `number`.
- col — индекс или имя столбца. Принимает значение типов `number` или `string`.

Метод возвращает булево значение `true`, если столбец в заданной строке имеет пропущенное значение. В противном случае возвращается `false`.

%/spoiler%

%spoiler%Append%spoiler%

**Append()**

Метод добавляет новую строку в выходной набор данных. It does not have arguments.

%/spoiler%

%spoiler%Set%spoiler%

**Set(col, value)**

- col — индекс или имя столбца. Принимает значение типов `number` или `string`.
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
