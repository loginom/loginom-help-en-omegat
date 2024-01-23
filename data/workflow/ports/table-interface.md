---
description: Сопоставление полей входного набора данных, подаваемого на обработку алгоритмом узла Loginom, и выходного набора данных в таблице соответствия. Столбцы таблицы соответствия входных и выходных полей. Сопоставление полей. Команды мастера настройки сопоставления полей. Одновременная настройка нескольких полей.
---
# "Table" Interface

The interface is represented by a table with the following columns:

* **Input**: captions of the fields/variables of the input data set of the port.
* **Output**: captions of the fields/variables of the output data set of the port.
* **Name**: names of the fields/variables of the output data set of the port.
* **Data kind**: [data type](./../../data/datatype.md) of the fields of the output data set of the port. The column is available only when editing the port that takes the table data.
* **Usage type**: usage type of the fields/variables of the output data set of the port.
* **Value**: value of the variables of the output data set of the port (more detailed information on the fields usage type is provided in [features of data set field](./../../data/datasetfieldfeatures.md)). The column is available only when editing the port that takes the variables.

The "Input" column cells values are edited. Cell editing is performed by selecting from the list of fields/variables of the input data set of the port. Thus, each of the output fields/variables can be mapped with field/variable of the input data set of the port.

> **Note:** The fields/variables that are already available in the table and also fields/variables with [incompatible data type](./../../data/compatibility.md) are excluded from the selection list.

The table toolbar contains the following commands:

* ![](./../../images/icons/common/toolbar-controls/plus_default.svg) **Add** enables to add the new field/variable to the list of the configurable columns/variables and opens the dialog of parameters editing.
* ![](./../../images/icons/common/toolbar-controls/clone_default.svg) **Clone** enables to add the new field/variable on the basis of the selected one and opens the window of parameters editing. All field/variable attributes are copied while cloning with the exception of the value of the connected field/variable from the source data set.
* ![](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit...** enables to open the dialog of [features of field](./../../data/datasetfieldfeatures.md)/variable editing. The dialog can be also opened by double clicking on the selected table row or by pressing %kbd F2 %.
* ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move up/down** enables to change position of the selected field/variable in the list (the fields in the table outcoming from the port will be located from left to right in the same order in which they are located in the list from up to down).
* ![](./../../images/icons/common/toolbar-controls/sync-columns_default.svg) **Map fields**: the list of the output fields/variables of the port is mapped with the list of the input ones (more detailed information on the mapping algorithm is provided in [Automapping of Fields](./automapping-of-fields.md)).
* ![](./../../images/icons/common/toolbar-controls/auto-sync-columns_default.svg) **Automapping**: when this mode is enabled, ![](./../../images/icons/common/toolbar-controls/sync-columns_default.svg) Map fields command will be automatically executed when executing the node.
* ![](./../../images/icons/common/toolbar-controls/auto-connect_default.svg) **Auto link**: there is an attempt to establish the links between the output and input list of fields/variables. The list of the input/output fields/variables is not changed (the new fields are not added). New links can be added. If some links are already available, they are left unchanged. The algorithm used to create links tries to map the output fields/variables that do not have links with the input ones that do not have links:
   * first, by the following indicator: "[data type](./../../data/datatype.md) is compatible and the name matches (case-insensitive)";
   * then by the following indicator: "compatible [data type](./../../data/datatype.md) and the caption matches (case-insensitive)".
* ![](./../../images/icons/common/toolbar-controls/remove-all-links_default.svg) **Delete all links**: delete all available links.
* ![](./../../images/icons/common/toolbar-controls/help_default.svg) **Show lost links**: the missing fields of the input data set of the port with which links with the existing fields of the output data set have been earlier configured. Such situation can take place when the input data structure is changed.
* ![](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all...**: the "Input" list is cleared.
* ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete**: delete the selected position in the "Output" list. The icon of this command is highlighted when hovering cursor over this position.

If it is required to configure several positions simultaneously, they can be selected using the following methods:

* Press CTRL button and select them with one click of the left mouse button. The repeated field pressing deselects the field.
* Click on one field, press SHIFT button. Then it is required to click on another field. The list of positions between these fields will be selected in the result.

Both methods can be successively applied. For example, first, it is required to select the list using SHIFT, then press CTRL and delete some fields from the list or select the others.
