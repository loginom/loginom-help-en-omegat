# LGD Files

**Loginom Data File (LGD file)** means the own format of the data file elaborated specially for usage with Loginom.

Such format provides the highest data import and/or export speed. Minimum number of transformations is required to get or record data. In this case, data exchange speed is limited only by the speed of the disk subsystem operation and it depends on the data volume much less as compared with other formats that can be used.

The LGD file already contains all required information on the field features (field name, caption, data type, etc.) that enables to export and import data sets with minimum settings.

It is possible to decrease the file size when importing/exporting. The following compression algorithms are available for this purpose:

* LZO;
* LZ4.

It is recommended to use this format for storage of intermediate calculations and speed increase.

The LGD file is also available in the Community edition.

> **Important:** It is required to take into account that the format of data storage in the LGD files used in Loginom differs from the DDF format used earlier. That's why these files cannot be imported to Deductor 5.3 and earlier. To provide compatibility, import of the DDF files created in Deductor is supported.
