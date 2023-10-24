---
description: Замена в Loginom. Структура файла замен.
---
# Replacement File Structure

The imported text file must meet the following requirements:

* It must contain data of two columns.
   * 1st column — replaced value.
   * 2nd column — new value.
* The tabulation character is used to separate the columns.
* Columns headers are not used.
* File encoding: UTF-8.

%spoiler%Example:%spoiler%

Файл замены:
```
Средний балл	Новый средний балл
4,99	5
4,99	4,69
4,97	4,51
4,92	4,49
4,91	4,47
4,88	4,40
4,85	4,35
4,84	4,30
4,84	4,25
4,79	4,20
```
> Примечание: Десятичный разделитель зависит от локали. Для русской — это запятая, для английской — точка.

%/spoiler%

When importing the file that contains single inquiry character `?`, this character will be interpreted as `<null>` (null value). It must be taken into account if `<null>` values to be replaced with other values are present in the data, or it is required to replace some values with `<null>`.