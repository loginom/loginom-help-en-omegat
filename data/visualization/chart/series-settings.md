---
description: Настройка серий диаграммы в Loginom. Справка по интерфейсу. Настройка списка и параметров серии. Установка различных форматов для отображений серий.
---
# ![](./../../images/icons/common/toolbar-controls/tune-chart_default.svg) Series Editor

## Configuration Window

The configuration window consists of two parts: configuration of the series list (add, delete, move) and configuration of each series parameters. When pressing the given series with the right mouse button, the settings already set for the series and their adjustment options will also appear.

* **Configure list of series:**
   * ![](./../../images/icons/common/toolbar-controls/plus_default.svg) **Добавить** — добавление новой серии на диаграмму.
   * ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещение выбранной серии ближе. Серии более близкие будут отображаться поверх более глубоких.
   * ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Переместить вниз** — перемещение выбранной серии глубже.
   * ![](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Удалить все** — удаление всех серий.
   * ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Удалить конкретную серию** — удаление конкретной серии.
* **Configure series parameters:**
   * **Контекстное меню** — дублирует часть других настроек и включает несколько уникальных:
      * ![](./../../images/icons/common/toolbar-controls/move-first_default.svg) **На передний план** — перемещает серию на передний план (серия будет располагаться поверх всех);
      * ![](./../../images/icons/common/toolbar-controls/move-last_default.svg) **На задний план** — перемещает серию на задний план (серия будет располагаться ниже всех).
   * **Main:**
      * **Type**: the chart type is set.
      * **Name**: generally, the series name matches the name of the field from which the values for chart construction are taken.
      * **Y field**: the field is set for Y axis.
      * **Color field**: the numeric field that is projected onto the color chart.
   * **Additional:**
      * **Ось** — расположение оси Y относительно диаграммы:
         * **Левая** — ось Y располагается слева относительно диаграммы;
         * **Правая** — ось Y располагается справа относительно диаграммы.
      * **Цвет** — указывается цвет диаграммы.
         * **Color palette**: the required color is selected using the mouse. Palette types:
            * Spectrum;
            * Elegant;
            * Composite.
         * **Задание цвета через код RGB** — аддитивная цветовая модель, описывающая способ кодирования цвета для цветовоспроизведения с помощью трёх цветов: красный, зеленый и синий;
         * **Задание цвета через код Hex** — шестнадцатиричное представление цвета RGB;
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
