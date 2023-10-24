---
description: Переменные в аналитической платформе Loginom. Создание переменных в Loginom. Компоненты Loginom, предназначенные для работы с переменными.
---
# Variables

**Variable**: the named object that can contain only one value of the particular type. The variables values can be used in calculations, for example, in the following nodes: [Calculator](./../../processors/transformation/calc/README.md),
[Condition](./../../processors/control/condition.md),
etc. The variables values can be also used as
[control variables](./control-variables.md)
to set parameters of the node settings.

It is possible to create variables using one of the following methods:

* in the settings of the output port "User variables" in the upper left corner of the Workflow construction area;
* in the following components nodes: [Calculator (variables)](./../../processors/variables/variables-calc.md) and [Table to variables](./../../processors/variables/variables-from-table.md).

When creating the variable, it is required to set the following information:

* The name must be unique in one set of variables. It can consist of the capital or lower case Latin letters, underscore characters and digits. The first name character can't be a digit. The name is used to specify the variable in the calculator expressions.
* Caption: the name that consists of any characters. It is a clarification for a user.
* The Variable [data type](./../../data/datatype.md).
* Value.

The ports interacting with the sets of variables are graphically displayed as follows:

* ![](./../../images/icons/app/node/ports/inputs/variable_inactive.svg) — input port;
* ![](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) — output port.

> **Important:** The outpot port for variables can have a connection line only with the input port for variables.

The Loginom components specially designated for operations with sets of variables are listed below:

* [Replace (variables)](./../../processors/variables/variables-replace.md) enables to replace the values of the selected variables to the values from the replacement table.
* [Calculator (variables)](./../../processors/variables/variables-calc.md) enables to create the new variables according to the entered expressions. The variables supplied to the input port can be used in the expressions.
* [Union of variables](./../../processors/variables/variables-union.md) enables to combine two or more sets of variables into one set.
* [Variables to table](./../../processors/variables/variables-to-table.md) enable to transform a set of variables to a data table.
* [Table to variables](./../../processors/variables/variables-from-table.md) enables to transform a data table to a set of variables.
