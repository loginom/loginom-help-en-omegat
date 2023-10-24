---
description: Компонент Переменные в таблицу в Loginom. Общие сведения. Мастер настройки. Пример.
---
# ![Variables to Table](./../../images/icons/components/variablestodata_default.svg) Variables to Table

Компонент преобразовывает список переменных в таблицу. It is possible to place the values of variables in the strings or columns of the resulting table.

## Ports

### Input

* ![Input variables](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables**: list of variables to be transformed to a table.

### Output

* ![Output data set](./../../images/icons/app/node/ports/outputs/table_inactive.svg) **Output data set**: data table.

## Wizard

Two options of variables record are specified in the wizard:

* **to columns**: each variable will correspond to a separate table field.
* **to strings**: each variable will correspond to a separate table record.

%spoiler%Example:%spoiler%

There is a list of variables:

| Name | Value |
| :-- | --: |
| a | 5 |
| b | 7 |
| c | 10 |
| d | 2 |

Result of the variables list transformation:

* To columns

| a(sum) | b(sum) | c(sum) | d(sum) |
| ---: | ---: | ---: | ---: |
| 5 | 7 | 10 | 2 |

* To strings

| Name | Caption | Value |
| :-- | :-- | --: |
| a | a(sum) | 5 |
| b | b(sum) | 7 |
| c | c(sum) | 10 |
| d | d(sum) | 2 |

%/spoiler%