---
description: Экспорт данных из Loginom в LGD-файл. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/file-native-export_default.svg) Export to the LGD File

The node exports the source data set to the [LGD file](./../../data-format/lgd-file.md). The LGD file already contains all required information on the field features (field name, caption, data type, etc.) that enables to export and import data sets with minimum settings.

It is possible to compress data using [LZO](https://ru.wikipedia.org/wiki/LZO) and [LZ4](https://ru.wikipedia.org/wiki/LZ4) algorythms.

> **Note:** The LGD storage format has been elaborated specially for usage with Loginom. It provides the highest data import and export speed.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg)Data source: the data table to be exported.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

## Wizard

* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Compression** can be applied to decrease the export file size. The following options are available:
   * None
   * [LZ4](https://ru.wikipedia.org/wiki/LZ4) (recommended, used by default).
   * [LZO](https://ru.wikipedia.org/wiki/LZO).
* **Control Sum**. The parameter is available for editing only when using LZ4 compression algorythm because this standard enables to pass the optional control block sum and all content. The following parameter values are available for selection:
   * Compressed data - to record the control sum of compressed data after each block (by default).
   * Compressed and uncompressed data - to record the control sum of compressed data after each block and also the control sum of all uncompressed data at the end of the file. In this case, record is by 1.5% slower.
   * None - not to record control sum. In this case, record is by 1% faster.
* **Bitness** enables to display information on bitness of the LGD file: 64 or 32 bits. Bitness of the LGD file depends on bitness of the used Megaladata application/server.
* **Activate and Show**: clicking on this button shows in the wizard how the exported table will look like.

> **Note:** It is required to take into account that the format of data storage in the LGD files used in Loginom differs from the format of the DDF files in the Deductor platform used earlier. That's why these files cannot be imported to Deductor 5.3 and earlier.
