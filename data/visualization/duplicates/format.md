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
   * **Exponential form**: when the checkbox is selected the number in the *Table* visualizer will be represented in the exponential form.
   * **Custom format**: the field enables to configure the format of number representation by setting corresponding mask.
   * **Example**: the field is designated for formatting parameters testing. The number entered in the field will be transformed according to the set format and it will be shown near the following text: *Result*.

      > **Note:** if formatting is set using *Custom format* parameter, other formatting parameters become unavailable for editing. *Custom format* checkbox is selected by default. To set formatting by other parameters, it is required to deselect this checkbox.

   It is possible to select values display format from the available list for the Date/Time fields or to set *Custom format* (for example, DD.MM.YYYY).

   It is possible to restore all formatting parameters to the source values using the following context menu command: *Restore format of all fields*.

Made settings take effect upon pressing *Apply* button.

### Group Formatting

It is possible to set formatting parameters simultaneously for several fields. For this purpose, it is required to select fields in the left area of the *Format* window (multiple selection is performed using mouse cursor with Ctrl or Shift key pressed), and it is required to set parameters values in the right area. Upon pressing *Apply* button, set values of formatting parameters will be simultaneously applied to all selected fields.

For example, if two fields are selected in the left part of the *Format* window, and *Column width* parameter is set in the right part, upon pressing *Apply* button, both columns in the *Table* visualizer will have the set width.

> **Note:** in the case of simultaneous change of parameters for the fields related to different types, formatting parameters will be unavailable for editing if they are unavailable for any of the types. For example, if the fields related to the string or real types are selected, it will be possible to change only *Column width* parameter because other parameters are unavailable for the string fields.

Similarly, it is possible to move several fields simultaneously using the following context menu commands: ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) *Move up*, ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) *Move down*.
