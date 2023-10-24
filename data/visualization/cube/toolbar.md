---
description: Работа с панелью инструментов визуализатора OLAP куба в Loginom. Полное руководство по работе с интерфейсом и доступными элементами управления отображения данных.
---
# Cube Toolbar

It contains the following control elements:

* ![ ](./../../images/icons/common/toolbar-controls/fields-list_default.svg) **Fields**: show/hide the list of the data set fields.
* ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Detailing**: show/hide [detailing](./details.md).
* ![ ](./../../images/icons/viewers/cube/detailing/browse_default.svg) **Detailing method**: switch the detailing display options:
   * ![ ](./../../images/icons/viewers/cube/detailing/browse_default.svg) **Table**.
   * ![ ](./../../images/icons/viewers/cube/detailing/form_default.svg) **Form**.
   * ![ ](./../../images/icons/viewers/cube/detailing/stat_default.svg) **Statistics**.
* ![ ](./../../images/icons/common/toolbar-controls/chart_default.svg) **Chart**: show/hide [chart](./chart.md).
* ![ ](./../../images/icons/common/toolbar-controls/collapce-all_default.svg) **Collapse**: collapse the cube dimensions hierarchy:
   * **Collapse all**.
   * **Collapse columns**.
   * **Collapse rows**.
* ![ ](./../../images/icons/common/toolbar-controls/open-all_default.svg) **Expand**: expand the cube dimensions hierarchy:
   * **Expand all**.
   * **Expand columns**.
   * **Expand rows**.
* ![ ](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **Show totals**: show/hide final headers:
   * ![ ](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **All**.
   * ![ ](./../../images/icons/common/toolbar-controls/show-total-col_default.svg) **In columns**.
   * ![ ](./../../images/icons/common/toolbar-controls/show-total-row_default.svg) **In rows**.
   * ![ ](./../../images/icons/common/toolbar-controls/show-total-nor_default.svg) **No totals**.
* ![ ](./../../images/icons/common/toolbar-controls/width-equal_default.svg) **Column width adjustment**:
   * ![ ](./../../images/icons/common/toolbar-controls/width-equal_default.svg) **Equal measure width**.
   * ![ ](./../../images/icons/common/toolbar-controls/width-same_default.svg) **Equal column width**.
* ![ ](./../../images/icons/common/toolbar-controls/transform_default.svg) **Transpose**: move dimensions from rows to columns and vice versa.
* ![ ](./../../images/icons/common/toolbar-controls/dimension_default.svg)
   **Настроить измерения** — открыть окно для [настройки измерений](./configure-axis.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-tune_default.svg)  **Настроить факты…** — открыть окно [настройки фактов](./configure-measures.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-calc_default.svg) **Add calculated measure…**: open the window to add the new [calculated measure](./calculated-measure.md) to [^1] cube.
* ![ ](./../../images/icons/viewers/cube/cases/case-filter_default.svg) **Filter measures…**: open the window to [filter measures](./filter-measures.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-format_default.svg) **Formatting…**: open the window for [formatting](./format-measures.md) of measures and headers of dimensions.
* ![ ](./../../images/icons/common/toolbar-controls/export_default.svg) **XLS**: export to file:
   * **export to XLS (html)**: save the current view in the Excel format.
   * **export to HTML**: save the current view in the HTML format.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Defer layout update**: disable update of headers and data.

[^1]: earlier added calculated measure can be edited or deleted in *Settings of measures* window.

The specified operations are also available via the context menu that can be called by clicking on any Construction area place with the right mouse button. Apart from the Toolbar buttons, there is ![ ](./../../images/icons/ext/checkbox-states/checked_default.svg) **Hide single measure** option in the context menu. It enables to hide headers of measures if the only measure is active.

%spoiler%**Горячие клавиши:**%spoiler%

* **Up/Down/Left/Right** — перейти на одну ячейку вверх/вниз/влево/вправо.
* **PageUp/PageDown** — перейти на экран вверх/вниз.
* **Alt** + **PageUp/PageDown** — перейти на экран вправо/влево.
* **Home/End** — перейти до конца вправо/влево.
* **Alt** + **Home/End** — перейти до конца вверх/вниз.
* **+/-** — раскрыть/свернуть заголовки в строках.
* **Alt** + **+/-** — раскрыть/свернуть заголовки в столбцах.
* **Alt** + **Up\Down\Left\Right** — перейти к выделенной ячейке.
* **Shift** + **scroll** — прокрутка колесом мыши по горизонтали.

%/spoiler%
