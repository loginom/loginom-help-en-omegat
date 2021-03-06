# ![](../../../images/icons/components/javascript_default.svg) JavaScript

## Description

The node creates a new data set with the set composition and features of fields. It appends data to it during the JavaScript code execution. To append the output data set, it is possible to use the data of the input ports in the code.
Composition and parameters of the output data set fields are set in the node wizard, and they can be changed during the code execution.

### Input

* ![](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Input data source (data table), optional.
* ![](../../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port enables to create a new port - Input data source[N] where N is an order port number.
* ![](../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) Input variables (variables), optional.

### Output

* ![](../../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

The following configuration stages are successively executed:

* Configure output columns.
* JavaScript.

### Configure Output Columns

Composition and features of the output data set fields are set on the following wizard page: *Configure Output Columns*.

### JavaScript

The *JavaScript* page contains the code editor executed by the node. [Preview…](../../../visualization/preview/preview.md) button enables to show up to 100 first strings of the resulting data set and [console of code debugging](./console.md) in a separate window.

> **Note: It is possible to activate all input ports ** by pressing *Preview* button. The *Preview* window is opened if the activation has been successfully finished.

[Import of the external JS modules](./external-modules.md) is supported.

Also refer to [Code editor hotkeys](./hotkeys.md)

## Access to the Ports Data and Other Built-In Objects from the JavaScript Code

To have access to the data of ports and other built-in objects in the context of the JavaScript code execution, the following objects are provided:

* [Input data sets](./input-tables.md) (`InputTables`, `InputTable`);
* [Input variables](./input-variables.md) (`InputVariables`);
* [Output data set](./output-table.md) (`OutputTable`);
* [Required enumerations](./enum.md) (`DataType`, `DataKind`, `UsageType`).

The objects specified above are imported from the built-in module: `"builtIn/Data"`. The import string of these objects is added to the text of the code executed by the node by default.

In the context of the JavaScript code execution, the *Calculator* functions are available. They are imported from the [built-in module`"builtIn/Calc"`](./calc-functions.md).

## Processing of Errors

When calling the *Preview* window or executing the node, the message informing about detected syntactic and execution errors is shown specifying position of the code with an error.

> **Important:** Uncaught errors in [Promise](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Promise) are recorded in the server log, and the node is executed without error messages.
