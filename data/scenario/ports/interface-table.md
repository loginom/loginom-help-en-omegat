# "Table" Interface

The interface is represented by a table with the following columns:

* **Input**: captions of the fields/variables of the input data set of the port.
* **Output**: captions of the fields/variables of the output data set of the port.
* **Name**: names of the fields/variables of the output data set of the port.
* **Data kind**: [data type](../../data/datatype.md) of the fields of the output data set of the port. The column is available only when editing the port that takes the table data.
* **Usage type**: usage type of the fields/variables of the output data set of the port.
* **Value**: value of the variables of the output data set of the port (more detailed information of the fields usage type is provided in [features of data set field](../../data/datasetfieldoptions.md)). The column is available only when editing the port that takes the variables.

The "Input" column cells values are edited. Cell editing is performed by selecting from the list of fields/variables of the input data set of the port. Thus, each of the output fields/variables can be mapped with field/variable of the input data set of the port.

> **Note:** The fields/variables that are already available in the table and also fields/variables with [incompatible data type](../../data/compatibility.md) are excluded from the selection list.

The table toolbar contains the following commands:

* ![](../../images/icons/toolbar-controls/plus_default.svg) **Add** enables to add the new field into the list of configured columns and open the dialog of its features editing.
* ![](../../images/icons/toolbar-controls/edit_default.svg) **Configure** enables to open the dialog of editing of [field features](../../data/datasetfieldoptions.md). The dialog can be also opened by double clicking the selected table row.
* ![](../../images/icons/toolbar-controls/moveup_default.svg) ![](../../images/icons/toolbar-controls/movedown_default.svg) **Move up/down** enables to change position of the selected field in the list (the fields in the table outcoming from the port will be located from left to right in the same order in which they are located in the list from up to down).
* ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Map fields**: the list of the output fields/variables of the port is mapped with the list of the input ones (more detailed information on the mapping algorithm is provided in [Automapping of Fields](./field-synchronization.md)).
* ![](../../images/icons/toolbar-controls/auto-sync-columns_default.svg) **Автоматическая синхронизация** — при включении данного режима команда ![](../../images/icons/toolbar-controls/sync-columns_default.svg) Синхронизировать поля будет выполняться автоматически при выполнении узла.
* ![](../../images/icons/toolbar-controls/auto-connect_default.svg) **Связать автоматически** — предпринимается попытка установить связи между выходным и входным списком полей/переменных. Список входных/выходных полей/переменных не изменяется (новые поля не добавляются). Могут быть добавлены новые связи. Если какие-то связи уже есть, то они остаются без изменения. Алгоритм создания связей пытается связать выходные поля/переменные, у которых нет связи, с входными, у которых нет связи:
   * сначала по признаку: "совместим [тип данных](../../data/datatype.md) и совпадает имя (без учета регистра)";
   * затем по признаку: "совместим [тип данных](../../data/datatype.md) и совпадает метка (без учета регистра)".
* ![](../../images/icons/toolbar-controls/remove-all-links_default.svg) **Удалить все связи** — удаляет все имеющиеся связи.
* ![](../../images/icons/toolbar-controls/help_default.svg) **Отображать потерянные связи** — отображаются отсутствующие поля входного набора порта, с которыми ранее были настроены связи с существующими полями выходного набора. Такая ситуация может возникнуть при изменении структуры входных данных.
* ![](../../images/icons/toolbar-controls/delete-all_default.svg) **Удалить все...** — список "Выходные" очищается.
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Удалить** — удаляет выделенную позицию в списке "Выходные", иконка этой команды высвечивается при наведении курсора на эту позицию.

При необходимости настроить несколько позиций одновременно, их можно выделить следующими способами:

* Зажать клавишу CTRL и выделить их по одному кликами левой кнопки мыши; повторное нажатие по полю снимает выделение;
* Сделать клик по одному полю, зажать клавишу SHIFT, затем клик по другому полю — в результате будет выделен список позиций между этими полями.

Оба способа можно применять последовательно: например, сначала выбрать список через SHIFT, а потом зажать CTRL и убрать некоторые поля из списка или выделить другие.
