---
description: Сопоставление полей входного набора данных, подаваемого на обработку алгоритмом узла Loginom, и выходного набора данных. Установка связи между полями. Список входных и выходных полей в мастере настройки сопоставления полей. Команды мастера настройки сопоставления полей. Одновременная настройка нескольких полей.
---
# "Connections" Interface

The "Input" list displays fields/variables of the data set accepted by the port (the input data set of the port). It is required to map them with fields/variables of the output data set of the port represented in the "Output" list. To establish links, it is required to press the field cell from the left list with the left mouse button and transfer it to the field cell from the right list with which it is required to provide mapping. Then it is required to release the left mouse button, and the graphical link will be displayed in this case. It is possible to delete this link by pressing ![](./../../images/icons/link-grid/remove-link_hover.svg) button in the line.

> **Important:** It is allowed to map the fields/variables only of the [compatible data types](./../../data/compatibility.md).

If it is required to configure the input port that accepts the table data, the "Output" list displays the usage type of the data set fields of the node supplied for processing by the algorithm. If it is required to configure the input port that accepts variables, the "Output" list displays the variables values.

The "Input" list toolbar contains the following commands:

* ![](./../../images/icons/common/toolbar-controls/get-column-list_default.svg) **Get list**: downloading of the input fields list in the case of its absence (for example, if import from the database is set via the SQL request). The command is available only for the output port configuration.
* ![](./../../images/icons/common/toolbar-controls/create-out-column_default.svg) **Create output...**: create the same field for the selected input field/variable in the "Output" list and provide mapping with it.
* ![](./../../images/icons/common/toolbar-controls/create-out-columns_default.svg) **Create output for all input...**: create the same fields in the "Output" list for all input fields/variables and provide mapping with them.
* **Type of derived columns creation**. The button is displayed only when the component algorithm provides for addition to the resulting data set of the new fields/variables calculated on the basis of the source ones (for example, [Replace](./../../processors/transformation/substitution/README.md) component). There are the following configuration options:
   * ![](./../../images/icons/common/toolbar-controls/tune_default.svg) **По умолчанию** — индивидуален для каждого компонента, реализует либо режим Замена, либо Добавление.
   * ![](./../../images/icons/common/toolbar-controls/plus_default.svg) **Добавление** — к настраиваемым столбцам добавляются поля, вычисленные на основе обрабатываемых полей.
   * ![](./../../images/icons/common/toolbar-controls/edit_default.svg) **Replace**: the calculated fields are replaced with the processed ones.

The "Output" list toolbar contains the following commands:

* ![](./../../images/icons/common/toolbar-controls/plus_default.svg) **Добавить** — добавляет новое поле/переменную в список настраиваемых столбцов/переменных и открывает диалог редактирования параметров.
* ![](./../../images/icons/common/toolbar-controls/clone_default.svg) **Клонировать** — добавляет новое поле/переменную на основе выделенного и открывает окно редактирования параметров. При клонировании копируются все атрибуты поля/переменной, кроме значения связанного поля/переменной из исходного набора данных.
* ![](./../../images/icons/common/toolbar-controls/edit_default.svg) **Редактировать...** — открывает диалог редактирования [параметров поля](./../../data/datasetfieldfeatures.md)/переменной. Диалог также можно открыть двойным кликом по выбранной строке таблицы или нажатием клавиши %kbd F2 %.
* ![](./../../images/icons/common/toolbar-controls/moveup_default.svg) ![](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Переместить вверх/вниз** — изменяет позицию выделенного поля/переменной в списке (поля в исходящей с порта таблице будут расположены слева направо в том же порядке, в каком они расположены в списке сверху вниз).
* ![](./../../images/icons/common/toolbar-controls/sync-columns_default.svg) **Map fields**: the list of the output fields/variables of the port is mapped with the list of the input ones (more detailed information on the mapping algorithm is provided in [Automapping of Fields](./automapping-of-fields.md)).
* ![](./../../images/icons/common/toolbar-controls/auto-sync-columns_default.svg) **Automapping**: when this mode is enabled, ![](./../../images/icons/common/toolbar-controls/sync-columns_default.svg) Map fields command will be automatically executed when executing the node.
* ![](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Delete all...**: the "Input" list is cleared.
* ![](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete**: delete the selected position in the "Output" list. The icon of this command is highlighted when hovering cursor over this position.

Description of the Additional Wizard Commands:

* ![](./../../images/icons/common/toolbar-controls/auto-connect_default.svg) **Auto link**: there is an attempt to establish the links between the output and input list of fields/variables. The list of the input/output fields/variables is not changed (the new fields are not added). New links can be added. If some links are already available, they are left unchanged. The algorithm used to create links tries to map the output fields/variables that do not have links with the input ones that do not have links:
   * first, by the following indicator: "[data type](./../../data/compatibility.md) is compatible and the name matches (case-insensitive)";
   * then by the following indicator: "data type is compatible and the caption matches (case-insensitive)".
* ![](./../../images/icons/common/toolbar-controls/remove-all-links_default.svg) **Delete all links**: delete all available links.
* ![](./../../images/icons/common/toolbar-controls/order-links_default.svg) **Order links**: resort lists fields to delete the crossing links.
* ![](./../../images/icons/common/toolbar-controls/help_default.svg) **Show lost links**: the missing fields of the input data set of the port with which links with the existing fields of the output data set have been earlier configured. Such situation can take place when the input data structure is changed.

If it is required to configure several positions simultaneously, they can be selected using the following methods:

* Зажать клавишу CTRL и выделить их по одному кликами левой кнопки мыши; повторное нажатие по полю снимает выделение.
* Click on one field, press SHIFT button. Then it is required to click on another field. The list of positions between these fields will be selected in the result.

Both methods can be successively applied. For example, first, it is required to select the list using SHIFT, then press CTRL and delete some fields from the list or select the others.
