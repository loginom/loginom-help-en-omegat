# Workflow Variables

The [ports](../ports/README.md) of the Workflow variables are located in the upper left corner of the Workflow construction area:

* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Variables** represent the final set of all Workflow variables listed below. Variables cannot be edited.
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **System variables** represent a set of variables of the operating system environment. It is read from the system settings. Variables cannot be edited.
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Session variables** represent a set of variables of the current session. Variables cannot be edited.
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Package variables** represent a set of variables of the current Package. Variables cannot be edited.
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **User variables** represent a set of variables set by the user of the current Workflow.
* ![ ](../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) enables to call the action menu of ports of the Workflow variables. It is used during the Workflow debugging.

> **Note:** It is also possible to use the Workflow variables inside the [Supernode](../../processors/control/submodel.md). However, in this case, the "User variables" port contains its own set of variables used only inside the Supernode.

The action menu contains the following commands:

* ![ ](../../images/icons/toolbar-controls/launch-node_default.svg) **Start processing** provides the manual ports activations (the activated port contains data).
* ![ ](../../images/icons/toolbar-controls/setup_default.svg) **Settings** enable to open the dialog of configuration of the user variables values.
* ![ ](../../images/icons/toolbar-controls/configure-viewers_default.svg) **Configure visualizers** enables to open the dialog of the visualizers configuration.
* ![ ](../../images/icons/toolbar-controls/rows_default.svg) **Other actions** enable to call the context menu with the extended set of commands.

To call the context menu of the port, it is required to click on the port. The context menu contains the following commands:

* ![ ](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) **Quick view** enables to call the variable [watch window](../../visualization/preview/quick-view.md). The command is available after the port activation.
* ![ ](../../images/icons/toolbar-controls/setup_default.svg) **Configure port** enables to open the dialog of configuration of the variables values.
* ![ ](../../images/icons/toolbar-controls/edit_default.svg) **Edit port captions** enables to open the dialog of the port caption editing.

The variable with the same name can occur simultaneously in several ports. To exclude conflicts, the following priority is observed:

1. User variables.
2. Package variables.
3. Session variables.
4. System variables.

Thus, user variables have the highest priority.

For example:

* System variable USERNAME="PC-01$";
* User variable USERNAME="Ivanov".

The final set in the "Variables" port contains a list of all variables. Their values are calculated taking into account the priority specified above. The value of the *USERNAME* variable in it will be "Ivanov".
