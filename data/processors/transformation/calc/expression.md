# ![Expression](../../../images/icons/calcdata/expression_default.svg) Expression

Expression can contain the following components:

* references to other data set fields in the form of the fields names or earlier calculated expressions;
* references to the input port variables;
* brackets defining the order of operations execution;
* characters of mathematical operations and relations;
* logical operations (`and`, `or`, `not`, `xor`) and values (`true` or `1`, `false` or `0`);
* functions according to the syntactic description (refer to [List of functions](../../func/calc-func/README.md) further).
* string expressions in quotation marks ("string expression");
* integer and real numbers;
* single-line and multi-line comments.

В выражении возможно использовать ссылки на ранее вычисленные выражения, т.е. находящиеся выше в списке выражений. Consequently, incorrect list item position can cause a mistake.

> Примечание: при проведении математических операций над типом ["Дата/время"](./../../../data/datatype.md) (сложение, вычитание и т.д.) в результате может получиться вещественное число с дробной частью. По умолчанию результат операции будет равен количеству дней (целая часть) и количеству часов (дробная часть). Например: после операции вида `02.01.2020 12:00 - 01.01.2020 00:00` результат будет равен `1.5` - один целый день (24 часа) и еще половина дня (12 часов).

## Кэширование

[Кэширование](../../../scenario/caching.md) необходимо включать в выражениях *Калькулятора* в случае использования функции `Data()` при рекурсивном вычислении значений.

Рекомендуется применять *Кэширование* при использовании функций, результат которых зависит от момента времени, в которое происходит это вычисление, например: `Random()`, `Today()` и других.

## Quick Access Toolbar

The toolbar includes the buttons that enable to insert a template or preset layout into the expression code area upon their pressing.

Logical operations:

* **AND** means the Logical "AND" operator;
* **OR** means the Logical "OR" operator;
* **NOT** means the Logical "NOT" operator;
* **XOR** means the Logical "exclusive OR" operator.

Comparisons Operator:

* **=** — Equals.
* **<>** — Not equal.
* **<** — Less than.
* **>** — Greater than.
* **<=** — Less than or equal to.
* **>=** — Greater than or equal to.

Templates:

* ![Real number](../../../images/icons/toolbar-controls/type-float_default.svg): `0.0` will be inserted to enter the real number.
* ![String](../../../images/icons/toolbar-controls/type-string_default.svg): `""` will be inserted to enter the string.
* ![Date](../../../images/icons/toolbar-controls/type-date_default.svg): `StrToDate("____-__-__", "YYYY-MM-DD")` will be inserted to enter the date.
* ![Time](../../../images/icons/toolbar-controls/type-time_default.svg): `StrToDate("__:__:__", "HH:NN:SS")` will be inserted to enter the time.

Logical Values:

* **FALSE** denotes the false value.
* **TRUE** denotes the true value.

## Comments

Для пояснения полученного выражения калькулятор поддерживает два типа комментария:

* Однострочный комментарий — начинается символами `//` (два слеша) и продолжается до конца строки;
* Многострочный комментарий — им считаются все символы, содержащиеся между `/*` (слеш-звездочка) и `*/` (звездочка-слеш).

%spoiler%Пример комментария:%spoiler%

```java
// Example of the single-line comment

IF(IsNull(gate_one),gate_two,gate_one) // однострочный комментарий продолжается до конца строки.

/* Многострочным комментарием
   считаются все символы,
   содержащиеся между (слеш-звездочка)
   and (asterisk-slash). */
```

%/spoiler%
