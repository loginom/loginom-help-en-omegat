---
description: Компонент JavaScript в Loginom. Перечисления встроенных сущностей Loginom. Типы данных Loginom. Виды данных Loginom. Назначение полей Loginom. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Перечисления встроенных сущностей Loginom

В контекст выполнения JavaScript встроены перечисления, описывающие метаданные полей и переменных.

## Описание перечислений

### DataType

Представляет [типы данных Loginom](./../../../data/datatype.md). Элементы перечисления:

| Имя       | Значение |  Представляемый тип данных |
| :-------- | :------  | :------ |
| None      | 0        | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) Тип данных не задан |
| Boolean   | 1        | ![](./../../../images/icons/common/data-types/boolean_default.svg) Логический |
| DateTime  | 2        | ![](./../../../images/icons/common/data-types/datetime_default.svg) Дата/время |
| Float     | 3        | ![](./../../../images/icons/common/data-types/float_default.svg) Вещественный |
| Integer   | 4        | ![](./../../../images/icons/common/data-types/integer_default.svg) Целый |
| String    | 5        | ![](./../../../images/icons/common/data-types/string_default.svg) Строковый |
| Variant   | 6        | ![](./../../../images/icons/common/data-types/variant_default.svg) Переменный |

### DataKind

Представляет [виды данных Loginom](./../../../data/datakind.md). Элементы перечисления:

| Имя       | Значение |  Представляемый вид данных |
| :-------- | :------  | :------ |
| Undefined  | 0        | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) Вид данных не задан |
| Continuous | 1        | ![](./../../../images/icons/common/data-types/continuous_default.svg) Непрерывный |
| Discrete   | 2        | ![](./../../../images/icons/common/data-types/discrete_default.svg) Дискретный |

### UsageType

Представляет [назначение полей Loginom](./../../../data/datasetfieldfeatures.md). Элементы перечисления:

| Имя       | Значение |  Представляемое назначение поля |
| :-------- | :------  | :------ |
| Unspecified | 0        | ![](./../../../images/icons/common/usage-types/unspecified_default.svg) Назначение не задано |
| Excluded    | 1        | ![](./../../../images/icons/common/usage-types/unused_default.svg) Исключенное |
| Useless     | 2        | ![](./../../../images/icons/common/usage-types/useless_default.svg) Непригодное |
| Active (синонимы: Used, Input)     | 3        | ![](./../../../images/icons/common/usage-types/active_default.svg) Используемое |
| Predicted (синоним: Output)   | 4        | ![](./../../../images/icons/common/usage-types/predicted_default.svg) Предсказываемое |
| Key         | 5        | ![](./../../../images/icons/common/usage-types/source_default.svg) Ключ |
| Group       | 6        | ![](./../../../images/icons/common/usage-types/group_default.svg) Группа |
| Value       | 7        | ![](./../../../images/icons/common/usage-types/value_default.svg) Показатель |
| Transaction | 8        | ![](./../../../images/icons/common/usage-types/transaction_default.svg) Транзакция |
| Item        | 9        | ![](./../../../images/icons/common/usage-types/item_default.svg) Элемент |

## Примеры использования

```javascript
import { OutputTable, DataType, UsageType } from "builtIn/Data";

let col0 = OutputTable.Columns[0];
// Проверка значения свойства с типом "перечисление"
if (col0.DataType == DataType.String) {
    // Что-то делаем
}

// Вывод числового представления значения перечисления
console.log(col0.DefaultUsageType);
// Вывод строкового представления значения перечисления
console.log(UsageType[col0.DefaultUsageType]);
```