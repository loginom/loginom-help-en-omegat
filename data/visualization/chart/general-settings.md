---
description: Работа с окном настроек диаграммы в Loginom. Знакомство с интерфейсом. Установка заголовков, типов децимации, цветовых схем, фонов, накопления, меток, подсказок. Нормирование данных. Включение и настройка анимации.
---
# ![](./../../images/icons/common/toolbar-controls/setup_default.svg) The General Settings

## Configuration Window

* **Header**: chart name.
* **Decimation type**: type of data aggregation algorithm:
   * **Quick**: the algorithm selects every N point. Number N depends on how many times it is required to reduce the source number of points. According to the algorithm the intermediate data values are not taken into account that is why maximum and minimum values can be lost in data representation as opposed to LTTB algorithm that is more representative as compared with the Quick algorithm.
   * **Extremes**: the algorithm generates equal buckets and selects the most representative maximum or minimum in them.
   * **LTTB** (Largest Triangle Three Buckets): generation of buckets and check of buckets using LTTB algorithm. The algorithm selects the point from every bucket that forms a triangle with the points from the neighboring buckets with the largest area.
* **Color scheme:**
   * Standard;
   * White;
   * Grey;
   * Dark;
   * Ggplot2;
   * Seaborn.
* **Background color**: the white color is set as the defulat one (`#FFF`). However, it is possible to change the color using the following options for this purpose:
   * **Color palette**: the required color is selected using the mouse. Palette types:
      * Spectrum;
      * Elegant;
      * Composite.
   * **Set the color via RGB code**: the additive color model that describes the color coding method for color reproduction using three colors: red, green and blue.
   * **Set the color via Hex code**: the sexadecimal RGB color representation.
   * **Parameter A**: intensity of the selected color is set (from the dark to the light one).
   * **Button** ![](./../../images/icons/common/toolbar-controls/undo_default.svg): return the default color.
* **Stacking type:**
   * **No**: series are located independently of each other.
   * **Normal**: series are located above each other.
   * **Percentage**: the first series is selected as the basis,*100%*. Other series are constructed in percentage terms to it.
* **Type of captions** and **Type of tooltips.**
   * **No**: captions are not dispalyed.
   * **Value**: the value displayed by the chart element is represented.
   * **Percent**: percentage of this element to the final result is displayed.
   * **Caption**: the tooltips necessary to understand the meaning of this or that element are displayed.
   * **Caption, percent**: both captions, and percents are displayed at the same time.
   * **Caption, value**: both captions, and values are displayed at the same time.
   * **Percent, total**: both percentage of the element to the final result, and the result as such are displayed at the same time.
   * **Caption, percent, total**: caption, percentage and total are displayed at the same time.
   * **X value**: the column coordinate along the X axis is displayed.
* **Combine tooltips** enables to combine the pop-up tooltips of all series (when hovering cursor over the series) if they have been separately configured for each series.
* **Legend**: the lettering that defines data category on the chart using color and pattern. The setting enables to change the legend position relative to the chart:
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-left-top_default.svg) Top left;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-top_default.svg) Top;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-right-top_default.svg) Top right;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-left_default.svg) Left;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-disabled_default.svg) Disabled;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-right_default.svg) Right;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-left-bottom_default.svg) Bottom left;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-bottom_default.svg) Bottom;
   * ![](./../../images/icons/viewers/chart/legend-alignments/legend-alignments-right-bottom_default.svg) Bottom right.
* **Rationing**: set the same scale for all charts.
* **Horizontal orientation** enables to reverse the axes positions, namely, the field along the X axis is moved to the Y axis, and vice versa, the Y axis becomes the X axis.
* **Navigator**: detail any chart section along the X axis (it is displayed under the axis). Moving the navigator edge, it is possible to select the required chart area.
* **Group columns**: this parameter is required for column charts and it enables to locate the columns near each other. When the checkbox is inactive, the columns are overlapped. The checkbox is active by default.
