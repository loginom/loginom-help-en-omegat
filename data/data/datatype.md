---
description: Таблица по типам данных, используемым в Loginom. Описания типов и их ключевые особенности. Границы допустимых значений.
---
# Data Types

| Sign | Type | Description |
| :--------: | :------ | :------ |
| ![](./../images/icons/common/data-types/boolean_default.svg) | Logical | The data can take only two values: True or False. |
| ![](./../images/icons/common/data-types/datetime_default.svg) | Date/time | Data that contain information on date and time. Minimum date value - 30.12.1899 00:00:00, maximum - 31.12.9999 23:59:59.999 (accuracy: 1 ms). |
| ![](./../images/icons/common/data-types/float_default.svg) | Real | The data representing floating point numbers meeting [IEEE 754-2008](https://ru.wikipedia.org/wiki/IEEE_754-2008) standard. It is possible to record the numbers in the [computer representation of the exponential form](https://ru.wikipedia.org/wiki/Экспоненциальная_запись). |
| ![](./../images/icons/common/data-types/integer_default.svg) | Integer | The data represents integers in the range from -2<sup>63</sup> to 2<sup>63</sup>-1 |
| ![](./../images/icons/common/data-types/string_default.svg) | String | The data representing random sequence of characters (string). The maximum string length constitutes 2,147,483,647 characters. |
| ![](./../images/icons/common/data-types/variant_default.svg) | Variable | The data that can keep all types listed above. Each cell keeps the value and data type. |
