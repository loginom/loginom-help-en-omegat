---
description: Компонент Python в Loginom. Перечисления. Типы данных Loginom. Виды данных Loginom. Назначение полей Loginom. Примеры использования.
---
# ![](./../../../images/icons/components/python_default.svg) Перечисления

В контекст выполнения Python встроены перечисления, описывающие метаданные полей и переменных.

## Description of Enumerations

### DataType

It provides the [Megaladata data types](./../../../data/datatype.md). Enumeration items:

| Name | Value | Represented type of data |
| :-------- | :------  | :------ |
| None | 0 | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) No data type specified |
| Boolean | 1 | ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical |
| DateTime | 2 | ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |
| Float | 3 | ![](./../../../images/icons/common/data-types/float_default.svg) Real |
| Integer | 4 | ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| String | 5 | ![](./../../../images/icons/common/data-types/string_default.svg) String |
| Variant | 6 | ![](./../../../images/icons/common/data-types/variant_default.svg) Variant |

### DataKind

It provides the [Megaladata data kinds](./../../../data/datakind.md). Enumeration items:

| Name | Value | Represented data kind |
| :-------- | :------  | :------ |
| Undefined | 0 | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) No data kind defined |
| Continuous | 1 | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous |
| Discrete | 2 | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete |

### UsageType

It provides the [Megaladata fields usage type](./../../../data/datasetfieldfeatures.md). Enumeration items:

| Name | Value | Represented field usage type |
| :-------- | :------  | :------ |
| Unspecified | 0 | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) No usage type specified |
| Excluded | 1 | ![](./../../../images/icons/common/usage-types/unused_default.svg) Excluded |
| Useless | 2 | ![](./../../../images/icons/common/usage-types/useless_default.svg) Useless |
| Active (синонимы: Used, Input) | 3 | ![](./../../../images/icons/common/usage-types/active_default.svg) Active |
| Predicted (синоним: Output) | 4 | ![](./../../../images/icons/common/usage-types/predicted_default.svg) Predicted |
| Key | 5 | ![](./../../../images/icons/common/usage-types/source_default.svg) Key |
| Group | 6 | ![](./../../../images/icons/common/usage-types/group_default.svg) Group |
| Value | 7 | ![](./../../../images/icons/common/usage-types/value_default.svg) Value |
| Transaction | 8 | ![](./../../../images/icons/common/usage-types/transaction_default.svg) Transaction |
| Item | 9 | ![](./../../../images/icons/common/usage-types/item_default.svg) Item |

## Examples of use:

```python
from builtin_data import OutputTable, DataType, UsageType

col0 = OutputTable.Columns[0]
#Проверка значения свойства с типом "перечисление"
if (col0.DataType == DataType.String):
    print("Столбец {} имеет строковый тип данных".format(col0.Name))
    
#Вывод числового представления значения перечисления
print(col0.DefaultUsageType)
#Вывод строкового представления значения перечисления
print(UsageType(col0.DefaultUsageType).name)
```
