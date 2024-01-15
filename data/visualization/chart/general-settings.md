---
description: Работа с окном настроек диаграммы в Loginom. Знакомство с интерфейсом. Установка заголовков, типов децимации, цветовых схем, фонов, накопления, меток, подсказок. Нормирование данных. Включение и настройка анимации.
---
# ![](./../../images/icons/common/toolbar-controls/setup_default.svg) The General Settings

## Configuration Window

* **Header**: chart name.
* **Тип децимации** — тип алгоритма агрегации данных:
   * **Быстрая** — алгоритм выбирает каждую N-ную точку. Число N зависит от того, во сколько раз надо уменьшить исходное количество точек. Алгоритм не учитывает промежуточные значения данных, поэтому максимумы и минимумы могут быть потеряны в представлении данных, в отличии от алгоритма LTTB, который является более репрезентативным, чем Быстрый алгоритм.
   * **Экстремумы** — алгоритм формирует равные интервалы и в них выбирает наиболее представительный максимум или минимум.
   * **LTTB** (Largest Triangle Three Buckets) — формирование интервалов и проход по интервалам алгоритмом LTTB. Алгоритм выбирает из каждого интервала точку, которая образует треугольник с точками из соседних интервалов наибольшей площади.
* **Color scheme:**
   * Standard;
   * White;
   * Grey;
   * Dark;
   * Ggplot2;
   * Seaborn.
* **Цвет фона** — по умолчанию установлен белый (`#FFF`), однако цвет можно изменить, используя для этого:
   * **Color palette**: the required color is selected using the mouse. Palette types:
      * Spectrum;
      * Elegant;
      * Composite.
   * **Set the color via RGB code**: the additive color model that describes the color coding method for color reproduction using three colors: red, green and blue.
   * **Set the color via Hex code**: the sexadecimal RGB color representation.
   * **Parameter A**: intensity of the selected color is set (from the dark to the light one).
   * **Button** ![](./../../images/icons/common/toolbar-controls/undo_default.svg): return the default color.
* **Stacking type:**
   * **Нет** — серии располагаются независимо друг от друга;
   * **Обычное** — серии располагаются друг над другом;
   * **Процент** — первая серия выбирается за базис, *100%*. Остальные серии строятся в процентном отношении к нему.
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
* **Легенда** — подпись, определяющая категорию данных на диаграмме, с использованием узора и цвета. Настройка позволяет изменить положение легенды относительно диаграммы:
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
