---
description: Модуль Калькулятор в Loginom. Вычисление новых полей через Выражения.
---
# ![Expression](./../../../images/icons/components/calcdata/expression_default.svg) Expression

Expression can contain the following components:

* ссылки на другие поля набора данных в виде наименования полей или ранее вычисленных выражений (наименования полей/переменных/выражений не чувствительны к регистру);
* ссылки на переменные входного порта (для обращения ко входным переменным можно использовать префикс `Var.`);
* brackets defining the order of operations execution;
* characters of mathematical operations and relations;
* logical operations (`and`, `or`, `not`, `xor`) and values (`true` or `1`, `false` or `0`);
* functions according to the syntactic description (refer to [List of functions](./../../func/calc-func/README.md) further);
* string expressions in quotation marks ("string expression");
* integer and real numbers;
* single-line and multi-line comments.

It is possible to use references to the expressions calculated earlier in the expression, namely, the expressions that are higher in the list of expressions. Consequently, incorrect list item position can cause a mistake.

> **Примечание.** При проведении математических операций над типом ["Дата/время"](./../../../data/datatype.md) (сложение, вычитание и т.д.) в результате может получиться вещественное число с дробной частью. By default, the operation result will be equal to the number of days (integer part) and hours (fractional part). Например: после операции вида `02.01.2020 12:00 - 01.01.2020 00:00` результат будет равен `1.5` - один целый день (24 часа) и еще половина дня (12 часов).

## Caching

It is required to enable [Caching](./../../../workflow/caching.md) in the *Calculator* expressions in the case of `Data()` function usage for the recursive computation of values.

It is recommended to use *Caching* when using the functions result of which depends on the time point when this calculation is performed, for example: `Random()`, `Today()`, etc.

## Quick Access Toolbar

На панели расположена кнопка вызова окна ![Предпросмотр](../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_print-preview_disabled.svg) **Предпросмотра** и кнопки, по нажатию на которые в область кода выражения вставляется заготовка либо шаблон.


![Предпросмотр](../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_print-preview_disabled.svg) Предпросмотр — позволяет оценить корректность расчетов, отображая до 100 первых строк результирующей таблицы. Горячая клавиша вызова — `F3`.

Logical operations:

* **AND**: the Logical "AND" operator;
* **OR**: the Logical "OR" operator;
* **NOT**: the Logical "NOT" operator;
* **XOR**: the Logical "exclusive OR" operator.

Comparisons operator:

* **=** — Equals.
* **<>** — Not equal.
* **<** — Less than.
* **>** — Greater than.
* **<=** — Less than or equal to.
* **>=** — Greater than or equal to.

Templates:

* ![Real number](./../../../images/icons/common/toolbar-controls/type-float_default.svg): `0.0` will be inserted to enter the real number.
* ![String](./../../../images/icons/common/toolbar-controls/type-string_default.svg): `""` will be inserted to enter the string.
* ![Date](./../../../images/icons/common/toolbar-controls/type-date_default.svg): `StrToDate("____-__-__", "YYYY-MM-DD")` will be inserted to enter the date.
* ![Time](./../../../images/icons/common/toolbar-controls/type-time_default.svg): `StrToDate("__:__:__", "HH:NN:SS")` will be inserted to enter the time.

Logical values:

* **FALSE**: the false value.
* **TRUE**: the true value.


## Comments

To explain the received expression, calculator supports two types of comments:

* The single-line comment starts from `//` (two slashes) characters, and it continues until the end of the string.
* The multi-line comment is represented by all characters included between `/*` (slash-asterisk) and `*/` (asterisk-slash).

%spoiler%The comment example:%spoiler%

```java
// Example of the single-line comment

IF(IsNull(gate_one),gate_two,gate_one) // single-line comment continues until the end of the string.

/* The multi-line comment
   is represented by all characters
   included between (slash-asterisk)
   and (asterisk-slash). */
```

%/spoiler%
