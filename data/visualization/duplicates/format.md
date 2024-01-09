---
description: Замена формата отображаемых данных у дубликатов и противоречий в Loginom. Руководство по настройке формата. Групповое форматирование.
---
# ![](./../../images/icons/common/toolbar-controls/format_default.svg) Format

It enables to change the data view format in the table column and then set the column width and its visibility.

Column width and visibility are configured for fields with any data type. It is possible to set formatting for fields with the following types:

* ![](./../../images/icons/common/data-types/integer_default.svg) Integer.
* ![](./../../images/icons/common/data-types/float_default.svg) Real.
* ![](./../../images/icons/common/data-types/datetime_default.svg) Date/Time.

## Configuration Window

The *Format* window is divided into two areas. It is required to select the field the view of which must be configured in the left part. Then it is also possible to set its visibility here. *Column width* is configured in the right area for the selected field, and available formatting parameters are set.

The left area is represented by the table:

* The field order number of the source data set is specified in column *№*.
   By default, the fields are shown in the same order as in the source data set. Order of fields can be changed using the following context menu commands: ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) *Move up*, ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) *Move down*. If the fields order was changed, it can be restored to the initial one by clicking on ![](./../../images/icons/common/toolbar-controls/refresh-all_default.svg) *Restore fields order* button (by selecting the context menu command).

* The source data set fields with specification of data types are shown in the *Fields* column. It is possible to filter the list of fields by specifying the field caption in the filter area. To reset filtration, it is required to press ![](./../../images/extjs-theme/form/clear-trigger/clear-trigger_default.svg) button.

* Fields visibility is configured in the third column in the *Table* visualizer. ![](./../../images/icons/common/toolbar-controls/invisible_default.svg) *Hide all fields* / ![](./../../images/icons/common/toolbar-controls/visible_default.svg) *Show all fields* button is available in the column header. It enables to set visibility for all fields at once (the similar action is available in the context menu). To set visibility for separate field, it is required to select it and press ![](./../../images/icons/common/toolbar-controls/visible_default.svg) *Displayed* / ![](./../../images/icons/common/toolbar-controls/invisible_default.svg) *Hidden* button. Hidden fields won't be shown in the *Table* visualizer.

Parameters are set in the right area of the *Format* window:

* **Column width**: Column width is displayed in the entry field in the *Table* visualizer. If required, the specified value can be changed. The column width is set in pixels. Range of values varies from $$0$$ to $$1.8*10^{308}$$.

   It is possible to restore width of fields to the default values using the following context menu command: *Restore width of all fields*.

* **Formatting**: group of parameters for display configuration of the following field types: ![](./../../images/icons/common/data-types/integer_default.svg) Integer, ![](./../../images/icons/common/data-types/float_default.svg) Real and ![](./../../images/icons/common/data-types/datetime_default.svg) Date/Time.

   The following parameters can be set for the fields related to the integer and real types:

   * **Decimal place limit**: by default, values are displayed in the *Table* visualizer providing the same accuracy as compared with the data set. To change representation, it is necessary to set the required decimal place limit (by default, it is set to 0).
   * **Thousands separator**: when the checkbox is selected, the number will be represented with thousands separator.
   * **Currency**: the character that is specified in the entry field will be added to the field value in the *Table* visualizer.
   * **Экспоненциальная форма** — при выставленном флаге число в визуализаторе *Таблица* будет представлено в экспоненциальной форме.
   * **Особый формат** — поле позволяет настроить формат представления числа, задав соответствующую маску.
   * **Пример** — поле предназначено для тестирования параметров форматирования. Число, введенное в поле, будет преобразовано в соответствии с заданным форматом и показано рядом с надписью *Результат*.

      > **Примечание:** если форматирование задается через параметр *Особый формат* остальные параметры форматирования становятся недоступными для редактирования. По умолчанию установлен флаг *Особый формат*, чтобы задать форматирование через другие параметры, необходимо его снять.

   Для полей типа Дата/Время можно выбрать формат отображения значений из предложенного списка, либо задать *Особый формат* (например, DD.MM.YYYY).

   Восстановить все параметры форматирования до исходных значений можно командой контекстного меню *Восстановить формат всех полей*.

Made settings take effect upon pressing *Apply* button.

### Group Formatting

It is possible to set formatting parameters simultaneously for several fields. Для этого в левой области окна *Формат* нужно выделить поля (множественное выделение осуществляется с помощью указателя мыши с зажатой клавишей Ctrl или Shift), а в правой области задать значения параметрам. После нажатия кнопки *Применить* заданные значения параметров форматирования будут применены одновременно ко всем выделенным полям.

Например, если в левой части окна *Формат* выделить два поля, а в правой части задать параметр *Ширина колонки*, то после нажатия кнопки *Применить* оба столбца в визуализаторе *Таблица* будут иметь заданную ширину.

> **Примечание:** при одновременном изменении параметров для полей разных типов будут недоступны для редактирования параметры форматирования, если они недоступны для одного из типов. Например, если выделены поля строкового и вещественного типов, можно будет изменить только параметр *Ширина колонки* т.к. остальные параметры недоступны для полей строкового типа.

Аналогично можно одновременно перемещать несколько полей командами контекстного меню ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) *Переместить вверх*, ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) *Переместить вниз*.
