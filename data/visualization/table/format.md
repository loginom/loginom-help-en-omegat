# ![](../../images/icons/toolbar-controls/format_default.svg) Format

Позволяет менять формат отображения данных в столбцах таблицы, а также задать ширину столбца и его видимость.
The format is set for the data types:

* ![](../../images/icons/data-types/integer_default.svg) Integer;
* ![](../../images/icons/data-types/float_default.svg) Real;
* ![](../../images/icons/data-types/datetime_default.svg) Date/Time.

Ширину и видимость можно задать для каждого столбца.

## Configuration window

The order number of the source data set field is specified in column №.

By default, the fields are shown in the table in the same order as in the source data set. If the fields order was changed, it can be reset to the initial one. Для этого необходимо нажать кнопку ![](../../images/icons/toolbar-controls/refresh-all_default.svg) *Восстановить порядок полей*.

The fields with the data types that can be changed are displayed in *Available fields* column. It is possible to filter the list of fields by specifying the field caption in the filter area. To reset filtration, it is required to press ![](../../images/extjs-theme/form/clear-trigger/clear-trigger_default.svg) button.

В столбце *Формат* для выбранного поля можно выбрать формат отображения. Для выбора формата отображения поля необходимо щёлкнуть левой кнопкой мыши рядом с нужным полем и выбрать один из доступных вариантов из выпадающего списка.

Чтобы восстановить форматы по умолчанию, необходимо нажать кнопку ![](../../images/icons/toolbar-controls/delete-all_default.svg) *Восстановить формат для всех полей*.

В столбце *Ширина* для выбранного поля можно задать ширину столбца, отображаемого в *Таблице*. Для того чтобы задать ширину поля, необходимо щёлкнуть левой кнопкой мыши рядом с нужным полем и ввести числовое значение с клавиатуры. Ширина поля задаётся в пикселях. Диапазон значений от $$0$$ до $$1.8*10^{308}$$.
Чтобы восстановить ширину полей по умолчанию, необходимо нажать кнопку ![](../../images/icons/toolbar-controls/delete-all_default.svg)*Восстановить ширину всех полей*.

В последнем столбце задаётся видимость поля в визуализаторе *Таблица*. Чтобы скрыть поле, необходимо нажать кнопку ![](../../images/icons/toolbar-controls/visible_default.svg) *Отображается* рядом с нужным столбцом.
To hide/display all fields, it is required to press ![](../../images/icons/toolbar-controls/visible_default.svg) *Hide all fields* / ![](../../images/icons/toolbar-controls/invisible_default.svg) *Display all fields* button.

После выбора всех настроек необходимо нажать кнопку *Применить* для применения форматов отображения.
