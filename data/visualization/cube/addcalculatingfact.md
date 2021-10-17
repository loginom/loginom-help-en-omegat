# ![Calculated Measure](../../images/icons/cube/cases/case-calc_default.svg) Calculated Measure

It enables to add one's own measure to the cube. It is calculated on the basis of the dimensions and measures used in the Cube and filtration area.

It is required to set the following parameters:

* **Name**: the identifier that can be used in formulas of other calculated measures.
* **Метка** — строка, под которой факт будет виден в кубе и диаграмме;
* **Data type**: the data type of the calculated expression.
* **Метка агрегации** — значок для вычисляемого выражения.

Окно настройки вычисляемого факта представлено на Рис.1 и условно разделено на 3 области.

![Configuration window of the calculated measure](./cube-calculating-fact.png)

## 1. Область ввода выражения

В области ввода задается формула расчета выражения. Ссылки на измерения, факты и синтаксические конструкции функций можно вставлять в код выражения, выбрав их двойным кликом мыши в соответствующих областях, либо написав вручную.

The expression formula can contain the following components:

* ссылки на используемые измерения и факты куба в виде наименования измерений и фактов;
* aggregation options of dimensions and measures;
* brackets defining the order of operations execution;
* characters of mathematical operations and relations;
* logical operations (AND, OR, NOT, XOR) and values (TRUE or FALSE);
* functions according to the syntactic description ([List of functions](#spisok-funktsiy));
* string expressions in quotation marks ("string expression");
* integer and real numbers;
* single-line and multi-line comments.

The single-line comment starts from `//` (two slashes) characters, and it continues until the end of the string. The multi-line comment is represented by all characters included between `/*` (slash-asterisk) and `*/` (asterisk-slash).

> **Important:** If the calculated measure expression is incorrect, all its cells consist of missing values. Также в выражении недопустимо применять рекурсивные обращения к фактам.

## 2. List of Dimensions and Measures

The area contains the list of dimensions and measures that can be used in the calculated measures.

Двойной клик мыши по позиции дерева измерений и фактов вводит имя измерения или факта с выбранной функцией агрегации в область ввода выражения. То же самое можно сделать, написав имя измерения или факта в область ввода вручную.

The new measure is created on the basis of the existing measures and dimensions using some functions and derived variables from dimensions values:

* **Value** (*Dimension name.Value*): dimension value. Можно опустить имя функции измерения, в таком случае по умолчанию будет функция Value, т.е. *Имя измерения* = *Имя измерения.Value*.
* **Количество** (*Имя измерения.Count*) — количество уникальных значений измерения.
* **Итог** (*Имя измерения.IsTotal*) — проверка, является ли значение измерения итогом. Переменная используется совместно с функциями *IF()/IFF()*, для модификации значений вычисляемого факта в итоговых ячейках.
* **Пусто** (*Имя измерения.IsNull*) — проверка, является ли значение измерения пропущенным значением.

и от способов агрегации фактов:

* **Сумма** (*Имя факта.Sum* ) — сумма всех значений фактов.
* **Количество** (*Имя факта.Count* ) — количество всех значений фактов.
* **Среднее** (*Имя факта.Avg* ) — среднее из всех значений фактов.
* **Минимум** (*Имя факта.Min* ) — наименьшее из всех значений фактов.
* **Максимум** (*Имя факта.Max* ) — наибольшее из всех значений фактов.
* **Стандартное откл.** (*Имя факта.StdDev* ) — стандартное отклонение значений фактов.
* **Сумма квадратов** (*Имя факта.SumSq* ) — сумма квадратов всех значений фактов.
* **Кол-во уникальных** (*Имя факта.UniqueCount* ) — количество уникальных значений факта.
* **Кол-во пропусков** (*Имя факта.NullCount* ) — количество пропущенных значений факта.
* **Первый** (*Имя факта.First* ) — первое по списку значение факта.
* **Последний** (*Имя факта.Last* ) — последнее по списку значение факта.

Внутри каждого из способов агрегации имеется доступ к итоговым значениям по каждому измерению **Итог** (*Имя факта.Sum.Total.Имя измерения*).

> **Note:** Only used measures and dimensions will be available only in the list. The dimensions that have not been tranferred to rows, columns or filtration area will not be available in the list.

## 3. List of Functions

The area contains the name, input arguments and description of the [functions available for use](../../processors/func/calc-func/README.md).

It is possible to filter by the function category and name.

Double click on the position of the selected function enables to enter its syntax to the expression code area. The same operations can be done by dragging function from the list to the code area (Drag-and-Drop).
