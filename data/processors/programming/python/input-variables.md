---
description: Компонент Python в Loginom. Доступ к входным переменным. Объект типа InputVariables. Свойства InputVariables. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Access to the Input Variables

For access to the input variables, the `InputVariables` object is used.

## InputVariables Properties

%spoiler%Items%spoiler%

**Items**

It contains read-only collection of the input variables of the node. The collection elements have the  `VariableClass` type (refer to [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%Count%spoiler%

**Count**

It contains read-only count of the input node variables.  It returns the value of the `int` type.

%/spoiler%

## Examples:

```python
from builtin_data import InputVariables
import numpy as np

#Iterating over the input variables and outputting the values of their properties to the console:
for i in range(InputVariables.Count):
    #Access to the variable by index
    variable = InputVariables.Items[i]
    print("Index: ", variable.Index)
    print("Name: ", variable.Name)
    print("DisplayName: ", variable.DisplayName)
    print("DataType: ", variable.DataType, "\n")
    
#Iterating over the input variables by means of iterator
for variable in InputVariables.Items:
    print(variable.Name, "=", variable.Value)
    
#Getting the variables array from the Items object
arrayOfvariables = np.array(InputVariables.Items)
for variable in arrayOfvariables:
    print(variable.Name, "=", variable.Value)

#Access to the variable by name and index
print(InputVariables.Items["VAR0"].Value)
print(InputVariables.Items[1].Value)

# Check for existence of "MyVar" variable
if 'MyVar' in (var.Name for var in InputVariables.Items):
    print("The variable existsт")

```
