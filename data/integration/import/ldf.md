---
description: Импорт данных в Loginom из LGD-файла. Импорт данных в Loginom из DDF-файла. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/file-native-import_default.svg) Import from the LGD File

The node imports the table from the [LGD file](./../../data-format/lgd-file.md). The DDF files import from the Deductor platform is supported.

LGD: the special format of files optimized for work in Loginom. It provides the maximum writing and reading speed. The file includes settings of fields that simplifies the import process.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

### Output

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg)Imported data set

## Wizard

* **File name** enables to set a path to the imported file when the connection is local, or a file name when using connection to a folder. ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Compression** enables to display information on the LGD file compression method used for its creation:
   * None
   * [LZO](https://ru.wikipedia.org/wiki/LZO).
   * [LZ4](https://ru.wikipedia.org/wiki/LZ4).
* **Bitness** enables to display information on bitness of the imported file: 64 or 32 bits.
* **Control sum**: information on the control sum of file compression:
   * Compressed data - recorded control sum of compressed data after each block.
   * Compressed and uncompressed data - recorded control sum of compressed data after each block and also the control sum of all uncompressed data at the end of the file.
   * None - no control sum.
* **Check control sum**: if this checkbox is selected, control sum will be checked if it is available in the file. It secures a user against undistinguished distortions and Access Violation if the file is damaged for whatever reason. In this case, reading is by 2% slower if the control sum was from the compressed data, and up to 7% if there were both kinds of control sum. By default, the control sum is checked (the checkbox is selected).
