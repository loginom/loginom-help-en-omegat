---
description: Таблица по типам данных, используемым в Loginom. Описания типов и их ключевые особенности. Границы допустимых значений.
---
# Data Types

| Sign | Type | Description |
| :--------: | :------ | :------ |
| ![](./../images/icons/common/data-types/boolean_default.svg) | Logical | The data can take only two values: True or False. |
| ![](./../images/icons/common/data-types/datetime_default.svg) | Date/time | Данные, содержащие информацию о дате и времени. Минимальное значение даты - 30.12.1899 00:00:00, максимальное - 31.12.9999 23:59:59.999 (точность 1 мс). |
| ![](./../images/icons/common/data-types/float_default.svg) | Real | Данные, представляющие собой числа с плавающей точкой, соответствующие стандарту [IEEE 754-2008](https://ru.wikipedia.org/wiki/IEEE_754-2008). It is possible to record the numbers in the [computer representation of the exponential form](https://ru.wikipedia.org/wiki/Экспоненциальная_запись). |
| ![](./../images/icons/common/data-types/integer_default.svg) | Integer | The data represents integers in the range from -2<sup>63</sup> to 2<sup>63</sup>-1 |
| ![](./../images/icons/common/data-types/string_default.svg) | String | Данные, являющиеся произвольной последовательностью символов (строка). The maximum string length constitutes 2,147,483,647 characters. |
| ![](./../images/icons/common/data-types/variant_default.svg) | Variable | Данные, которые могут хранить все вышеперечисленные типы. Each cell keeps the value and data type. |
