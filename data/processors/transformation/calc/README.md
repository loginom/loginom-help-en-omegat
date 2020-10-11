# ![ ](../../../images/icons/components/calc-data_default.svg) Калькулятор

Создает новые поля, которые вычисляются по заданной формуле из значений переменных, других полей и [функций](../../func/calc-func/README.md) или используя [JavaScript](./javascript.md) код.

### Input

* ![ ](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Входной источник данных (таблица данных);
* ![ ](../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) Входные переменные (переменные), необязательный.

### Output

* ![ ](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Выходной набор данных (таблица данных).

## The wizard

The wizard window includes the following areas:

1. [List of expressions](#spisok-vyrazheniy);
2. [Область кода выражений](#oblast-koda-vyrazheniya);
3. [Поля/переменные](#polyaperemennye);
4. [List of functions](#spisok-funktsiy).

### List of Expressions

Область предназначена для ввода *Выражений* — вычисляемых полей, которыми в результате обработки будет дополнен входной набор данных. Значение выражения в каждой строке набора данных будет вычислено по [формуле](./expression.md) или JavaScript коду.

It is possible to create a new expression using the toolbar area or the context menu. There are the following toolbar and context menu operations:

* ![ ](../../../images/icons/calcdata/expression_default.svg)|![](../../../images/icons/calcdata/javascript_default.svg) **Синтаксис** (выпадающий список)— задание [синтаксиса расчета выражений](#sintaksis-kalkulyatora) калькулятора;
* ![ ](../../../images/icons/toolbar-controls/edit_default.svg) **Редактировать** — задание параметров выражения;
* ![ ](../../../images/icons/toolbar-controls/up_default.svg) **Переместить вверх** — поднять выражение на одну позицию вверх по списку;
* ![ ](../../../images/icons/toolbar-controls/down_default.svg) **Переместить вниз** — опустить выражение на одну позицию вниз по списку;
* ![ ](../../../images/icons/toolbar-controls/plus_default.svg) **Добавить выражение** — добавляет новое выражение с параметрами по умолчанию;
* ![ ](../../../images/icons/toolbar-controls/clone_default.svg) **Добавить выражение по образцу** — добавляет новое выражение с типом данных, описанием и формулой, как у текущего выражения;
* ![ ](../../../images/icons/toolbar-controls/delete_default.svg) **Удалить выражение** — удаляет текущее выражение;
* ![ ](../../../images/icons/toolbar-controls/delete-all_default.svg) **Удалить все выражения** — удаляет все имеющиеся выражения.

When adding and editing expressions, the dialog of parameters editing is displayed. The following expression parameters can be changed:

* **Имя** — вводится [имя поля](../../../data/datasetfieldoptions.md) присваемое столбцу в выходном наборе данных;
* **Метка** — вводится [метка поля](../../../data/datasetfieldoptions.md) присваемая столбцу в выходном наборе данных;
* **Тип данных** — выбирается [тип данных](../../../data/datatype.md) поля в выходном наборе данных;
* **Промежуточное** — при установке этого флага выражение может использоваться в расчетах, не включается в список полей выходного набора данных;
* **Кэшировать** — сохранение однажды вычисленного значения выражения, целесообразно при неоднократном использовании значений выражения последующими обработчиками и визуализаторами во избежание выполнения повторных вычислений;
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
