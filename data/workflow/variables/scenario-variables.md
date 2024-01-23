---
description: Переменные сценария в аналитической платформе Loginom. Переменные системы. Переменные сессии. Переменные пакета. Приоритет переменных. Пример итогового набора в порту Переменные.
---
# Workflow Variables

The [ports](./../ports/README.md) of the Workflow variables are located in the upper left corner of the Workflow construction area:

* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Variables** represent the final set of all Workflow variables listed below. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **System variables** represent a set of variables of the operating system environment. It is read from the system settings. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Session variables** represent a set of variables of the current session. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Package variables** represent a set of variables of the current Package. [Predefined variables](./../../workflow/variables/predefined-variables.md#peremennye-paketa) cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **User variables** represent a set of variables set by the user of the current Workflow.
* ![ ](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) enables to call the action menu of ports of the Workflow variables. It is used during the Workflow debugging.

To add the package Variable, it is required to perform the following actions:
* press Navigation button in the main menu;
* select the Variable section in the opened tree-like Package structure.

Name, Caption and Type of data are set when adding the new variable. It is allowed not to set the variable value.

![Add Variable](./add-variable.png)

When **Hidden** checkbox is selected, the users without [Workflows design](./../../admin/users/roles.md#proektirovanie-stsenariev) role do not see the variable.

When **Read-only** checkbox is selected, the users without Workflows design role cannot set the variable Value.

If the user does not have Workflows design role, some restrictions are imposed on variables editing:

* it is not allowed to Delete/Add/Move variables;
* it is not allowed to change the variable Name/Caption/Type.

> **Note:** It is also possible to use the Workflow variables inside the [Supernode](./../../processors/control/supernode.md). However, in this case, the "User variables" port contains its own set of variables used only inside the Supernode.

The action menu contains the following commands:

* ![ ](./../../images/icons/common/toolbar-controls/launch-node_default.svg) **Start processing** provides the manual ports activations (the activated port contains data).
* ![ ](./../../images/icons/common/toolbar-controls/setup_default.svg) **Settings** enable to open the dialog of configuration of the user variables values.
* ![ ](./../../images/icons/common/toolbar-controls/configure-viewers_default.svg) **Configure visualizers** enables to open the dialog of the visualizers configuration.
* ![ ](./../../images/icons/common/toolbar-controls/rows_default.svg) **Other actions** enable to call the context menu with the extended set of commands.

To call the context menu of the port, it is required to click on the port. The context menu contains the following commands:

* ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Quick view** enables to call the variable [watch window](./../../visualization/preview/quick-view.md). The command is available after the port activation.
* ![ ](./../../images/icons/common/toolbar-controls/setup_default.svg) **Configure port** enables to open the dialog of configuration of the variables values.
* ![ ](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit port captions** enables to open the dialog of the port caption editing.

The variable with the same name can occur simultaneously in several ports. To exclude conflicts, the following priority is observed:

1. User variables.
2. Package variables.
3. Session variables.
4. System variables.

Thus, user variables have the highest priority.

For example:

* USERNAME=«PC-01$» system variable;
* USERNAME="Ivanov" user variable.

The final set in the "Variables" port contains a list of all variables. Their values are calculated taking into account the priority specified above. The value of the *USERNAME* variable in it will be "Ivanov".
