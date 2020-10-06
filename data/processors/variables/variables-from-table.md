# ![Table to Variables](../../images/icons/components/datatovariables_default.svg) Table to Variables

The handler enables to transform the table data to variables. A variable is generated from the data of each table field. A variable can have only one value that's why different [aggregation functions](../func/aggregation-functions.md) are applied to the field data for its calculation.

## Ports

### Input

* ![Input data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** denotes a data table.

### Output

* ![Output variables](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables** denote a list of variables received from the input data source using aggregation functions by field.

## Wizard

The wizard window is divided into two areas:

* **Available fields** denote a list of fields of the input data set.
* **Selected fields** denote a list of resulting variables.

The Drag-and-Drop method enables to move fields beween areas.

### Available Fields

It is possible to add the selected fields to the *Selected fields* list using the following ways:

* Using ![Move to Variables](../../images/icons/dataset-operations/dsa-factor_default.svg) button.
* Using the contex menu - "Move to Variables".
* Pressing %kbd Alt S %.

### Selected Fields

When adding fields to the *Selected fields* list, the aggregation function will be assigned by default:

* The *sum* function will be selected for digits.
* The *amount* function will be selected for others.

It is possible to use the mouse to perform actions with the selected fields. It is possible to change position in the selected fields by dragging inside the list. It is possible to exclude by means of fields transfer to the *Available fields* list. Double click on the field enables to open the "Aggregation selection" window.

It is possible to perform the same actions using the quick access toolbar buttons:

* ![Move up](../../images/icons/toolbar-controls/moveup_default.svg) enables to move the selected item up the list.
* ![Move down](../../images/icons/toolbar-controls/movedown_default.svg) enables to move the selected item down the list.
* ![Edit](../../images/icons/toolbar-controls/edit_default.svg) enables to open the selection window of the available aggregation options for the selected fields.
* ![Delete](../../images/icons/toolbar-controls/delete_default.svg) enables to move the current item to the *Available fields* list.
* ![Delete all](../../images/icons/toolbar-controls/delete-all_default.svg) enables to move all items to the *Available fields* list.

The context menu duplicates the general functions:

* ![Move up](../../images/icons/toolbar-controls/moveup_default.svg) **Move up** enables to move the selected fields up the list.
* ![Move down](../../images/icons/toolbar-controls/movedown_default.svg) **Move down** enables to move the selected fields down the list.
* ![Edit](../../images/icons/toolbar-controls/edit_default.svg) **Edit** enables to open the selection window of the available aggregation options for the selected fields.
* ![Delete selected](../../images/icons/toolbar-controls/delete_default.svg) **Delete selected** enables to move the selected fields back to the *Available fields* list.

The following hotkeys duplicating the listed commands are available:

* %kbd Ctrl Up % means to move up.
* %kbd Ctrl Down % means to move down.
* %kbd F2 % means to edit.
* %kbd Delete % means to delete selected.

## Content of the Output Data Set

The output data set will include the variables received from the fileds using the selected aggregation functions. Each output aggregation option will map a separate variable.

Names, captions and values of fields will be received as follows:

* **Name** will coincide with the field name if only one function is selected. If there is more than one function, the termination corresponding to the selected function will be added to the name.
* **Caption** will consist of the field name and aggregation function name.
* **Value** is generated from all field values aggregated by the selected function.
