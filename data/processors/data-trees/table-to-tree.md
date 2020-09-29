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

Кнопкой ![Загрузить из XSD...](../../images/icons/toolbar-controls/import-from-xsd_default.svg) **Загрузить из XSD...** можно выбрать файл формата *.xsd, из которого будет загружена выходная структура узлов (также кнопка дублируется командой контекстного меню). В появившемся диалоговом окне будут следующие поля:

* **XSD файл** — поле для выбора *.xsd-файла (не редактируемое).
* **Пространство имен** — выбор пространства имен из списка всех пространств имен описанных в *.xsd-файле, ограничивает выбор корневого элемента только указанным пространством. По умолчанию выставляется значение **Все пространства имен**.
* **Корневой элемент** — выбор корневого узла из списка в загруженном *.xsd-файле. По умолчанию выставляется значение первого корневого узла выбранного файла.
* **Глубина рекурсии** — максимальное число рекурсий при раскрытии рекурсивных узлов. Выбирается в диапазоне от 0 до 3. По  умолчанию равно 1, что означает: каждый рекурсивный узел будет раскрыт автоматически, но рекурсивные узлы внутри этих узлов останутся нераскрытыми. Дополнительно раскрытие рекурсивных узлов можно проводить вручную после построения дерева. При значении 0 все рекурсивные узлы не будут раскрыты автоматически

После заполнения всех полей необходимо нажать кнопку **Загрузить** и XSD схема будет загружена для дальнейшей работы.

Кнопка ![Сгенерировать дочерние элементы](../../images/icons/toolbar-controls/open-all_default.svg) **Сгенерировать дочерние элементы** раскрывает рекурсивный узел (добавляет все подузлы рекурсивного узла в дерево данных). Уже раскрытый рекурсивный узел нельзя раскрыть повторно. Если не загружена XSD схема (не выполнялось действие "Загрузить из XSD...") или загруженное дерево не содержит рекурсивных узлов то кнопка скрыта/неактивна.

Кнопка ![Следующий рекурсивный нераскрытый узел](../../images/icons/toolbar-controls/find-next_default.svg) **Следующий рекурсивный нераскрытый узел** выбирает текущим узлом следующий рекурсивный нераскрытый узел после текущего выбранного узла. Для того чтобы выбрать первый рекурсивный узел необходимо выбрать корневой узел и выполнить переход к следующему рекурсивному нераскрытому узлу. Если не загружена XSD схема (не выполнялось действие "Загрузить из XSD...") или загруженное дерево не содержит рекурсивных узлов то кнопка скрыта/неактивна.

После того как будет создана вся необходимая иерархия можно будет воспользоваться кнопкой ![Связать все автоматически](../../images/icons/toolbar-controls/auto-connect_default.svg)**Связать все автоматически**, которая автоматически свяжет входные и выходные поля, если у них совпадают имена и тип данных. Также каждый дочерний узел можно связывать с источником данных командой контекстного меню ![Связать автоматически](../../images/icons/toolbar-controls/auto-connect_default.svg)**Связать автоматически**. В этом случае узел будет связан с одним их входных узлов с таким же именем и типом данных.

Помимо автоматической связи, входные и выходные узлы можно связывать вручную с помощью метода *Drag-and-drop* путем перетаскивания метки поля из левого списка полей на элемент из правого списка полей. В этом случае значения имен полей не важны, однако типы данных по-прежнему должны совпадать.

Созданные связи между узлами можно удалять. Все связи разом можно удалить с помощью кнопки  ![Удалить все связи](../../images/icons/toolbar-controls/remove-all-links_default.svg)**Удалить все связи**, либо с помощью команды контекстного меню  ![Удалить все связи](../../images/icons/toolbar-controls/remove-all-links_default.svg)**Удалить все связи**, вызванного на любом из элементов списке. Для удаления какой-либо конкретной связи можно воспользоваться командой контекстного меню ![Удалить связь](../../images/icons/toolbar-controls/delete_default.svg)**Удалить связь**, вызванную на одном из связанных элементов. второй вариант — непосредственно щелкнуть левой кнопкой мыши на связь, которую необходимо удалить, и нажать на кнопку ![Удалить связь](../../images/icons/link-grid/remove-link_selected.svg) удаления связи (![Удалить связь](../../images/icons/link-grid/remove-link_hover.svg) при наведении на нее курсора).

Созданные дочерние узлы можно расположить в удобном для себя порядке. Для этого необходимо выделить узел, который нужно переместить и нажать на кнопки ![Переместить вверх](../../images/icons/toolbar-controls/moveup_default.svg)**Переместить вверх** (комбинация горячих клавиш *Ctrl+Up*) или ![Переместить вниз](../../images/icons/toolbar-controls/movedown_default.svg)**Переместить вниз** (комбинация горячих клавиш *Ctrl+Down*). Аналогичные команды есть и в контекстном меню каждого узла в правом окне (корневой узел **Root** переместить нельзя).

* ![Фильтрация](../../images/icons/toolbar-controls/filter_default.svg)**Фильтрация** – позволяет отобрать поля по имени или его части.
* ![Поиск](../../images/icons/toolbar-controls/zoom_default.svg) **Поиск** – позволяет отметить поля по имени или его части.

Чтобы сбросить параметры фильтрации или поиска нужно воспользоваться кнопкой ![Очистить](../../images/icons/filterdata/filterdata-delete_hover_10x10.svg)

Удалить дочерний узел можно нажав на иконку ![Удалить](../../images/icons/toolbar-controls/delete_default.svg)**Удалить** (горячая клавиша *Delete*), которая находится с правой части строки дочернего узла и видна при наведении курсора на строку. Все созданные дочерние узлы можно удалить нажав на кнопку ![Удалит все...](../../images/icons/toolbar-controls/delete-all_default.svg)**Удалить все...** (комбинация горячих клавиш *Shift+Delete*).
