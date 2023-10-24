---
description: Компонент JavaScript в Loginom. Доступ к входным переменным. Объект InputVariables. Свойства InputVariables. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Access to the Input Variables

For access to the input variables, the `InputVariables` object is used.

## InputVariables Properties

%spoiler%Items%spoiler%

**Items**

It contains read-only collection of the input variables of the node. It returns the object implementing the `IVariableItems` interface (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%Count%spoiler%

**Count**

It contains read-only count of the input node variables.  It returns the value of the `number` type.

%/spoiler%

## Examples:

```javascript
import { InputVariables } from "builtIn/Data";

// Iterating over the input variables and outputting the values of their properties to the console:
for (let i = 0, c = InputVariables.Count; i < c; i++) {
    // Access to the variable by index
    let variable = InputVariables.Items[i];
    console.log("Index: ", variable.Index);
    console.log("Name: ", variable.Name);
    console.log("DisplayName: ", variable.DisplayName);
    console.log("DataType: ", variable.DataType);
    console.log("DataKind: ", variable.IsNull);
    console.log("DefaultUsageType: ", variable.Value);
    console.log("");
}

// Iterating over the input variables by means of iterator
for (let variable of InputVariables.Items)
    console.log(variable.Name, " = ", variable.Value);

// Getting the variables array from the Items object
let arrayOfVariables = Array.from(InputVariables.Items);
// Outputting the variables values to the console
arrayOfVariables.forEach(variable => {
    console.log(variable.Name, " = ", variable.Value);
});

// Access to the variable by name
console.log(InputVariables.Items["Var0"].Value);
console.log(InputVariables.Items.Var0.Value);

// Outputting the variables properties
for (let prop in InputVariables.Items)
    console.log(prop);

// Outputting the variable properties
for (let prop in InputVariables.Items[0])
    console.log(prop);

// Check for existence of "MyVar" variable
if (InputVariables.Items.MyVar)
    console.log("The variable exists");

```
