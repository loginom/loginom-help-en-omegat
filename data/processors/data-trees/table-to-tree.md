# ![ ](../../images/icons/components/data-to-tree_default.svg) Table to Tree

The **Table to tree** node enables to transform the source data displayed in the form of the flat (two-dimensional) table to the hierarchic (tree-like) form. In this case, the number of the nesting levels is not limited.

## Ports

### Input

* ![Input data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** denotes a port for connection of the input data set in the form of a table.

### Output

* ![Output data set](../../images/icons/app/node/ports/outputs/tree_inactive.svg) **Output data set** denotes a port providing data after their transformation to the tree-like form.

## Wizard

It is required to configure mapping of the input data that are located leftward in the **Source data set columns** field, and created data tree that is located rightward in the **Tree node** and **Related fields** fields.

Primarily, only one root directory is available in the right field - **Root**.

To create the hierarchic structure, it is required to add at least one child node in the root folder. It can be done in two ways:

1. Select the root node and add the child node using the following button: ![Add child node](../../images/icons/wizards/datatree/add-child_default.svg).
2. Use the context menu command: ![Add child node](../../images/icons/wizards/datatree/add-child_default.svg) **Add child node**.

Afterwards the child node will be created. It is possible to define value of the following fields for this node:

* **Name** denotes a unique column name for one data set. It can consist of the following characters:
   * Capital or low case Latin characters.
   * Underscore characters.
   * Digits (it cannot be the first character).
* **Caption** denotes a random field description.
* **Data type** denotes one of the possible [data types](./../../data/datatype.md).
* **Data kind** denotes one of the possible [data kinds](./../../data/datakind.md).
* **Array**: when selecting this checkbox, the selected child node will be defined as ordered set (array) of one data type.
* **Container**: when selecting this checkbox, the selected child node will be a root node for other created child nodes of different types.

It is possible to create nodes of the same hierarchic level for child nodes. It can be done using the contex menu of the child node. Select ![Add neighboring node](../../images/icons/wizards/datatree/add-neighbor_default.svg) **Add neighboring node**, or the required node, and press ![Add neighboring node](../../images/icons/wizards/datatree/add-neighbor_default.svg) button to create the neighboring node.

Upon creation, it is possible to change the set values of fields for the child node. For this purpose, it is possible to use *F2* hot key. First, you are to select the required node. It also can be done using the following contex menu command: ![Edit...](../../images/icons/toolbar-controls/edit_default.svg) **Edit...**, or you can select the required node and press ![Edit...](../../images/icons/toolbar-controls/edit_default.svg) button.

![Load from XSD...](../../images/icons/toolbar-controls/import-from-xsd_default.svg) **Load from XSD...** button enables to select *.xsd file from which the output node structure will be loaded (the button is also duplicated by the context menu command). The following fields will be available in the appeared dialog window:

* The **XSD file** — a field for selection of the *.xsd file (not edited).
* **Namespace** enables to select a namespace from a list of all namespaces described in the *.xsd file. It limits selection of the root element only by the specified space. **All namespaces** value is set by default.
* **Root element** enables selection of the root node from the list in the loaded xsd file*. Value of the first root node of the selected file is set by default.
* **Recursive depth** provides the maximum number of recursions when opening recursive nodes. It is selected in the range from 0 to 3. By default, it is equal to 1. It means that every recursive node will be automatically opened but recursive nodes inside these nodes will be left unopened. Additional opening of recursive nodes is possible in the manual mode upon tree building. In the case of 0 value recursive nodes won't be automatically opened.

After filling in all the fields it is required to press **Load** button, and the XSD schema will be loaded for further work.

![Generate child elements](../../images/icons/toolbar-controls/open-all_default.svg) **Generate child elements** button opens the recursive node (it adds all subnodes of the recursive node to the data tree). It is not possible to open already opened recursive node repeatedly. If the XSD schema has not been loaded ("Load from XSD..." operation has not been performed), or the loaded tree does not include recursive nodes, the button is concealed/inactive.

The ![Next recursive unopened node](../../images/icons/toolbar-controls/find-next_default.svg) **Next recursive unopened node** button enables to select the next recursive unopened node as the current node after the current selected node. To select the first recursive node, it is required to select the root node and move to the next recursive unopened node. If the XSD schema has not been loaded ("Load from XSD..." operation has not been performed), or the loaded tree does not include recursive nodes, the button is concealed/inactive.

When all required hierarchy is created, it will be possible to use ![Auto link all](../../images/icons/toolbar-controls/auto-connect_default.svg)**Auto link all** button that will automatically link input and output fields if their names and data type coincide. Each child node can be also linked to the data source using the following context menu command: ![Auto link](../../images/icons/toolbar-controls/auto-connect_default.svg)**Auto link**. In this case, the node will be linked to one of their input nodes with the same name and data type.

Помимо автоматической связи, входные и выходные узлы можно связывать вручную с помощью метода *Drag-and-drop* путем перетаскивания метки поля из левого списка полей на элемент из правого списка полей. В этом случае значения имен полей не важны, однако типы данных по-прежнему должны совпадать.

Созданные связи между узлами можно удалять. Все связи разом можно удалить с помощью кнопки  ![Удалить все связи](../../images/icons/toolbar-controls/remove-all-links_default.svg)**Удалить все связи**, либо с помощью команды контекстного меню  ![Удалить все связи](../../images/icons/toolbar-controls/remove-all-links_default.svg)**Удалить все связи**, вызванного на любом из элементов списке. Для удаления какой-либо конкретной связи можно воспользоваться командой контекстного меню ![Удалить связь](../../images/icons/toolbar-controls/delete_default.svg)**Удалить связь**, вызванную на одном из связанных элементов. второй вариант — непосредственно щелкнуть левой кнопкой мыши на связь, которую необходимо удалить, и нажать на кнопку ![Удалить связь](../../images/icons/link-grid/remove-link_selected.svg) удаления связи (![Удалить связь](../../images/icons/link-grid/remove-link_hover.svg) при наведении на нее курсора).

Созданные дочерние узлы можно расположить в удобном для себя порядке. Для этого необходимо выделить узел, который нужно переместить и нажать на кнопки ![Переместить вверх](../../images/icons/toolbar-controls/moveup_default.svg)**Переместить вверх** (комбинация горячих клавиш *Ctrl+Up*) или ![Переместить вниз](../../images/icons/toolbar-controls/movedown_default.svg)**Переместить вниз** (комбинация горячих клавиш *Ctrl+Down*). Аналогичные команды есть и в контекстном меню каждого узла в правом окне (корневой узел **Root** переместить нельзя).

* ![Фильтрация](../../images/icons/toolbar-controls/filter_default.svg)**Фильтрация** – позволяет отобрать поля по имени или его части.
* ![Поиск](../../images/icons/toolbar-controls/zoom_default.svg) **Поиск** – позволяет отметить поля по имени или его части.

Чтобы сбросить параметры фильтрации или поиска нужно воспользоваться кнопкой ![Очистить](../../images/icons/filterdata/filterdata-delete_hover_10x10.svg)

Удалить дочерний узел можно нажав на иконку ![Удалить](../../images/icons/toolbar-controls/delete_default.svg)**Удалить** (горячая клавиша *Delete*), которая находится с правой части строки дочернего узла и видна при наведении курсора на строку. Все созданные дочерние узлы можно удалить нажав на кнопку ![Удалит все...](../../images/icons/toolbar-controls/delete-all_default.svg)**Удалить все...** (комбинация горячих клавиш *Shift+Delete*).
