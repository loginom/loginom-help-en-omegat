---
description: Форматирование данных OLAP куба в Loginom. Руководство по работе с интерфейсом, настройке оптимального варианта отображения данных куба. Установка разделителей, денежных знаков, переключение на экспоненциальную форму.
---
# ![Formatting](./../../images/icons/viewers/cube/cases/case-format_default.svg) Formatting

It enables to set the format of display of measures and captions of dimensions in the Cube by selecting the required measure or caption in the corresponding tab in the upper left corner of the Formatting window (refer to Figure 1).

![Formatting window](./cube-format-fact.png)

The following formatting options are available in the *Measures* tab:

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

      > **Note:** if formatting is set using *Custom format* parameter, other formatting parameters from the *Formatting* group become unavailable for editing.

   The current configured view is also shown in this window:
   * **Example**: enter the value example to check correctness of the configured formatting.
   * **Result**: the final formatting applied to the example.

Formatting can be applied to several measures at the same time. Multiple selection is performed using mouse cursor with Ctrl or Shift key pressed.

Options of dimensions captions formatting are available in the *Dimensions* tab. Formatting configuration is similar to *Measures*, with the exception of selection of negative values in red.

To display the configured formatting in the *Cube*, it is required to press *Apply* button.