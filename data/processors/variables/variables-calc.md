---
description: Компонент Калькулятор (переменные) в Loginom. Общие сведения. Мастер настройки. Список функций. Переменные. Области окна настройки. Пример.
---
# ![Calculator-Variables](./../../images/icons/components/calc-variables_default.svg) Calculator (Variables)

Компонент предназначен для математических операций над переменными. New variables are created and their values are calculated in the wizard according to the expressions set by a user.

> **Important:** Values of the expressions are calculated in the order in which they are stated in the expressions list, namely, the expressions that are higher in the list are calculated first. It is allowed to use only the expressions that are higher in the list in the expression formula. Consequently, incorrect list item position can cause a mistake.

## Ports

### Input

* ![Входные переменные](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Входные переменные** — список переменных, которые можно использовать в узле.

### Output

* ![Выходные переменные](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Выходные переменные** — входные переменные и новые переменные, вычисленные узлом.

## Wizard

The wizard window includes the following areas:

[Список выражений](#spisok-vyrazheniy)
[Область кода выражения](#oblast-koda-vyrazheniya)
[Переменные](#peremennye)
[Список функций](#spisok-funktsiy)

### List of Expressions

The area is designated for entry of *expressions*, namely, calculated variables to be added to the output data set as the result of processing. The expression value in each data set row will be calculated using the formula set in the expression code area.

It is possible to create a new expression using the toolbar area or the context menu. There are the following toolbar and context menu operations:

* ![Редактировать](./../../images/icons/common/toolbar-controls/edit_default.svg) **Редактировать выражение** — задание параметров выражения.
* ![Переместить вверх](./../../images/icons/common/toolbar-controls/up_default.svg) **Переместить вверх** — поднять выражение на одну позицию вверх по списку.
* ![Переместить вниз](./../../images/icons/common/toolbar-controls/down_default.svg) **Переместить вниз** — опустить выражение на одну позицию вниз по списку.
* ![Добавить выражение](./../../images/icons/common/toolbar-controls/plus_default.svg) **Добавить выражение** — добавляет новое выражение с параметрами по умолчанию.
* ![Добавить выражение по образцу](./../../images/icons/common/toolbar-controls/clone_default.svg) **Клонировать выражение** — добавляет новое выражение с типом данных, описанием и формулой, как у текущего выражения.
* ![Удалить выражение](./../../images/icons/common/toolbar-controls/delete_default.svg) **Удалить выражение** — удаляет текущее выражение.
* ![Delete all expressions](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all expressions…** enables to delete all existing expressions.

When adding and editing expressions, the dialog of parameters editing is displayed. The following expression parameters can be changed:

* **Имя** — имя переменной в выходном наборе данных.
* **Метка** — метка переменной в выходном наборе данных.
* **Тип** — [тип данных](./../../data/datatype.md) переменной в выходном наборе данных.
* **Промежуточное** — при установке этого флага выражение может использоваться в расчетах, но не включается в список переменных выходного набора данных.
* **Description**: clarifying information.

> **Important:** The name must be unique. It must start from the capital or lower case Latin letter or from the underscore character. Succeeding name characters can be the same, or they can be digits.

При первом открытии мастера настройки список выражений содержит один элемент с именем *Expr1* вещественного типа. *ExpressionN* caption and *ExprN* name are assigned to the new expression by default where *N* is a number providing uniqueness.

After configuration of the expression parameters, it is required to enter the calculated formula to the code area.

### The Expression Code Area

The expression calculation formula is set in the code area. It is possible to insert references to variables and syntactic constructions of functions into the expression code by double click on them in the corresponding areas or by dragging them with the mouse.

Changes in the code area are saved on exit.

The expression formula can contain the following components:

* references to other data set variables in the form of the variables names or earlier computed expressions;
* references to the input port variables;
* brackets defining the order of operations execution;
* characters of mathematical operations and relations;
* logical operations (AND, OR, NOT, XOR) and values(TRUE or 1, FALSE or 0);
* functions according to the syntactic description (refer to [List of functions](#spisok-funktsiy) further);
* string expressions in quotation marks, for example, `"string expression"`;
* integer and real numbers;
* single-line and multi-line comments.

> **Important:** Real numbers are recorded using the decimal point, for example,*`2.71`*.

### Quick Access Toolbar

На панели расположена кнопка вызова окна ![Предпросмотр](./../../images/icons/common/toolbar-controls/print-preview_default.svg) **Предпросмотра** и кнопки, по нажатию на которые в область кода выражения вставляются шаблоны или части выражения.

![Предпросмотр](./../../images/icons/common/toolbar-controls/print-preview_default.svg) Предпросмотр — позволяет оценить корректность расчетов, отображая до 100 первых строк результирующей таблицы. Горячая клавиша вызова — `F3`.

Logical operations:

* **AND** — операция Логическое "И".
* **OR** — операция Логическое "ИЛИ".
* **NOT** — операция Логическое "НЕ".
* **XOR**: the Logical "exclusive OR" operator.

Comparisons operator:

* **=** — равно;
* **<>** — не равно;
* **<** — меньше;
* **>** — больше;
* **<=** — меньше или равно;
* **>=** — больше или равно.

Templates:

* ![Real number](./../../images/icons/common/toolbar-controls/type-float_default.svg): `0.0` will be inserted to enter the real number.
* ![String](./../../images/icons/common/toolbar-controls/type-string_default.svg): `""` will be inserted to enter the string.
* ![Date](./../../images/icons/common/toolbar-controls/type-date_default.svg): `StrToDate("____-__-__", "YYYY-MM-DD")` will be inserted to enter the date.
* ![Time](./../../images/icons/common/toolbar-controls/type-time_default.svg): `StrToDate("__:__:__", "HH:NN:SS")` will be inserted to enter the time.

Logical values:

* **FALSE** — Ложь.
* **TRUE**: the true value.

#### Comments

The single-line comment starts from `//` (two slashes) characters, and it continues until the end of the string. The multi-line comment is represented by all characters included between `/*` (slash-asterisk) and `*/` (asterisk-slash).

The comment example:

```java
// Example of the single-line comment

IF(IsNull(var_one),var_two,var_one) // single-line comment continues until the end of the string

/* The multi-line comment
is represented by all characters
included between (slash-asterisk)
 and (asterisk-slash). */
```

### Variables

Область содержит список переменных, передаваемых на вход узла. Перечень и параметры переменных определяются при настройке входных портов узла.

Double click on the list item position enables to enter the variable name to the expression code area.

### List of Functions

Name, input argument and description of the [functions available for use](./../func/calc-func/README.md)

It is possible to filter by the function category and name.

Double click on the position of the selected function enables to enter its syntax to the expression code area. The Drag-and-Drop method enables to perform the same actions.

---

> **Примечание**: узел "Калькулятор" использует механизм [ленивых вычислений](https://wiki.loginom.ru/articles/lazy-evaluation.html), это означает, что расчет производится только тогда, когда значение выражения отображается или используется другим узлом сценария.
