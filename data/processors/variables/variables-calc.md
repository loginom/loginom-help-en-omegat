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
2. [Expression code area](#oblast-koda-vyrazheniya);
3. [Variables](#peremennye);
4. [List of functions](#spisok-funktsiy).

### List of Expressions

The area is designated for entry of *expressions*, namely, calculated variables to be added to the output data set as the result of processing. The expression value in each data set string will be calculated using the formula set in the expression code area.

It is possible to create a new expression using the toolbar area or the context menu. There are the following toolbar and context menu operations:

* ![Edit](../../images/icons/toolbar-controls/edit_default.svg) **Edit** enables to set expression parameters.
* ![Move up](../../images/icons/toolbar-controls/up_default.svg) **Move up** enables to move the expression one item position up the list.
* ![Move down](../../images/icons/toolbar-controls/down_default.svg) **Move down** enables to move the expression one item position down the list.
* ![Add expression](../../images/icons/toolbar-controls/plus_default.svg) **Add expression** enables to add a new expression with default parameters.
* ![Add expression by the example](../../images/icons/toolbar-controls/clone_default.svg) **Add expression by the example** enables to add a new expression with веф type, description and formula similar to the current expression.
* ![Delete expression](../../images/icons/toolbar-controls/delete_default.svg) **Delete expression** enables to delete the current expression.
* ![Delete all expressions](../../images/icons/toolbar-controls/delete-all_default.svg) **Delete all expressions…** enables to delete all existing expressions.

When adding and editing expressions, the dialog of parameters editing is displayed. The following expression parameters can be changed:

* **Name** denotes a variable name in the output data set.
* **Caption** is a variable caption in the output data set.
* **Type** — [data type](../../data/datatype.md) of the variable in the output data set.
* **Intermediate**: when selecting this flag, the expression can be used in calculations but it is not included into the list of variables of the output data set.
* **Description** means clarifying information.

> **Important:** The name must be unique. It must start from the capital or lower case Latin letter or from the underscore character. Succeeding name characters can be the same, or they can be digits.

При первом открытии мастера настройки список выражений содержит один элемент с именем *Expr0* вещественного типа. По умолчанию для нового выражения назначается метка *ВыражениеN* и имя *ExprN*, где *N* — номер, обеспечивающий уникальность.

После настройки параметров выражения в область кода требуется ввести рассчитываемую формулу.

### Область кода выражения

В области кода задается формула расчета выражения. Ссылки на переменные и синтаксические конструкции функций можно вставлять в код выражения, выбрав их двойным кликом мыши в соответствующих областях или перетащив мышкой.

Изменения в области кода сохраняются при выходе из нее.

Формула выражения может содержать:

* ссылки на другие переменные набора данных в виде наименования переменных или ранее вычисленных выражений;
* ссылки на переменные входного порта;
* скобки, определяющие порядок выполнения операций;
* знаки математических операций и отношений;
* логические операции (AND, OR, NOT, XOR) и значения (TRUE или 1, FALSE или 0);
* функции в соответствии с синтаксическим описанием (см. далее [Список функций](#spisok-funktsiy));
* строковые выражения в кавычках, например, `"строковое выражение"`;
* целые и вещественные числа;
* однострочные и многострочные комментарии.

> **Важно:** вещественные числа записываются с использованием десятичной точки, например, *`2.71`*.

#### Панель быстрого доступа

На панели расположены кнопки, по нажатию на которые в область кода выражения вставляется заготовка либо шаблон.

Логические операции:

* **AND** — операция Логическое "И";
* **OR** — операция Логическое "ИЛИ";
* **NOT** — операция Логическое "НЕ";
* **XOR** — операция Логическое "исключающее ИЛИ".

Операторы сравнения:

* **=** — Равно;
* **<>** — Не равно;
* **<** — Меньше;
* **>** — Больше;
* **<=** — Меньше или равно;
* **>=** — Больше или равно.

Шаблоны:

* ![Вещественное число](../../images/icons/toolbar-controls/type-float_default.svg) — для ввода вещественного числа, будет вставлено `0.0`;
* ![Строка](../../images/icons/toolbar-controls/type-string_default.svg) — для ввода строки, будет вставлено `""`;
* ![Дата](../../images/icons/toolbar-controls/type-date_default.svg) — для ввода даты, будет вставлено `StrToDate("____-__-__", "YYYY-MM-DD")`;
* ![Время](../../images/icons/toolbar-controls/type-time_default.svg) — для ввода времени, будет вставлено `StrToDate("__:__:__", "HH:NN:SS")`.

Логические значения:

* **FALSE** — Ложь;
* **TRUE** — Истина.

#### Комментарии

Однострочный комментарий начинается символами `//` (два слеша) и продолжается до конца строки. Многострочным комментарием считаются все символы, содержащиеся между `/*` (слеш-звездочка) и `*/` (звездочка-слеш).

Пример комментария:

```java
// Пример однострочного комментария.

IF(IsNull(var_one),var_two,var_one) // однострочный комментарий продолжается до конца строки

/* Многострочным комментарием
считаются все символы,
содержащиеся между (слеш-звездочка)
 и (звездочка-слеш). */
```

### Variables

Область содержит список переменных, передаваемых на вход обработчика. Перечень и параметры переменных определяются при настройке входных портов обработчика.

Двойной клик мыши по позиции списка вводит имя переменной в область кода выражения.

### Список функций

Наименование, входные аргументы и описание [доступных для использования функций](../func/calc-func/README.md).

Возможна фильтрация по категории и названию функции.

Двойной клик мыши по позиции выбранной функции вставляет ее синтаксис в область кода выражения. То же самое можно сделать при помощи Drag-and-Drop.

---

> **Примечание**: Обработчик "Калькулятор" использует механизм [ленивых вычислений](https://wiki.loginom.ru/articles/lazy-evaluation.html), это означает, что расчет производится только тогда, когда значение выражения отображается или используется другим узлом сценария.
