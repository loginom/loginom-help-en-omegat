---
description: Построение диаграмм в Loginom. Справка по интерфейсу и настройке различных видов диаграмм. Общие принципы работы с построенными диаграммами. Редактирование полей.
---
# ![](./../../images/icons/common/view_types/chart_default.svg) Chart

The chart visually shows dependence of values of one field on the other one. Two-dimensional chart is the most widely used type of charts. The independent column values are set on its horizontal axis, and the dependent column values that comply with them are set on its vertical axis.

## Interface

### Operations

* ![](./../../images/icons/common/toolbar-controls/fields-list_default.svg) **Configure fields**: show/hide the list of the data set fields.
* ![](./../../images/icons/common/toolbar-controls/setup_default.svg) [**General settings**](./general-settings.md): general chart settings. It is possible to open the configuration window using the toolbar or by double clicking on the charting area with the left mouce button. A part of general settings (*Rationing*, *Horizontal orientation*, *Navigator*) is available on the toolbar.
* ![](./../../images/icons/common/toolbar-controls/tune-chart_default.svg) [**Series editor**](./series-settings.md): settings of the series list and parameters of particular series (graphic charts).
* ![](./../../images/icons/common/toolbar-controls/axis_default.svg) [**Configure axes**](./axis-settings.md) enables to set parameters according to the chart axes.
* ![](./../../images/icons/common/toolbar-controls/normalize_default.svg) **Rationing** enables to set the same scale for all charts.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_histogram_default.svg) **Horizontal orientation** enables to reverse the axes positions, namely, the field along the X axis is moved to the Y axis, and vice versa, the Y axis becomes the X axis.
* ![](./../../images/icons/common/toolbar-controls/telescope_default.svg) **Navigator** enables to detail any chart section along the X axis, it is displayed under the axis. Moving the navigator edge, it is possible to select the required chart area.
* ![](./../../images/icons/common/toolbar-controls/cursor_default.svg) **Pointer mode** enables to zoom in the selected area view (also refer to [How to Use the Constructed Chart](#rabota-s-postroennoy-diagrammoy)).
* ![](./../../images/icons/common/toolbar-controls/hand_default.svg) ** Drag mode** enables to move the chart on the screen (refer to [How to Use the Constructed Chart](#rabota-s-postroennoy-diagrammoy)).
* ![](./../../images/icons/common/toolbar-controls/zoom-in_default.svg) **Zoom in** enables to zoom in the chart area.
* ![](./../../images/icons/common/toolbar-controls/zoom-out_default.svg) **Zoom out** enables to zoom out the chart area.
* ![](./../../images/icons/common/toolbar-controls/zoom-zone_default.svg) **Reset zoom** enables to reset all scaling settings (for both axes).
* ![](./../../images/icons/common/toolbar-controls/zoom-vert_default.svg) **Сбросить масштаб Y** — снимает масштабирование диаграммы по оси Y, но оставляет приближение по оси X.
* ![](./../../images/icons/common/toolbar-controls/import_default.svg) **Экспорт** — позволяет сохранить диаграмму, как она выглядит в окне просмотра в файл с изображением. The name of the format that has been selected for export will be displayed in this menu option:
   * Export to SVG;
   * Export to PNG;
   * Export to JPG;
   * Export to PDF.

### Chart Configuration

The fields that can be used as the chart axes are displayed in the left list. For this purpose, it is required to drag (Drag&Drop) necessary fields to the chart construction area holding down with the left mouse button: to the upper part - the Y axis is set, to the lower part - the X axis is set. When setting the Y axis, the series addition is configured, namely:

* **Type**: the chart type is set.
* **Name**: series name (namely, the definite graphic chart). This name will be displayed in the chart legend.
* **Y field**: the field is set for Y axis.
* **Color field**: the numeric field that is projected onto the color chart.

When configuring the X axis settings, it is also possible to use the buttons in the fields list (to the right from the field name):

* ![](./../../images/icons/icons/icon1.svg) Use as abscissa field (Alt+X);
* ![](./../../images/icons/icons/icon2.svg) Use as caption field (Alt+L).

Thus, the X axis values field and caption field (the axis points marks) must not necessarily coincide.

The following types of charts are available:

* ![](./../../images/icons/series/d1.svg) Lines.
* ![](./../../images/icons/series/d2.svg) Areas.
* ![](./../../images/icons/series/d3.svg) Splines.
* ![](./../../images/icons/series/d4.svg) Columns.
* ![](./../../images/icons/series/d7.svg) Interval areas.
* ![](./../../images/icons/series/d5.svg) Smoothed areas.
* ![](./../../images/icons/series/d8.svg) Smoothed areas with intervals.
* ![](./../../images/icons/series/d9.svg) Bubble.
* ![](./../../images/icons/series/d6.svg) Scatter.
* ![](./../../images/icons/series/d10.svg) Waterfall.
* ![](./../../images/icons/series/d11.svg) Errors.
* ![](./../../images/icons/series/d12.svg) Polygon.
* ![](./../../images/icons/series/d13.svg) Columns with ranges.
* Heatmap.

> **Примечание:** все диаграммы строятся на принципе — одному значению X соответствует **только одно** значение Y.

All main settings are available either using the context menu options (it is required to press the chart area with the right mouse button), or the toolbar buttons (in the upper part over the chart).

### How to Use the Constructed Chart

When using the chart, it is possible to zoom in the view of the whole chart or its random part. Для этого на панели инструментов нужно сделать активным ![](./../../images/icons/common/toolbar-controls/cursor_default.svg) *Режим приближения* и далее следует, удерживая левую кнопку мыши нажатой, выделить ту область диаграммы, которую нужно просмотреть более детально. As soon as the mouse button is released, it will be possible to zoom in the selected area view. The procedure is to be repeated to zoom in again.

Чтобы детальнее рассмотреть диаграмму при заданном увеличении, необходимо сделать активным ![](./../../images/icons/common/toolbar-controls/hand_default.svg) *Режим перетаскивания*. It will enable to move the chart on the screen.

Чтобы вернуться к исходному масштабу диаграммы, нужно воспользоваться функцией ![](./../../images/icons/common/toolbar-controls/zoom-zone_default.svg) *Сбросить приближение*.