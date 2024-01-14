---
description: Диаграмма куба в Loginom. Руководство по созданию диаграмм на основе данных из OLAP куба. Построение диаграмм по видам - линии, области, сплайны, столбчатая, сглаженные области, разброс.
---
# ![Chart](./../../images/icons/common/toolbar-controls/chart_default.svg) Chart

The *Cube chart* represents the chart of the given type constructed on the *Cube* basis. As opposed to the standard one, it clearly matches the current state of the *Cube*, and in the case of all its changes, it changes correspondingly. It is possible to activate the chart view using the ![ ](./../../images/icons/common/toolbar-controls/chart_default.svg) **Chart** button on the  [Toolbar](./toolbar.md) of the *Cube*. The general chart view is provided on Figure 1.

![Cube Chart](./cube-chart.png)

The *Cube chart* has its own toolbar and the context menu.

The toolbar contains the following buttons:

* **Chart type** enables to select the type of the displayed chart:
   * ![](./../../images/icons/series/d1.svg) **Lines**
   * ![](./../../images/icons/series/d2.svg) **Areas**.
   * ![](./../../images/icons/series/d3.svg) **Splines**.
   * ![](./../../images/icons/series/d4.svg) **Columns**.
   * ![](./../../images/icons/series/d5.svg) **Smoothed areas**.
   * ![](./../../images/icons/series/d6.svg) **Scatter**.
* **Series position** enables to select position of series:
   * ![](./../../images/icons/common/toolbar-controls/columns_default.svg) **In columns**: construction of the chart series according to the column data.
   * ![](./../../images/icons/common/toolbar-controls/rows_default.svg) **In rows**: construction of the chart series according to the row data.
* **Show totals**: not to show the series generated on the basis of the final headers:
   * ![](./../../images/icons/common/toolbar-controls/show-total-nor_default.svg) **Hide**.
   * ![](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **Show**.
* ![](./../../images/icons/viewers/cube/sub-levels/show-sub-levels_default.svg)**Level of headers:**
   * ![](./../../images/icons/viewers/cube/sub-levels/hide-sub-levels_default.svg)**First level**: only the first level of headers is displayed.
   * ![](./../../images/icons/viewers/cube/sub-levels/show-sub-levels_default.svg)**All levels**: all levels of headers are displayed.
* **Select measures...** enables to select the displayed measures from the list.
* ![](./../../images/icons/common/toolbar-controls/cancel_default.svg)  **Restrictions** enable to set restrictions concerning the number of series/points:
   * **Series**: the number of displayed series. It is possible to specify from 1 but not less than the count of unique values of dimensions in the cube rows up to 1000 inclusively.
   * **Points**: the number of displayed points. It is possible to specify from 1 but not less than the count of unique values of dimensions in the cube columns up to 1000 inclusively.
* **Export** enables to export the chart to the given format:
   * **PNG**.
   * **JPEG**.
   * **PDF**.
   * **SVG**.

The actions listed above with the exception of **Restrictions** button are duplicated by the *Cube Chart* context menu commands. Besides, **Tooltip style** context menu command enables to set display of the tooltips that appear when hovering cursor over the series point:

* **Shared tooltips**: shared tooltip for all series that have value with this argument value.
* **Single tooltips**: tooltip only for the series over which the mouse cursor is hovered.
* **No tooltips**: tooltips are not displayed.

Чтобы отключить серию (не отображать на диаграмме), необходимо щелкнуть указателем мыши по этой серии в легенде *Диаграммы Куба*.

Легенда *Диаграммы Куба* имеет собственное контекстное меню, которое содержит команды для группового управления сериями:
* ![](./../../images/icons/common/toolbar-controls/visible_default.svg) **Показать все серии** - все серии будут показаны на диаграмме.
* ![](./../../images/icons/common/toolbar-controls/invisible_default.svg) **Скрыть все серии** - скрывает все серии на диаграмме.
* ![](./../../images/icons/common/toolbar-controls/invert-eye_default.svg) **Инвертировать серии** - одновременно отображает все скрытые серии и скрывает все отображаемые серии.


