---
description: Примеры импорта данных в Loginom из Excel-файла. Мастер настройки. Именованный диапазон. По имени листа. Импорт всего листа.
---
# Examples of Import from the Excel File

## Example 1. Import of the whole sheet

When importing from the Excel file, it is required to select what exact sheet will be imported after specification of the document location (Sales.xlsx). It is possible to import sheets by order number or sheet name.

### By number (order number of workbook sheet)

![Select object by number](./example-1-1.png)

### By name (by workbook sheet name)

![Select object by name](./example-1-2.png)

It is possible to leave other parameters by default:

* **Whole sheet** — true (the whole sheet up to the very last row will be imported).
* **Blank rows** — *Import* (if the sheet contains blank rows, they will also be imported. If blank rows are not required, it is required to import all rows up to the first occurred blank row, the parameter value must be changed to *Exclude* or to *To first blank row* correspondingly).
* **Title row count** — 1 (only the first row in this case contains column titles).

It is possible to replace *Configure fields* with *Names* and *Captions* fields set by default at the next stage. By default, field captions are set by name transliteration.

Besides, it is possible to specify the fields to be imported (untick/tick the box). All fields are imported by default.

![Configure fields](./example-1-4.png)

Obtained result:

![Imported data set](./example-1-5.png)

> **Important**: it is not possible to import several sheets simultaneously.

## Example 2. Import of named range

To import the named range created in Excel, it is required to specify as the value of **Select object** parameter *Named range* and set the value of **Object name** parameter (in this example — *Goods*).

![Selection of named range](./example-1-3.png)

It is required to pay attention to **All rows** parameter. If it is true, all rows up to the sheet end will be taken even if they are not included into the range in the Excel file as such.
The checkbox is deselected in the current example.

![Configure import parameters](./example-2-1.png)

It is possible to leave other parameters by default.

Obtained result:

![Imported data set](./example-2-2.png)

> **Important**: it is not possible to import several named ranges simultaneously.

## Example 3. Set range for import using references

It is required to import the sheet which is as follows:

![Source data kind](./example-3-1.png)

For this purpose, it is required to deselect **Whole sheet** parameter checkbox. Then parameters to select the range will be available.

Range of imported cells A7:J14 is set in the current example as the value of **Range** parameter. **All rows** checkbox is deselected.

It is also possible to set  the value of **Range** parameter by selecting the required data range using the mouse.

![Configured range](./example-3-3.png)

Obtained result:

![Imported data set](./example-3-4.png)