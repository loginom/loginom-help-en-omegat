# ![](../../images/icons/components/tree-to-data_default.svg) Tree to Table

The handler transforms the data represented in the hierarchic tree-like form to table. The selected nodes will be organized in columns of the output data set.

### Input

![](../../images/icons/app/node/ports/inputs/tree_inactive.svg) **Input tree** is a data set in the hierarchic tree-like form.

### Output

![](../../images/icons/app/node/ports/outputs/table_inactive.svg) **Output data set** is data table.

## Wizard

### Configuration of the Input Data Set

The data in the input port of the handler are represented in the form of input and output data sets.

The Input Tree list displays fields of the data set accepted by the port. It is required to map them with fields of the data set supplied by the port for processing - Output Tree (refer to [Ports](../../scenario/ports/README.md)).

It is possible to set the structure of the set supplied for processing in the manual way, or to download it from the *.xsd file.

#### Manual Setting of the Nodes Structure

In the case of the manual structuring of the data set to be subsequently supplied for processing, the context menu or toolbar commands will be used.

The toolbar and context menu of the Input Tree list contains the following commands:

* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Check all** enables to check all nodes.
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Deselect all** enables to deselect all nodes.
* ![](../../images/icons/toolbar-controls/reverse-check_default.svg) **Invert selection**enables to invert the selected nodes to unselected and vice versa.

The following commands are available for the Output Tree list in the context menu and toolbar:

* ![](../../images/icons/wizards/datatree/add-child_default.svg) **Add child node** enables to add the child node to the root node.
* ![](../../images/icons/wizards/datatree/add-neighbor_default.svg) **Add neighboring node** enables to create the node of the same hierarchic level as provided for the selected one.
* ![](../../images/icons/toolbar-controls/edit_default.svg) **Edit...** enables to call the editing window and change values of the fields for the selected node (the command can be called using *F2* hot key).
* ![](../../images/icons/toolbar-controls/moveup_default.svg) **Move up**  and  ![](../../images/icons/toolbar-controls/movedown_default.svg) **Move down** enable to change the order of nodes. In this case, it is not possible to move the **Root** root node (the commands are also available when using *Ctrl+Up* and *Ctrl+Down* combinations of hot keys, correspondingly).
* ![](../../images/icons/toolbar-controls/import-from-xsd_default.svg) **Load from XSD...** enables to load the structure of nodes of the output tree from the XSD file.
* ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Map fields** enables to map a list of output port fields to a list of the input ones (the mapping algorithm is described in the [Automapping of Fields](../../scenario/ports/field-synchronization.md)).
* ![](../../images/icons/toolbar-controls/auto-sync-columns_default.svg) **Automapping**: when enabling this mode, ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Map fields** command will be automatically performed during the node execution (enabled by default).
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Delete** enables to delete the child node of the tree, this command icon is highlighted when hovering a cursor over the node (the command can be also called by *Delete* hot key).
* ![](../../images/icons/toolbar-controls/delete-all_default.svg)**Delete all...** enables to delete all child nodes (combination of *Shift+Delete* hot keys).

> **Note: it is not possible to delete ** Delete root node **Root**.

When running the following commands: ![](../../images/icons/wizards/datatree/add-child_default.svg)  **Add child node**, ![](../../images/icons/wizards/datatree/add-neighbor_default.svg) **Add neighboring node**, ![](../../images/icons/toolbar-controls/edit_default.svg) **Edit...**, the following fields values are set:
* **Name** denotes a unique column name for one data set. It can consist of the following characters:
   * Capital or low case Latin characters.
   * Underscore characters.
   * Digits (it cannot be the first character).
* **Caption** denotes a random field description.
* **Data type** denotes one of the possible [data types](./../../data/datatype.md).
* **Data kind** denotes one of the possible [data kinds](./../../data/datakind.md).

Besides, it is possible to set the following indicators:
* **Array**: when selecting the flag, the selected child node will be defined as ordered set (array) of one data type.
* **Container**: when selecting the flag, the selected child node will be a root node for other created child nodes of different types.

It is possible to filter records in the Input Tree and Output Tree lists using ![](../../images/icons/toolbar-controls/filter_default.svg)**Filter** command of corresponding toolbar.

#### Loading of the Nodes Structure from the XSD Schema

The output tree structure can be loaded from the XSD file using ![](../../images/icons/toolbar-controls/import-from-xsd_default.svg) **Load from XSD...** command.

It is possible to fill in the following fields in the appeared dialog window:

* **XSD file** denotes a field for the file selection (not edited).
* **Namespace** enables to select a namespace from a list of all namespaces described in the XSD file. It limits selection of the root element only by the specified space. *All namespaces* value is set by default.
* **Root element** enables selection of the root node from the list in the loaded file. Value of the first root node of the selected file is set by default.
* **Recursive depth** provides the maximum number of recursions when opening recursive nodes. It is selected in the range from 0 to 3. By default, it is equal to 1. It means that every recursive node will be automatically opened but recursive nodes inside these nodes will be left unopened. Additional opening of recursive nodes is possible in the manual mode upon tree building. In the case of 0 value recursive nodes won't be automatically opened.

After filling in all the fields it is required to press **Load** button, and the XSD schema will be loaded for further work.

#### Fields Mapping

To map the fields of the input and output tree, it is required to establish links between them. It can be done using ![](../../images/icons/toolbar-controls/auto-connect_default.svg)**Auto link** button. The input and output fields will be linked, if their names and data types coincide.
Links can be also established in the manual way using the *Drag-and-drop* method by dragging the item from the left list to the item from the right list. In this case, fields names are not important. However, data types must still coincide.

It is possible to delete the links between nodes as follows:
* using ![](../../images/icons/toolbar-controls/remove-all-links_default.svg) **Delete all links** button, it deletes all links;
* using ![Delete link](../../images/icons/link-grid/remove-link_selected.svg) button in the line (when cursor hovering, the button is changed to ![Delete link](../../images/icons/link-grid/remove-link_hover.svg)).

### Selection of the Tree Nodes

The handler wizard is a tree view (the tree passed to output of the input port) with possibility to select some or all nodes. The selected nodes will be organized in columns of the output data set.

Available actions are represented in the form of the toolbar buttons and in the context menu:

* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Check all** enables to check all nodes.
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Deselect all** enables to deselect all nodes.
* ![](../../images/icons/toolbar-controls/reverse-check_default.svg) **Invert selection** enables to invert the selected nodes to unselected and vice versa.

It is possible to check the selected node by pressing *Enter*. Pressing *Enter* repeatedly allows for deselection.

Logics of Nodes Selection:

* When selecting a node, its parents are also selected, up to its root.
* When branch deselecting, .
* Глобальный индекс узла - узел отсутствует в древовидной структуре данных, однако он появляется в отображении дерева и указывает на индекс, используемый в узле-массиве. Его можно выбрать, при этом также выбирается и узел массива.
   Узел получает индекс -1, который учитывается при сортировке.
   При выборе узла для него формируется колонка с именем узла массива с добавлением  "_global_index" и меткой узла массива с добавлением "|Глобальный индекс".

> **Важно:** Компонент будет выдавать ошибку при выходе со страницы настройки или при выполнении, если у него нет ни одного выбранного узла.

**Дублировать значения родительских узлов** – если в структуре имеется родительский узел и последовательность потомков, значение родительского узла будет продублировано для каждой строки, образованной из последовательности потомков.

**Генерировать составные метки полей** – при наличии данного флага используется составная метка узла массива: в метках полей будет отражена иерархия относительно корневого элемента.
