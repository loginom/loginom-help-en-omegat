# ![](../../../images/icons/components/javascript_default.svg) Enumerations of the Loginom Built-in Entities

The enumerations describing the fields and varibles metadata are built in within the JavaScript execution context.

## Description of Enumerations

### DataType

It represents [data types](../../../data/datatype.md). Enumeration items:

| Item | Data type |
| :-------- | :------ |
| None | ![](../../../images/icons/usage-types/unspecified_default.svg) No data type specified |
| Boolean | ![](../../../images/icons/data-types/boolean_default.svg) Logical |
| DateTime | ![](../../../images/icons/data-types/datetime_default.svg) Date/time |
| Float | ![](../../../images/icons/data-types/float_default.svg) Real |
| Integer | ![](../../../images/icons/data-types/integer_default.svg) Integer |
| String | ![](../../../images/icons/data-types/string_default.svg) String |
| Variant | ![](../../../images/icons/data-types/variant_default.svg) Variant |

### DataKind

It represents [data kinds](../../../data/datakind.md). Enumeration items:

| Item | Data kind |
| :-------- | :------ |
| Undefined | ![](../../../images/icons/usage-types/unspecified_default.svg) No data kind defined |
| Continuous | ![](../../../images/icons/data-types/continuous_default.svg) Continuous |
| Discrete | ![](../../../images/icons/data-types/discrete_default.svg) Discrete |

### UsageType

It represents [usage type of fields](../../../data/datasetfieldoptions.md). Enumeration items:

| Item | Field usage type |
| :-------- | :------ |
| Unspecified | ![](../../../images/icons/usage-types/unspecified_default.svg) No usage type specified |
| Excluded | ![](../../../images/icons/usage-types/unused_default.svg) Excluded |
| Useless | ![](../../../images/icons/usage-types/useless_default.svg) Useless |
| Active | ![](../../../images/icons/usage-types/active_default.svg) Active |
| Predicted | ![](../../../images/icons/usage-types/predicted_default.svg) Predicted |
| Key | ![](../../../images/icons/usage-types/source_default.svg) Key |
| Group | ![](../../../images/icons/usage-types/group_default.svg) Group |
| Value | ![](../../../images/icons/usage-types/value_default.svg) Value |
| Transaction | ![](../../../images/icons/usage-types/transaction_default.svg) Transaction |
| Item | ![](../../../images/icons/usage-types/item_default.svg) Item |

## Examples of use:

```javascript
import { OutputTable, DataType, UsageType } from "builtIn/Data";

let col0 = OutputTable.Columns[0];
// Assertion of the property value with the "enumeration" type
if (col0.DataType == DataType.String) {
    // We are doing something
}

// Displaying the numeric representation of the enumeration value
console.log(col0.DefaultUsageType);
// Displaying the string representation of the enumeration value
console.log(UsageType[col0.DefaultUsageType]);
```
