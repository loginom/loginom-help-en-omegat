---
description: Настройка серий диаграммы в Loginom. Справка по интерфейсу. Настройка списка и параметров серии. Установка различных форматов для отображений серий.
---
# ![](./../../images/icons/common/toolbar-controls/tune-chart_default.svg) Series Editor

## Configuration Window

The configuration window consists of two parts: configuration of the series list (add, delete, move) and configuration of each series parameters. When pressing the given series with the right mouse button, the settings already set for the series and their adjustment options will also appear.

* **Configure list of series:**
   * ![](./../../images/icons/common/toolbar-controls/plus_default.svg) **Add** enables to add new series for the chart.
   * ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Move up** enables to move the selected series closer. Closer series will be displayed over the deeper ones.
   * ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move down** enables to move the selected series deeper.
   * ![](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all** enables to delete all series.
   * ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete a given series<** enables to delete a given series.
* **Configure series parameters:**
   * **Context menu** duplicates a part of other settings and includes several unique ones:
      * ![](./../../images/icons/common/toolbar-controls/move-first_default.svg) **Bring to front** enables to bring series to front (the series will be placed over all other series).
      * ![](./../../images/icons/common/toolbar-controls/move-last_default.svg) **Send to back** enables to send series to back (the series will be placed lower than all other series).
   * **Main:**
      * **Type**: the chart type is set.
      * **Name**: generally, the series name matches the name of the field from which the values for chart construction are taken.
      * **Y field**: the field is set for Y axis.
      * **Color field**: the numeric field that is projected onto the color chart.
   * **Additional:**
      * **Axis**: location of Y axis relative to the chart:
         * **Left**: Y axis is located to the left relative to the chart.
         * **Right**: Y axis is located to the right relative to the chart.
      * **Color**: the chart color is specified.
         * **Color palette**: the required color is selected using the mouse. Palette types:
            * Spectrum;
            * Elegant;
            * Composite.
         * **Set the color via RGB code**: the additive color model that describes the color coding method for color reproduction using three colors: red, green and blue.
         * **Set the color via Hex code**: the sexadecimal RGB color representation.
         * **Parameter A**: intensity of the selected color is set (from the dark to the light one).
         * **Button** ![](./../../images/icons/common/toolbar-controls/undo_default.svg): return the default color.
      * **Line width**: the parameter enables to set the line width. Possible value varies from 0 to 30.
      * **Point size**: possible value varies from 0 to 30.
      * **Type of captions and Type of tooltips**:
         * **No**: captions are not dispalyed.
         * **Value**: the value displayed by the chart element is represented.
         * **Percent**: percentage of this element to the final result is displayed.
         * **Caption**: the tooltips necessary to understand the meaning of this or that element are displayed.
         * **Caption, percent**: both captions, and percents are displayed at the same time.
         * **Caption, value**: both captions, and values are displayed at the same time.
         * **Percent, total**: both percentage of the element to the final result, and the result as such are displayed at the same time.
         * **Caption, percent, total**: caption, percentage and total are displayed at the same time.
         * **X value**: the column coordinate along the X axis is displayed.
