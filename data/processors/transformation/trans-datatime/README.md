---
description: Трансформация даты/времени в Loginom. Формирование одного или нескольких столбцов с выделенным интервалом даты/времени. Мастер настройки.
---
# ![Date and Time](./../../../images/icons/components/date-reform_default.svg) Date and Time

The *Date and time* component transforms data of ![Date/Time](./../../../images/icons/common/data-types/datetime_default.svg) *Date/Time* format.

The point of such transformation is that one or several additional columns in which particular information on date/time are selected are generated on the basis of the column with information on date/time.

%spoiler%Example:%spoiler%

| Date(source column) | (Year + Month) | Date (Year + Day) | Date (Month day) | Date (Minute) | Date (Own format) |
|:--------|:--------|:--------|--------:|--------:|:--------|
| 03.04.2012 00:04 | 01.04.2012 | 03.04.2012 | 3 | 4 | user-defined text - 03.04.12 |
| 17.04.2012 19:39 | 01.04.2012 | 17.04.2012 | 17 | 39 | user-defined text - 17.04.12 |
| 09.05.2012 19:42 | 01.05.2012 | 09.05.2012 | 9 | 42 | user-defined text - 09.05.12 |
| 16.05.2012 12:13 | 01.05.2012 | 16.05.2012 | 16 | 13 | user-defined text - 16.05.12 |
| 28.05.2012 20:35 | 01.05.2012 | 28.05.2012 | 28 | 35 | user-defined text - 28.05.12 |

Other columns are generated on the basis of the source column. Particular information is selected from the date in each generated column, for example, day of the month, minute. The date representation format -  *Own format* - will be further considered in details.

%/spoiler%

### Input

* ![Input data source](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** (data table).

### Output

* ![Output data set](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** (data table).

## Wizard

The wizard window consists of two areas: *Field* and *Time frames*.

The input data set fields with ![Date/Time](./../../../images/icons/common/data-types/datetime_default.svg) *Date/Time* type are displayed in the *Field* area. These fields can be sorted by the number of selected transformations. In order to do that, it is required to press header of the column with the number of transformations. It is possible to sort in ascending and descending order.

It is required to select the data format and type to be transformed in the *Time frames* area using the checkboxes.

Options of transformation into the following data types are possible:

* ![Date/Time](./../../../images/icons/common/data-types/datetime_default.svg) *Date/Time*.
* ![Number](./../../../images/icons/common/data-types/integer_default.svg) *Number*.
* ![String](./../../../images/icons/common/data-types/string_default.svg) *String*.

When transforming to ![Date/Time](./../../../images/icons/common/data-types/datetime_default.svg) *Date/Time* data type, it is possible to select the period start and/or end for some formats.

%spoiler%Example:%spoiler%

<table>
<tr><th rowspan="2">Date(source column)</th><th colspan="2">(Year + Month)</th><th colspan="2">Date (Year)</th></tr>
<tr><td>start</td><td>end</td><td>start</td><td>end</td></tr>
<tr><td>03.04.2012 00:04</td><td>01.04.2012</td><td>30.04.2012</td><td>01.01.2012</td><td>31.12.2012</td></tr>
<tr><td>09.05.2012 19:39</td><td>01.05.2012</td><td>31.05.2012</td><td>01.01.2012</td><td>31.12.2012</td></tr>
<tr><td>09.01.2013 19:42</td><td>01.01.2013</td><td>31.01.2013</td><td>01.01.2013</td><td>31.12.2013</td></tr>
<tr><td>16.03.2013 12:13</td><td>01.03.2013</td><td>31.03.2013</td><td>01.01.2013</td><td>31.12.2013</td></tr>
</table>

%/spoiler%

Apart from the standard date formats, it is possible to set the format that complies with the international date standard - [ISO 8601](https://ru.wikipedia.org/wiki/ISO_8601).

When selecting ![Data type](./../../../images/icons/common/data-types/string_default.svg) type of data, the string in the drop-down list to the right of ![Choice](./../../../images/icons/common/toolbar-controls/down_default.svg) enables to select the date representation format in the string form, and it is also possible to set [Own format](./syntax.md) using formatting strings.

Each selected option of transformation in the resulting data set will form a separate column.
