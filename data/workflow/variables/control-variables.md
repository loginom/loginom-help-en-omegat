---
description: Управляющие переменные в аналитической платформе Loginom. Задание настроек узла сценария в Loginom через переменные. Примеры использования управляющих переменных в Loginom.
---
# Control Variables

The control variables port accepts the variables that enable to set parameters of the node settings. Thus, the node settings can be the calculation subject matter in the course of the Workflow execution. It allows for more flexible implementation of the data processing logics.

> **Note:** To display the control ports, it is required to select the following item in the context menu of the node: "Show control variables port".

It is not required to accept control variables from another node. When configuring the port, it is required to set their list and values by default.

If a value is set for, at least, one of the control node variables, a switch for selection of method used to set values of its parameters will appear in the wizard:

* ![](./../../images/icons/propedit/value_default.svg) — the parameter value is manually set.
* ![](./../../images/icons/propedit/variable_default.svg) — the parameter value is set by the variable. In this case, a user selects the variable that contains the parameter value in the parameter field.

Examples of the control variables use:

* The variable can be used as the criteria parameter of the [Row Filter](./../../processors/transformation/row-filter/README.md) component.
* The variable as the SQL query parameter in the case of [Import from database](./../../integration/import/database.md) (the variable contains the SQL query text).