---
description: Модуль Калькулятор в Loginom. Вычисление новых полей через Выражения.
---
# ![Expression](./../../../images/icons/components/calcdata/expression_default.svg) Expression

Expression can contain the following components:

* references to other data set fields in the form of the fields names or earlier calculated expressions (names of fields/variables/expressions are not case sensitive);
* references to the input port variables (to get access to the input variables, it is possible to use `Var.` prefix);
* brackets defining the order of operations execution;
* characters of mathematical operations and relations;
* logical operations (`and`, `or`, `not`, `xor`) and values (`true` or `1`, `false` or `0`);
* functions according to the syntactic description (refer to [List of functions](./../../func/calc-func/README.md) further);
* string expressions in quotation marks ("string expression");
* integer and real numbers;
* single-line and multi-line comments.

It is possible to use references to the expressions calculated earlier in the expression, namely, the expressions that are higher in the list of expressions. Consequently, incorrect list item position can cause a mistake.

> **Note:** In the result of the mathematical operations with the ["Date/time"](./../../../data/datatype.md) type (addition, subtraction, etc.), the real number with fractional part can be got. By default, the operation result will be equal to the number of days (integer part) and hours (fractional part). For example: after such operation as < `02.01.2020 12:00 - 01.01.2020 00:00` the result will be equal to `1.5` - one full day (24 hours) and half a day (12 hours).

## Caching

It is required to enable [Caching](./../../../workflow/caching.md) in the *Calculator* expressions in the case of `Data()` function usage for the recursive computation of values.

It is recommended to use *Caching* when using the functions result of which depends on the time point when this calculation is performed, for example: `Random()`, `Today()`, etc.

## Quick Access Toolbar

The toolbar includes the ![Preview](../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_print-preview_disabled.svg) **Preview** window call button and the buttons that enable to insert a template or preset layout into the expression code area upon their pressing.
.


![Preview](../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_print-preview_disabled.svg) Preview enables to assess correctness of calculations displaying up to 100 first strings of the resulting table. Call hotkey — `F3`.

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
