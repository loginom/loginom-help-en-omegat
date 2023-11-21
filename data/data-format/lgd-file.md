---
description: Справка по подключению к собственному формату данных "Loginom Data File". Выполнение экспорта и импорта наборов данных с минимальными настройками.
---
# LGD Files

**Loginom Data File (LGD file)** is the own format of the data file elaborated specially for usage with Loginom.

Such format provides the highest data import and/or export speed. Minimum number of transformations is required to get or record data. In this case, data exchange speed is limited only by the speed of the disk subsystem operation and it depends on the data volume much less as compared with other formats that can be used.

The LGD file already contains all required information on the field features (field name, caption, data type, etc.) that enables to export and import data sets with minimum settings.

It is possible to decrease the file size when importing/exporting. The following compression algorithms are available for this purpose:

* LZO
* LZ4

When using LZ4 algorythm, files are recorded up to 10% faster than when using LZO, and reading is performed up to 40% faster. However, the files compressed by LZ4 algorythm are approximately 9-10% larger in size as compared with the ones compressed using LZO algorythm. LZ4 enables to pass the control block sum and all content.

It is recommended to use this format for storage of intermediate calculations and speed increase.

The LGD file is also available in the Community edition.

> **Important:** It is required to take into account that data storage format in MGD files that differs from the DDF format used earlier is used in Megaladata that is why these files cannot be imported to Deductor 5.3 and earlier. **Also MGD files created in Megaladata 7 are not loaded to Megaladata 6**. For the compatibility purposes, import of DDF files created in Deductor and MGD files created in Megaladata 6 is supported.
