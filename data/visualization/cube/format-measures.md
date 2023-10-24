---
description: Форматирование данных OLAP куба в Loginom. Руководство по работе с интерфейсом, настройке оптимального варианта отображения данных куба. Установка разделителей, денежных знаков, переключение на экспоненциальную форму.
---
# ![Formatting](./../../images/icons/viewers/cube/cases/case-format_default.svg) Formatting

Позволяет настроить формат отображения фактов и заголовков измерений в Кубе, выбрав нужный факт или заголовок в соответствующей вкладке в верхнем левом углу окна Форматирование (см. Figure 1).

![Formatting window](./cube-format-fact.png)

На вкладке *Факты* доступны следующие опции форматирования:

* ![Switch](./../../images/icons/ext/checkbox-states/checked_default.svg) **Negative in red**: the negative values will be displayed in red.
* **Alignment** enables to configure alignment of values in cells:
   * **Horizontal alignment**:
      * ![Align left](./../../images/icons/common/toolbar-controls/v-align-left_default.svg) **Align left**.
      * ![Align right](./../../images/icons/common/toolbar-controls/v-align-right_default.svg) **Align right**.
      * ![Align center](./../../images/icons/common/toolbar-controls/v-align-center_default.svg) **Align center**.
* ![Switch](./../../images/icons/ext/checkbox-states/checked_default.svg) **Formatting**:
   * **Decimal place limit**: the number of displayed decimal places.
   * **Thousands separator**: digits grouping by decimal places.
   * **Currency**: add the required sign to the displayed digit.
   * **Exponential form**: display of digit in the normalized form (powers of 10).

   * ![Switch](./../../images/icons/ext/checkbox-states/checked_default.svg) **Custom format**" set own format of measures display if the standard formatting functionality is not sufficient. For example, it is possible to add display of any character.

      > **Примечание:** если форматирование задается через параметр *Особый формат* остальные параметры из группы *Форматирование* становятся недоступными для редактирования.

   The current configured view is also shown in this window:
   * **Example**: enter the value example to check correctness of the configured formatting.
   * **Result**: the final formatting applied to the example.

Formatting can be applied to several measures at the same time. Множественное выделение осуществляется с помощью указателя мыши с зажатой клавишей Ctrl или Shift.

Options of dimensions captions formatting are available in the *Dimensions* tab. Formatting configuration is similar to *Measures*, with the exception of selection of negative values in red.

Для отображения настроенного форматирования в *Кубе* необходимо нажать кнопку *Применить*.