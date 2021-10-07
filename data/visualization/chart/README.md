# ![](../../images/icons/view_types/chart_default.svg) Chart

The chart visually shows dependence of values of one field on the other one. Two-dimensional chart is the most widely used type of charts. The independent column values are set on its horizontal axis, and the dependent column values that comply with them are set on its vertical axis.

## Interface

### Operations

* ![](../../images/icons/toolbar-controls/fields-list_default.svg) Configure fields: show/hide the list of the data set fields.
* ![](../../images/icons/toolbar-controls/setup_default.svg) [General settings](./general-settings.md): general chart settings. It is possible to open the configuration window using the toolbar or by double clicking the charting area with the left mouce button. A part of general settings (Rotate 90° – rotate the chart, Rationing, Navigator, Animation) is available on the toolbar.
* ![](../../images/icons/toolbar-controls/chart_default.svg) [Series editor](./series-settings.md): settings of the series list and parameters of particular series (graphic charts).
* ![](../../images/icons/toolbar-controls/axis_default.svg) [Configure axes](./axis-settings.md).
* ![](../../images/icons/toolbar-controls/animate_default.svg) Animation: data update is smoothly displayed.
* ![](../../images/icons/toolbar-controls/normalize_default.svg) Rationing: set the same scale for all charts.
* ![](../../images/icons/toolbar-controls/telescope_default.svg) Navigator: detail any chart section along the X axis, it is displayed under the axis. Moving the navigator edge, it is possible to select the required chart area.
* ![](../../images/icons/toolbar-controls/rotate-chart-clockwise_default.svg) Rotate chart enables to reverse the axes positions, namely, the field along the X axis is moved to the Y axis, and vice versa, the Y axis becomes the X axis.
* ![](../../images/icons/toolbar-controls/cursor_default.svg) Pointer mode enables to zoom in the selected area view (also refer to [How to Use the Constructed Chart](#rabota-s-postroennoy-diagrammoy)).
* ![](../../images/icons/toolbar-controls/hand_default.svg) Drag mode enables to move the chart on the screen (refer to [How to Use the Constructed Chart](#rabota-s-postroennoy-diagrammoy)).
* ![](../../images/icons/toolbar-controls/zoom-in_default.svg) Приблизить — приближает/увеличивает область диаграммы.
* ![](../../images/icons/toolbar-controls/zoom-out_default.svg) Отдалить — отдаляет/уменьшает область диаграммы.
* ![](../../images/icons/toolbar-controls/zoom-zone_default.svg) Сбросить приближение — снимает все настройки приближения (по обеим осям).
* ![](../../images/icons/toolbar-controls/zoom-vert_default.svg) Сбросить приближение Y — снимает приближение диаграммы по оси Y, но оставляет приближение по оси X.
* ![](../../images/icons/toolbar-controls/import_default.svg) Экспорт — позволяет сохранить диаграмму, как она выглядит в окне просмотра в файл с изображением. В данном пункте меню будет отображаться название того формата, который выбран для экспорта:
   * Export to SVG.
   * Export to PNG.
   * Export to JPG.
   * Export to PDF.

### Chart Configuration

The fields that can be used as the chart axes are displayed in the left list. For this purpose, it is required to drag (Drag&Drop) necessary fields to the chart construction area holding down with the left mouse button: to the upper part - the Y axis is st, to the lower part - the X axis is set. When setting the Y axis, the series addition is configured, namely:

* **Type**: the chart type is set.
* **Name**: series name (namely, the definite graphic chart). This name will be displayed in the chart legend.
* **Y field**: the field is set for Y axis.
* **Color field**: the numeric field that is projected onto the color chart.

When configuring the X axis settings, it is also possible to use the buttons in the fields list (to the right from the field name):

* ![](../../images/icons/icons/icon1.svg) Use as abscissa field (CTRL+X);
* ![](../../images/icons/icons/icon2.svg) Use as caption field (Alt+L).

Thus, the X axis values field and caption field (the axis points marks) must not necessarily coincide.

The following types of charts are available:

* ![](../../images/icons/series_18/d1.svg) Lines;
* ![](../../images/icons/series_18/d2.svg) Areas;
* ![](../../images/icons/series_18/d3.svg) Splines;
* ![](../../images/icons/series_18/d4.svg) Columns;
* ![](../../images/icons/series_18/d7.svg) Interval areas;
* ![](../../images/icons/series_18/d5.svg) Smoothed areas;
* ![](../../images/icons/series_18/d8.svg) Smoothed areas with intervals;
* ![](../../images/icons/series_18/d9.svg) Bubble;
* ![](../../images/icons/series_18/d6.svg) Scatter;
* ![](../../images/icons/series_18/d10.svg) Waterfall;
* ![](../../images/icons/series_18/d11.svg) Errors;
* ![](../../images/icons/series_18/d12.svg) Polygon;
* ![](../../images/icons/series_18/d13.svg) Columns with ranges;
* Heatmap;
* Candlestick;
* OHLC.

All main settings are available either using the context menu options (it is required to press the chart area with the right mouse button), or the toolbar buttons (in the upper part over the chart). The chart settings are described above in this article.

### How to Use the Constructed Chart

When using the chart, it is possible to zoom in the view of the whole chart or its random part. For this purpose, it is required to enable ![](../../images/icons/toolbar-controls/cursor_default.svg) pointer mode on the toolbar, and then it is required to select the chart area that must be viewed in more details by holding down the left mouse button. As soon as the mouse button is released, it will be possible to zoom in the selected area view. The procedure is to be repeated to zoom in again. To provide more detailed view of the chart with the set zooming in, it is required to enable the ![](../../images/icons/toolbar-controls/hand_default.svg) drag mode. It will enable to move the chart on the screen.

To return to the initial chart scale, it is required to use ![](../../images/icons/toolbar-controls/zoom-zone_default.svg) reset zoom.