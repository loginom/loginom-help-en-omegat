# ![ ](../../../images/icons/components/calc-data_default.svg)Calculator

It enables to create the new fields that are calculated by the defined formula based on the values of variables, other fields and [functions](../../func/calc-func/README.md), or using the [JavaScript](./javascript.md) code.

### Input

* ![ ](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Input data source (data table);
* ![ ](../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) Input variables (Variables), optional.

### Output

* ![ ](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## The wizard

The wizard window includes the following areas:

1. [List of expressions](#spisok-vyrazheniy);
2. [The expressions code area](#oblast-koda-vyrazheniya);
3. [Fields/variables](#polyaperemennye);
4. [List of functions](#spisok-funktsiy).

### List of Expressions

The area is designated for entry of *Expressions*, namely, calculated fields to be added to the input data set as the result of processing. The expression value in each data set string will be calculated using the [formula](./expression.md) or the JavaScript code.

It is possible to create a new expression using the toolbar area or the context menu. There are the following toolbar and context menu operations:

* ![ ](../../../images/icons/calcdata/expression_default.svg)|![](../../../images/icons/calcdata/javascript_default.svg) **Syntax** (drop-down list) enables to set [syntax of expressions calculation](#sintaksis-kalkulyatora) of the calculator.
* ![ ](../../../images/icons/toolbar-controls/edit_default.svg) **Edit** enables to set expression parameters.
* ![ ](../../../images/icons/toolbar-controls/up_default.svg) **Move up** enables to move the expression one item position up the list.
* ![ ](../../../images/icons/toolbar-controls/down_default.svg) **Move down** enables to move the expression one item position down the list.
* ![ ](../../../images/icons/toolbar-controls/plus_default.svg) **Add expression** enables to add a new expression with default parameters.
* ![ ](../../../images/icons/toolbar-controls/clone_default.svg) **Add expression by the example** enables to add a new expression with data type, description and formula similar to the current expression.
* ![ ](../../../images/icons/toolbar-controls/delete_default.svg) **Delete expression** enables to delete the current expression.
* ![ ](../../../images/icons/toolbar-controls/delete-all_default.svg) **Delete all expressions** enables to delete all existing expressions.

When adding and editing expressions, the dialog of parameters editing is displayed. The following expression parameters can be changed:

* **Name**: it is required to enter the [field name](../../../data/datasetfieldoptions.md) assigned to the column in the output data set.
* **Caption**: it is required to enter the [field caption](../../../data/datasetfieldoptions.md) assigned to the column in the output data set.
* **Data type**: it is required to select [data type](../../../data/datatype.md) of the filed in the output data set.
* **Intermediate**: when selecting this flag, the expression can be used in calculations but it is not included into the list of fields of the output data set.
* **Cache**: saving of the earlier calculated expression value is reasonable in the case of the repeated use of the expression values by the subsequent handlers and visualizers in order to avoid repeated calculations.
* **Description** means clarifying information.

> **Important:** The name must be unique. It must start from the capital or lower case Latin letter or from the underscore character. Succeeding name characters can be the same, or they can be digits.

When you first open the wizard, the list of expressions contains one real item with `Expr0` name. `ExpressionN` caption and `ExprN` name are assigned for the new expression by default where `N` is number providing uniqueness.

### The Expression Code Area

В области кода в зависимости от выбранного синтаксиса калькулятора задается [формула расчета выражения](./expression.md) или [JavaScript код](./javascript.md). Ссылки на входящие поля/переменные и синтаксические конструкции функций можно вставлять в код выражения, выбрав их двойным кликом мыши в соответствующих областях или перетащив мышкой. Ссылки на созданные в *Калькуляторе* выражения задаются в области кода ручным вводом имени выражения.

Changes in the code area are saved on exit.

### Поля/переменные

Область содержит список полей и переменных, передаваемых на вход обработчика. Перечень и параметры полей/переменных определяются при настройке входных портов обработчика.

Двойной клик мыши по позиции списка вводит имя поля/переменной в область кода выражения. То же самое можно сделать при помощи Drag-and-drop.

### List of Functions

Name, input argument and description of the [functions available for use](../../func/calc-func/README.md)

It is possible to filter by the function category and name.

Double click on the position of the selected function enables to enter its syntax to the expression code area. То же самое можно сделать при помощи Drag-and-drop.

Ссылки на поля/переменные и синтаксические конструкции функций можно вставлять в код выражения, выбрав их двойным кликом мыши в соответствующих областях или перетащив мышкой.

## Синтаксис калькулятора

В калькуляторе существует два способа расчета выражений:

* ![ ](../../../images/icons/calcdata/expression_default.svg) [Выражение](./expression.md);
* ![ ](../../../images/icons/calcdata/javascript_default.svg) [JavaScript](./javascript.md).

Для выбора синтаксиса необходимо в меню списка выражений выбрать *JavaScript* или *Выражение* (см. Figure 1).

![Выбор режима работы калькулятора](./readme-1.png)

> **Примечание:** Режим работы калькулятора *Выражение* или *JavaScript* выбирается для всех полей, т.е. нельзя установить для одного поля синтаксис *Выражение*, а для другого *JavaScript*.
