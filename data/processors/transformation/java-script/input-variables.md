# ![](../../../images/icons/components/javascript_default.svg) Доступ к входным переменным

Для доступа к входным переменным используется объект `InputVariables`.

## Свойства InputVariables

%spoiler%Items%spoiler%

**Items**

Содержит доступную для чтения коллекцию входных переменных узла. Возвращает объект, реализующий интерфейс `IVariableItems` (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%Count%spoiler%

**Count**

Содержит доступное для чтения количество входных переменных узла.  It returns the value of the `number` type.

%/spoiler%

## Examples:

```javascript
import { InputVariables } from "builtIn/Data";

// Перебор входных переменных и вывод в консоль значений их свойств:
for (let i = 0, c = InputVariables.Count; i < c; i++) {
    // Обращение к переменной по индексу
    let variable = InputVariables.Items[i];
    console.log("Index: ", variable.Index);
    console.log("Name: ", variable.Name);
    console.log("DisplayName: ", variable.DisplayName);
    console.log("DataType: ", variable.DataType);
    console.log("DataKind: ", variable.IsNull);
    console.log("DefaultUsageType: ", variable.Value);
    console.log("");
}

// Перебор входных переменных с использованием итератора
for (let variable of InputVariables.Items)
    console.log(variable.Name, " = ", variable.Value);

// Получение из объекта Items массива переменных
let arrayOfVariables = Array.from(InputVariables.Items);
// Outputting the variables values to the console
arrayOfVariables.forEach(variable => {
    console.log(variable.Name, " = ", variable.Value);
});

// Обращение к переменной по имени
console.log(InputVariables.Items["Var0"].Value);
console.log(InputVariables.Items.Var0.Value);

// Вывод свойств переменных
for (let prop in InputVariables.Items)
    console.log(prop);

// Вывод свойств переменной
for (let prop in InputVariables.Items[0])
    console.log(prop);

// Проверка существования переменной "MyVar"
if (InputVariables.Items.MyVar)
    console.log("Переменная существует");

```
