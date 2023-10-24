---
description: Экспорт данных из Loginom в LGD-файл. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/file-native-export_default.svg) Export to the LGD File

Узел осуществляет экспорт исходного набора данных в [LGD-файл](./../../data-format/lgd-file.md). The LGD file already contains all required information on the field features (field name, caption, data type, etc.) that enables to export and import data sets with minimum settings.

Имеется возможность использования сжатия данных алгоритмами [LZO](https://ru.wikipedia.org/wiki/LZO) и [LZ4](https://ru.wikipedia.org/wiki/LZ4).

> **Note:** The LGD storage format has been elaborated specially for usage with Loginom. It provides the highest data import and export speed.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg)Data source: the data table to be exported.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

## Wizard

* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Compression** can be applied to decrease the export file size. Доступны следующие варианты:
   * None
   * [LZ4](https://ru.wikipedia.org/wiki/LZ4) (рекомендуется, используется по умолчанию).
   * [LZO](https://ru.wikipedia.org/wiki/LZO).
* **Контрольная Сумма** — параметр доступен для редактирования только при использовании алгоритма сжатия LZ4, т.к. этот стандарт позволяет передавать опциональную контрольную сумму блока и всего содержимого. Доступны для выбора следующие значения параметра:
   * Сжатых данных — записывать контрольную сумму сжатых данных после каждого блока (по умолчанию).
   * Сжатых и несжатых данных — записывать контрольную сумму сжатых данных после каждого блока, а также контрольную сумму всех несжатых данных в конце файла. В этом случае запись выполняется медленнее на 1,5%.
   * Нет — не записывать никакую контрольную сумму. В этом случае запись выполняется быстрее на 1%.
* **Bitness** enables to display information on bitness of the LGD file: 64 or 32 bits. Разрядность LGD-файла зависит от разрядности используемого приложения/сервера Loginom.
* **Activate and Show**: clicking on this button shows in the wizard how the exported table will look like.

> **Note:** It is required to take into account that the format of data storage in the LGD files used in Loginom differs from the format of the DDF files in the Deductor platform used earlier. That's why these files cannot be imported to Deductor 5.3 and earlier.
