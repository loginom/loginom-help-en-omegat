---
description: Настройка параметров осей диаграммы в Loginom. Справка по интерфейсу. Включение сетки и логарифмической шкалы. Установка минимальных и максимальных значений осей. Включение динамики по значению или в процентах.
---
# ![](./../../images/icons/common/toolbar-controls/axis_default.svg) Configure Axes

## Configuration Window

It enables to set parameters according to the chart axes:

* **Lower:**
   * **Show grid**: show/hide the vertical lines of the chart grid.
   * **Header**: name of X axis.
   * **Axis type:**
      * **Linear**: the scale the section length of which is proportional to the difference of values marked at the ends of this section.
      * **Logarithmic**: the scale the section length of which is proportional to logarithm of ratio of values marked at the ends of this section. The logarithmic scale is used to display very large ranges of values.
      * **Date/time**: the chronological scale with time points.
   * **Set range**: when the checkbox is active, bin bounds of the lower axis are set.
   * **X field**: the field is set for X axis. It is possible to delete the field that has been earlier selected by pressing ![](./../../images/icons/common/toolbar-controls/delete_default.svg).
   * **Caption field**: the field used to set the X axis points marks.
       It is possible to delete the field that has been earlier selected by pressing ![](./../../images/icons/common/toolbar-controls/delete_default.svg).
* **Left:**
   * **Show grid**: show/hide the horizontal lines of the chart grid. If there is no left axis, the grid is not configured.
   * **Header**: name of Y axis (from the left side).
   * **Axis type:**
      * **Linear**: the scale the section length of which is proportional to the difference of values marked at the ends of this section.
      * **Logarithmic**: the scale the section length of which is proportional to logarithm of ratio of values marked at the ends of this section. The logarithmic scale is used to display very large ranges of values.
      * **Date/time**: the chronological scale with time points.
   * **Set range**: when the checkbox is active, bin bounds of the left axis are set.
   * **Dynamics:**
      * **No**: graphic chart points are not compared with the axis beginning. 
      * **By value**: every graphic chart point is compared with the axis beginning by value.
      * **In percentage terms**: every graphic chart point is compared with the axis beginning in percentage terms.
* **Right:**
   * **Show grid**: show/hide the horizontal lines of the chart grid. If there is no right axis, the grid is not configured.
   * **Header**: name of Y axis (from the right side).
   * **Axis type:**
      * **Linear**: the scale the section length of which is proportional to the difference of values marked at the ends of this section.
      * **Logarithmic**: the scale the section length of which is proportional to logarithm of ratio of values marked at the ends of this section. The logarithmic scale is used to display very large ranges of values.
      * **Date/time**: the chronological scale with time points.
   * **Set range**: when the checkbox is active, bin bounds of the right axis are set.
   * **Dynamics:**
      * **No**: graphic chart points are not compared with the axis beginning.
      * **By value**: every graphic chart point is compared with the axis beginning by value.
      * **In percentage terms**: every graphic chart point is compared with the axis beginning in percentage terms.
