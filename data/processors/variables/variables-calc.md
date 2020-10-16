# ![Calculator-variables](../../images/icons/components/calc-variables_default.svg) Calculator (variables)

The handler is designated for mathematical operations with variables. New variabls are created and their values are calculated in the wizard according to the expressions set by a user.

> **Important:** Values of the expressions are calculated in the order in which they are stated in the expressions list, namely, the expressions that are higher in the list are calculated first. It is allowed to use only the expressions that are higher in the list in the expression formula. Consequently, incorrect list item position can cause a mistake.

## Ports

### Input

* ![Input variables](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables** denote a list of variables that can be used in the handler.

### Output

* ![Output variables](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables** denote input variables and new variables calculated by the handler.

## Wizard

The wizard window includes the following areas:

1. [List of expressions](#spisok-vyrazheniy);
2. [The expression code area](#oblast-koda-vyrazheniya);
3. [Variables](#peremennye);
4. [List of functions](#spisok-funktsiy).

### List of Expressions

The area is designated for entry of *expressions*, namely, calculated variables to be added to the output data set as the result of processing. The expression value in each data set string will be calculated using the formula set in the expression code area.

It is possible to create a new expression using the toolbar area or the context menu. There are the following toolbar and context menu operations:

* ![Edit](../../images/icons/toolbar-controls/edit_default.svg) **Edit** enables to set expression parameters.
* ![Move up](../../images/icons/toolbar-controls/up_default.svg) **Move up** enables to move the expression one item position up the list.
* ![Move down](../../images/icons/toolbar-controls/down_default.svg) **Move down** enables to move the expression one item position down the list.
* ![Add expression](../../images/icons/toolbar-controls/plus_default.svg) **Add expression** enables to add a new expression with default parameters.
* ![Add expression by the example](../../images/icons/toolbar-controls/clone_default.svg) **Add expression by the example** enables to add a new expression with data type, description and formula similar to the current expression.
* ![Delete expression](../../images/icons/toolbar-controls/delete_default.svg) **Delete expression** enables to delete the current expression.
* ![Delete all expressions](../../images/icons/toolbar-controls/delete-all_default.svg) **Delete all expressions…** enables to delete all existing expressions.

When adding and editing expressions, the dialog of parameters editing is displayed. The following expression parameters can be changed:

* **Name** denotes a variable name in the output data set.
* **Caption** is a variable caption in the output data set.
* **Type** — [data type](../../data/datatype.md) of the variable in the output data set.
* **Intermediate**: when selecting this flag, the expression can be used in calculations but it is not included into the list of variables of the output data set.
* **Description** means clarifying information.

> **Important:** The name must be unique. It must start from the capital or lower case Latin letter or from the underscore character. Succeeding name characters can be the same, or they can be digits.

When you first open the wizard, the list of expressions contains one real item with *Expr0* name. *ExpressionN* caption and *ExprN* name are assigned for the new expression by default where *N* is number providing uniqueness.

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

#### Quick Access Toolbar

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

* ![Real number](../../images/icons/toolbar-controls/type-float_default.svg): `0.0` will be inserted to enter the real number.
* ![String](../../images/icons/toolbar-controls/type-string_default.svg): `""` will be inserted to enter the string.
* ![Date](../../images/icons/toolbar-controls/type-date_default.svg): `StrToDate("____-__-__", "YYYY-MM-DD")` will be inserted to enter the date.
* ![Time](../../images/icons/toolbar-controls/type-time_default.svg): `StrToDate("__:__:__", "HH:NN:SS")` will be inserted to enter the time.

Logical Values:

* **FALSE** denotes the false value.
* **TRUE** denotes the true value.

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

The area contains the list of variables supplied to the handler input. The list and parameters of variables are defined when configuring input ports of the handler.

Double click on the list item position enables to enter the variable name to the expression code area.

### List of Functions

Name, input argument and description of the [functions available for use](../func/calc-func/README.md)

It is possible to filter by the function category and name.

Double click on the position of the selected function enables to enter its syntax to the expression code area. The Drag-and-Drop method enables to perform the same actions.

---

> **Note**: The "Calculator" handler is based on the [lazy computation](https://wiki.loginom.ru/articles/lazy-evaluation.html) technique. It means that the computation is performed only when the expression value is displayed or used by the other workflow node.
