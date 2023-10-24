---
description: Компонент Python в Loginom. Доступ к входным переменным. Объект типа InputVariables. Свойства InputVariables. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Access to the Input Variables

Для доступа к входным переменным используется объект типа `InputVariables`.

## InputVariables Properties

%spoiler%Items%spoiler%

**Items**

It contains read-only collection of the input variables of the node. Элементы коллекции имеют тип `VariableClass` (см. [Full API Description](./api-description.md)).

%/spoiler%

%spoiler%Count%spoiler%

**Count**

It contains read-only count of the input node variables.  Возвращает значение типа `int`.

%/spoiler%

## Examples:

```python
from builtin_data import InputVariables
import numpy as np

#Перебор входных переменных и вывод в консоль значений их свойств:
for i in range(InputVariables.Count):
    #Обращение к переменной по индексу
    variable = InputVariables.Items[i]
    print("Index: ", variable.Index)
    print("Name: ", variable.Name)
    print("DisplayName: ", variable.DisplayName)
    print("DataType: ", variable.DataType, "\n")
    
#Перебор входных переменных с использованием итератора
for variable in InputVariables.Items:
    print(variable.Name, "=", variable.Value)
    
#Получение из объекта Items массива переменных
arrayOfvariables = np.array(InputVariables.Items)
for variable in arrayOfvariables:
    print(variable.Name, "=", variable.Value)

#Обращение к переменной по имени и индексу
print(InputVariables.Items["VAR0"].Value)
print(InputVariables.Items[1].Value)

#Проверка существования переменной "MyVar"
if 'MyVar' in (var.Name for var in InputVariables.Items):
    print("Переменная существует")

```
