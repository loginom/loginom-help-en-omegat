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
         * **Палитра цветов** — нужный цвет выбирается с помощью мыши. Palette types:
            * Spectrum;
            * Elegant;
            * Composite.
         * **Задание цвета через код RGB** — аддитивная цветовая модель, описывающая способ кодирования цвета для цветовоспроизведения с помощью трёх цветов: красный, зеленый и синий;
         * **Задание цвета через код Hex** — шестнадцатиричное представление цвета RGB;
         * **Параметр A** — задается интенсивность выбранного цвета (от темного до светлого);
         * **Кнопка** ![](./../../images/icons/common/toolbar-controls/undo_default.svg) — возвращает цвет по умолчанию.
      * **Ширина линии** — параметр задает толщину линии, возможное значение от 0 до 30.
      * **Размер точки** — возможное значение от 0 до 30.
      * **Тип меток и Тип подсказок**:
         * **Нет** — метки не отображаются;
         * **Значение** — представлено собственно значение, отображаемое элементом диаграммы;
         * **Процент** — выводится процентное соотношение данного элемента к итоговому результату;
         * **Метка** — выводятся подсказки, необходимые для понимания смысла того или иного элемента;
         * **Метка, процент** — одновременно выводятся и метки, и проценты;
         * **Метка, значение** — одновременно выводятся и метки, и значения;
         * **Процент, итог** — одновременно выводятся и процентное отношение элемента ко всему итоговому результату, и сам этот результат;
         * **Метка, процент, итог** — одновременно отображаются метка, процентное соотношение и итог;
         * **Значение X** — выводится координата столбца по оси X.
