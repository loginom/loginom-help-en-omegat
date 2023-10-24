---
description: Компонент JavaScript в Loginom. Перечисления встроенных сущностей Loginom. Типы данных Loginom. Виды данных Loginom. Назначение полей Loginom. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Enumerations of the Loginom Built-in Entities

The enumerations describing the fields and variables metadata is built in within the JavaScript execution context.

## Description of Enumerations

### DataType

Представляет [типы данных Loginom](./../../../data/datatype.md). Enumeration items:

| Name | Value | Представляемый тип данных |
| :-------- | :------  | :------ |
| None | 0 | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) No data type specified |
| Boolean | 1 | ![](./../../../images/icons/common/data-types/boolean_default.svg) Logical |
| DateTime | 2 | ![](./../../../images/icons/common/data-types/datetime_default.svg) Date/time |
| Float | 3 | ![](./../../../images/icons/common/data-types/float_default.svg) Real |
| Integer | 4 | ![](./../../../images/icons/common/data-types/integer_default.svg) Integer |
| String | 5 | ![](./../../../images/icons/common/data-types/string_default.svg) String |
| Variant | 6 | ![](./../../../images/icons/common/data-types/variant_default.svg) Variant |

### DataKind

Представляет [виды данных Loginom](./../../../data/datakind.md). Enumeration items:

| Name | Value | Представляемый вид данных |
| :-------- | :------  | :------ |
| Undefined | 0 | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) No data kind defined |
| Continuous | 1 | ![](./../../../images/icons/common/data-types/continuous_default.svg) Continuous |
| Discrete | 2 | ![](./../../../images/icons/common/data-types/discrete_default.svg) Discrete |

### UsageType

Представляет [назначение полей Loginom](./../../../data/datasetfieldfeatures.md). Enumeration items:

| Name | Value | Представляемое назначение поля |
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

```javascript
import { OutputTable, DataType, UsageType } from "builtIn/Data";

let col0 = OutputTable.Columns[0];
// Assertion of the property value with the "enumeration" type
if (col0.DataType == DataType.String) {
    // We are doing something
}

// Displaying of the numeric representation of the enumeration value
console.log(col0.DefaultUsageType);
// Displaying of the string representation of the enumeration value
console.log(UsageType[col0.DefaultUsageType]);
```
