---
description: Компонент Соединение (переменные) в Loginom. Общие сведения. Объединение двух или более наборов переменных в один. Мастер настройки. Пример.
---
# ![Variable Union](./../../images/icons/components/unionvariables_default.svg) Variable Union

Компонент предназначен для объединения двух или более наборов переменных в один набор.

If names of the variables from different sets coincide, names of such variables in the output data set will be supplemented by unique numbers. If the variable name ends with a digit, in this case, names of these variables are numbered in an ascending order in the output data set.

## Ports

### Input

* ![Input variables](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables**: the optional set of variables.
* ![Added variables](./../../images/icons/app/node/ports/inputs/variable_inactive.svg) **Added variables**: the required set of variables.
* ![Another port](./../../images/icons/app/node/ports/add/add_inactive_default.svg) **Add another port** enables to create new input ports for the subsequent sets of variables.

### Output

* ![Output variables](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables**: the new set of variables.

%spoiler%Example:%spoiler%

There are three sets of variables:

* Set A:

| Name | Caption | Value |
|:--|:--|--:|
| a0 | a | 10 |
| b | b | 12 |

* Set B:

| Name | Caption | Value |
|:--|:--|--:|
| a0 | a | 20 |
| c | c | 18 |

* Set C:

| Name | Caption | Value |
|:--|:--|--:|
| a1 | a | 30 |
| b | b | 25 |

It is required to provide serial connection to the node. We will receive the following list of variables at the output (the "Note" column is provided for clarity; it won't be included into the resulting set):

| Name | Caption | Value | Note |
|:--|:--|--:|:--|
| a0 | a | 10 | from set A, variable a0 |
| b | b | 12 | from set A, variable b |
| a1 | a | 20 | from set B, variable a0 |
| c | c | 18 | from set B, variable c |
| a2 | a | 30 | from set C, variable a1 |
| b_1 | b | 25 | from set C, variable b |

Как видно вторая переменная `b` была переименована в `b_1`, в то время как вторая переменная `a0` была переименована в `a1`, и `a1` была переименована в `a2` так как после переименования `a0` в `a1` уже она являлась дублем.

%/spoiler%
