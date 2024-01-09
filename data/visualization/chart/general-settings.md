---
description: Работа с окном настроек диаграммы в Loginom. Знакомство с интерфейсом. Установка заголовков, типов децимации, цветовых схем, фонов, накопления, меток, подсказок. Нормирование данных. Включение и настройка анимации.
---
# ![](./../../images/icons/common/toolbar-controls/setup_default.svg) Общие настройки

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
   * **Палитру цветов** — нужный цвет выбирается с помощью мыши. Palette types:
      * Spectrum;
      * Elegant;
      * Composite.
   * **Задание цвета через код RGB** — аддитивная цветовая модель, описывающая способ кодирования цвета для цветовоспроизведения с помощью трёх цветов: красный, зеленый и синий;
   * **Задание цвета через код Hex** — шестнадцатиричное представление цвета RGB;
   * **Параметр A** — задается интенсивность выбранного цвета (от темного до светлого);
   * **Кнопка** ![](./../../images/icons/common/toolbar-controls/undo_default.svg) — возвращает цвет по умолчанию.
* **Stacking type:**
   * **Нет** — серии располагаются независимо друг от друга;
   * **Обычное** — серии располагаются друг над другом;
   * **Процент** — первая серия выбирается за базис, *100%*. Остальные серии строятся в процентном отношении к нему.
* **Type of captions** and **Type of tooltips.**
   * **Нет** — метки не отображаются;
   * **Значение** — представлено собственно значение, отображаемое элементом диаграммы;
   * **Процент** — выводится процентное соотношение данного элемента к итоговому результату;
   * **Метка** — выводятся подсказки, необходимые для понимания смысла того или иного элемента;
   * **Метка, процент** — одновременно выводятся и метки, и проценты;
   * **Метка, значение** — одновременно выводятся и метки, и значения;
   * **Процент, итог** — одновременно выводятся и процентное отношение элемента ко всему итоговому результату, и сам этот результат;
   * **Метка, процент, итог** — одновременно отображаются метка, процентное соотношение и итог;
   * **Значение X** — выводится координата столбца по оси X.
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
