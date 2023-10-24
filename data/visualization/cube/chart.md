---
description: Диаграмма куба в Loginom. Руководство по созданию диаграмм на основе данных из OLAP куба. Построение диаграмм по видам - линии, области, сплайны, столбчатая, сглаженные области, разброс.
---
# ![Chart](./../../images/icons/common/toolbar-controls/chart_default.svg) Chart

*Диаграмма Куба* представляет собой диаграмму заданного типа, построенную на основе *Куба*, но в отличие от обычной, она однозначно соответствует текущему состоянию *Куба* и при любых его изменениях меняется соответственно. Активировать просмотр диаграммы можно кнопкой ![ ](./../../images/icons/common/toolbar-controls/chart_default.svg) **Диаграмма** на [Панели инструментов](./toolbar.md) *Куба*. The general chart view is provided on Figure 1.

![Cube Chart](./cube-chart.png)

*Диаграмма Куба* имеет собственную панель инструментов и контекстное меню.

Панель инструментов содержит кнопки:

* **Chart type** enables to select the type of the displayed chart:
   * ![](./../../images/icons/series/d1.svg) **Линии**.
   * ![](./../../images/icons/series/d2.svg) **Области**.
   * ![](./../../images/icons/series/d3.svg) **Сплайны**.
   * ![](./../../images/icons/series/d4.svg) **Столбчатая**.
   * ![](./../../images/icons/series/d5.svg) **Сглаженные области**.
   * ![](./../../images/icons/series/d6.svg) **Разброс**.
* **Series position** enables to select position of series:
   * ![](./../../images/icons/common/toolbar-controls/columns_default.svg) **В столбцах** — построение серии диаграммы по данным столбца.
   * ![](./../../images/icons/common/toolbar-controls/rows_default.svg) **В строках** — построение серии диаграммы по данным строки.
* **Show totals**: not to show the series generated on the basis of the final headers:
   * ![](./../../images/icons/common/toolbar-controls/show-total-nor_default.svg) **Скрыть**.
   * ![](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **Показать**.
* ![](./../../images/icons/viewers/cube/sub-levels/show-sub-levels_default.svg)**Уровень заголовков:**
   * ![](./../../images/icons/viewers/cube/sub-levels/hide-sub-levels_default.svg)**Первый уровень** — отображается только первый уровень заголовков.
   * ![](./../../images/icons/viewers/cube/sub-levels/show-sub-levels_default.svg)**Все уровни** —  отображаются все уровни заголовков.
* **Выбрать факты...** — позволяет выбрать отображаемые факты из списка.
* ![](./../../images/icons/common/toolbar-controls/cancel_default.svg)  **Ограничения** — позволяет задать ограничения на количество серий/точек:
   * **Series**: the number of displayed series. Можно указать от 1, но не менее количества уникальных значений измерений в строках куба, до 1000 включительно.
   * **Points**: the number of displayed points. It is possible to specify from 1 but not less than the count of unique values of dimensions in the cube columns up to 1000 inclusively.
* **Export** enables to export the chart to the given format:
   * **PNG**.
   * **JPEG**.
   * **PDF**.
   * **SVG**.

Перечисленные выше действия, за исключением кнопки **Ограничения**, дублируются командами контекстного меню *Диаграммы Куба*. Кроме этого, командой контекстном меню **Тип подсказок** можно задать отображение подсказок, которые появляются при наведении на точку серии:

* **Групповые подсказки** - подсказка общая для всех серий, которые имеют значение с данным значением аргумента.
* **Одиночные подсказки** - подсказка только для серии, на которую наведен указатель мыши.
* **Нет подсказок** - подсказки не отображаются.

Чтобы отключить серию (не отображать на диаграмме), необходимо щелкнуть указателем мыши по этой серии в легенде *Диаграммы Куба*.

Легенда *Диаграммы Куба* имеет собственное контекстное меню, которое содержит команды для группового управления сериями:
* ![](./../../images/icons/common/toolbar-controls/visible_default.svg) **Показать все серии** - все серии будут показаны на диаграмме.
* ![](./../../images/icons/common/toolbar-controls/invisible_default.svg) **Скрыть все серии** - скрывает все серии на диаграмме.
* ![](./../../images/icons/common/toolbar-controls/invert-eye_default.svg) **Инвертировать серии** - одновременно отображает все скрытые серии и скрывает все отображаемые серии.


