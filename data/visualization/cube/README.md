# ![Cube Visualiser](../../images/icons/view_types/cube_default.svg) Куб

[Cube](https://wiki.loginom.ru/articles/cube.html) is one of the wide spread methods of the complex multidimensional data analysis called [OLAP](https://wiki.loginom.ru/articles/online-analytical-processing.html) (OnLine Analytical Processing). It is based on data view in the form of the multidimensional cubes that are also called OLAB cubes or hypercubes.

Cube is a convenient tool used for visualization of the multidimensional data and production of the required report forms. It contains dimensions and measures defined while constructing. The main cube peculiarity is that its structure is not strictly defined. Using the mouse for dimensions headers manipulation, a user can provide the most informative cube display.

## Interface

The main window will be opened after addition to the visualizer node (Figure 1):

![The Main Cube Window](./cube-main-window.png)

The main window can be conventionally divided into 6 areas:

1. Area of Free Fields;
2. Area of Dimensions in Rows;
3. Area of Measures;
4. Area of Measures in Columns;
5. Area of Filtration by Dimensions;
6. [Cube Toolbar](./toolbar.md).

Areas from 2 to 5 represent the Cube construction area.

> **Important:** When configuring the Cube, especially when working with large data volumes, update of the Area of Measures (3) can take long time. In these cases it is recommended to disable data update temporally using ![ ](../../images/icons/toolbar-controls/locked_default.svg) *Defer layout update* button.

### Cube Configuration

The list of the columns that can be used as dimensions or measures is displayed in the Area of Free Fields (1). The columns already used in the Cube are displayed in bold type.

#### Dimensions

To generate a report using the Cube, it is necessary to add the required dimensions to rows or columns. It is possible to add dimensions to the Cube in two ways:

* drag (Drag-and-Drop) field from the Area of Free Fields (1) to the Area of Dimensions of columns or rows (2 or 4);
* press ![Add](../../images/icons/toolbar-controls/plus-native_default.svg) button of the required area and select the required field from the list.

Count of dimensions is limited by the number of the available fields. It is recommended to use not more than 5-7 dimensions to make the report clear and interpretable.

> **Note:** When moving the fields to different areas, the modal windows of actions confirmation can appear if dimension or measure are used in the active calculated measure or in the filter by measure.

As the Cube visualizer is a flat two-dimensional table, the headers form the hierarchic system (tree of headers) when displaying several dimensions. All headers are collapsed up to the most external dimension by default. To expand or collapse the internal dimensions headers, it is required to click on Expand of Collapse button of the external dimension header. There are group operations of expansion or collapsing of headers.

The following options are available when pressing ![Open menu](../../images/icons/toolbar-controls/down_default.svg) to the right from the dimesion name:

* ![Collapse](../../images/icons/toolbar-controls/collapce-all_default.svg) **Collapse**  all items up to the minimum dimension detailing.
* ![Expand](../../images/icons/toolbar-controls/open-all_default.svg) **Expand** all items up to the maximum dimension detailing.
* ![Ascending](../../images/icons/toolbar-controls/low-to-hight_default.svg) **Ascending**: sort the values in ascending order.
* ![Descending](../../images/icons/toolbar-controls/hight-to-low_default.svg) **Descending**: sort the values in descending order.
* ![In original order](../../images/icons/blank.svg) **In original order**: place the values in the order of their appearance in data.
* ![Delete](../../images/icons/toolbar-controls/delete_default.svg) **Delete**: delete a dimension from the Cube. It is possible to delete a dimension by dragging (Drag-and-Drop) back to the Area of Free Fields.

To filter data by the dimension, it is required to click on the required dimension with the mouse, configure the filter on the opened panel and press "Apply". If filtration has been configured by the dimension, it is highlighted in orange. The filter can be used in three modes:

* ![ ](../../images/icons/toolbar-controls/icon-200_default.svg) **Multiple selection**: a user can select the random count of values from the list of the available ones. The selected values will be displayed in the Cube.
* ![ ](../../images/icons/toolbar-controls/icon-201_default.svg)
   **Single selection** enables to select only one value from the list that will be displayed in the Cube.
* ![ ](../../images/icons/toolbar-controls/icon-202_default.svg) **Комбинированный выбор** — позволяет выбрать одно значение измерения из списка, сформированного ранее в режиме множественного выбора.

![ ](../../images/icons/toolbar-controls/icon-200_default.svg) **Multiple selection** mode can be set by default. C помощью переключателя **Режим включенных/исключенных** значений задается разрешительный или запретительный тип фильтра. Это влияет на то, как будет обновлен фильтр, если Куб открывается на новых данных.

В режиме ![ ](../../images/icons/toolbar-controls/icon-200_default.svg) **Множественный выбор** доступны операции:

* ![ ](../../images/icons/toolbar-controls/visible_default.svg) **Отметить все / ![ ](../../images/icons/toolbar-controls/invisible_default.svg) Снять все** — выделяет все значения в списке или снимает выделение со всех значений списка.
* ![ ](../../images/icons/toolbar-controls/invert-eye_default.svg) **Инвертировать выбор** — меняет выбранные значения списка на невыбранные и наоборот.
* ![ ](../../images/icons/toolbar-controls/eye-filter_default.svg) **Отметить по маске...** — позволяет задать условие и метод отбора измерений.

Для настройки отбора открывается окно *Отметить по маске* (в заголовке окна также указано измерение, для которого выполняется настройка). Слева в выпадающем списке необходимо выбрать условие соответствия значений измерения маске. Справа от списка в поле ввода задается маска. Ко всем измерениям, которые соответствуют условию, будет применен выбранный метод отбора (*Отметить, Добавить к отмеченным, Снять* или *Удалить из отмеченных*). При отборе может учитываться регистр букв, для этого нужно установить флаг *Учитывать регистр*.

В режимах ![ ](../../images/icons/toolbar-controls/icon-201_default.svg)
**Одиночный выбор** или ![ ](../../images/icons/toolbar-controls/icon-202_default.svg) **Комбинированный выбор** справа и слева от наименования измерения появляются кнопки ![<](../../images/icons/toolbar-controls/arrow-l_default.svg) и ![>](../../images/icons/toolbar-controls/arrow-r_default.svg) для перелистывания значений фильтра. При перелистывании Область фактов (3) будет перестраиваться под значение фильтра. Можно включить перелистывание через границы списка значений, нажав на кнопку ![ ](../../images/icons/toolbar-controls/roll-over_default.svg) **Зациклить значения при перелистывании**.

> **Примечание:** над Областью измерений (4) Куба находится Область фильтрации (5). Настройка Области фильтрации аналогична настройке Области измерений. Измерения, добавленные в Область фильтрации, не будут отображаться в Кубе, но могут быть использованы в вычисляемых фактах и для фильтрации данных.

#### Measures

It is possible to add measures in two ways:

* drag (Drag-and-Drop) the required field from the Area of Free Fields (1) to the Area of Measures (3);
* Нажать кнопку ![Факты](../../images/icons/toolbar-controls/sum_default.svg) Факты, выбрать необходимое поле и в появившемся [окне](./addfact.md) выбрать нужный вариант [агрегации](../../processors/func/aggregation-functions.md) и способ его отображения.

Нажав на кнопку ![Раскрыть список](../../images/icons/toolbar-controls/down_default.svg) рядом с ![Факты](../../images/icons/toolbar-controls/sum_default.svg) Факты, можно открыть выпадающее меню с вызовом одного из окон:

* ![Настроить факты](../../images/icons/cube/cases/case-tune_default.svg) **Настроить факты…** — открыть окно настройки фактов;
* ![Добавить вычисляемый факт](../../images/icons/cube/cases/case-calc_default.svg) **Добавить вычисляемый факт…** — открыть окно для добавления вычисляемого факта в Куб;
* ![Фильтровать факты](../../images/icons/cube/cases/case-filter_default.svg) **Фильтровать факты…** — открыть окно для фильтрации фактов;
* ![Форматировать факты](../../images/icons/cube/cases/case-format_default.svg) **Форматировать факты…** — открыть окно для форматирования фактов и заголовков измерений.

Удалить факт можно снятием флага в вызываемом окне *Настроить факты*.

> **Примечание:** по умолчанию в качестве варианта агрегации и способа его отображения выбирается идущий первым по списку. Поддерживается отображение сразу нескольких вариантов агрегации и способов их отображения для каждого факта.

Кнопку ![Факты](../../images/icons/toolbar-controls/sum_default.svg)Факты можно перемещать из строк в столбцы и таким образом менять положение заголовков фактов. В случаях когда требуется переместить факт в измерения, необходимо сперва удалить факт, а затем добавить в нужную Область измерений (2) или (4).