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

При использовании алгоритма LZ4 запись файлов выполняется до 10% быстрее, чем при LZO, чтение — до 40% быстрее. Однако файлы, сжатые алгоритмом LZ4, примерно на 9-10% больше по размеру, чем сжатые с помощью алгоритма LZO. Алгоритм LZ4 позволяет передавать контрольную сумму блока и всего содержимого.

It is recommended to use this format for storage of intermediate calculations and speed increase.

The LGD file is also available in the Community edition.

> **Важно:** следует учитывать, что Loginom использует формат хранения данных в LGD-файлах отличный от использовавшегося ранее DDF-формата, поэтому эти файлы не могут быть импортированы в Deductor 5.3 и ниже. **Также LGD-файлы, созданные в Loginom 7, не загружаются в Loginom 6-ой версии**. В целях совместимости поддерживается импорт созданных в Deductor DDF-файлов и LGD-файлов, созданных в Loginom 6.
