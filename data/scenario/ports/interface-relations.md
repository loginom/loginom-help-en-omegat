# "Connections" Interface

В списке "Входные" отображаются поля/переменные принятого портом набора данных (входного набора порта), которые следует сопоставить с полями/переменными выходного набора порта, представленными в списке "Выходные". Для связывания необходимо зажать левой кнопкой мыши ячейку поля из левого списка и перенести ее на ячейку поля из правого списка, с которым следует соотнести, затем отпустить левую кнопку мыши, при этом отобразится графическая связь между ними. Удалить такую связь можно нажатием на кнопку ![](../../images/icons/link-grid/remove-link_hover.svg) на линии связи.

> **Важно:** допустимо сопоставление полей/переменных только [совместимых типов данных](../../data/compatibility.md).

В случае, если настраивается входной порт принимающий табличные данные, список "Выходные" отображает назначение полей набора данных, подаваемого на обработку алгоритмом узла. Если настраивается входной порт принимающий переменные, список "Выходные" отображает значения переменных.

Панель инструментов списка "Входные" содержит следующие команды:

* ![](../../images/icons/toolbar-controls/get-column-list_default.svg) **Получить список** — загрузка списка входных полей в случае его отсутствия (например, если импорт из базы данных задается через SQL-запрос). Команда доступна только для настройки выходного порта.
* ![](../../images/icons/toolbar-controls/create-out-column_default.svg) **Создать выходной...** — создает для выбранного входного поля/переменной такое же поле в списке "Выходные" и устанавливает с ним соответствие.
* ![](../../images/icons/toolbar-controls/create-out-columns_default.svg) **Создать выходные для всех входных...** — создает для всех входных полей/переменных такие же поля в списке "Выходные" и устанавливает с ними соответствие.
* **Тип создания производных столбцов** — кнопка отображается в случае, когда алгоритм компонента предусматривает добавление в результирующий набор новых полей/переменных, вычисленных на основе исходных (например, компонент [Замена](../../processors/transformation/substitution/README.md)), варианты настройки следующие:
   * ![](../../images/icons/toolbar-controls/tune_default.svg) **По умолчанию** — индивидуален для каждого компонента, реализует либо режим Замена, либо Добавление;
   * ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавление** — к настраиваемым столбцам добавляются поля, вычисленные на основе обрабатываемых полей;
   * ![](../../images/icons/toolbar-controls/edit_default.svg) **Замена** — вычисленные поля замещают обрабатываемые.

Панель инструментов списка "Выходные" содержит следующие команды:

* ![](../../images/icons/toolbar-controls/plus_default.svg) **Добавить** — добавляет новое поле в список настраиваемых столбцов и открывает диалог редактирования его параметров;
* ![](../../images/icons/toolbar-controls/edit_default.svg) **Настроить** — открывает диалог редактирования [параметров поля](../../processors/transformation/fields-parameters.md), диалог также можно открыть двойным кликом по выбранному полю;
* ![](../../images/icons/toolbar-controls/moveup_default.svg) ![](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вверх/вниз** — изменяет позицию выделенного поля в списке (поля в исходящей с порта таблице будут расположены слева направо в том же порядке, в каком они расположены в списке сверху вниз);
* ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Map fields**: the list of the output fields/variables of the port is mapped with the list of the input ones (more detailed information on the mapping algorithm is provided in [automapping of fields](./field-synchronization.md));
* ![](../../images/icons/toolbar-controls/auto-sync-columns_default.svg) **Автоматическая синхронизация** — при включении данного режима команда  ![](../../images/icons/toolbar-controls/sync-columns_default.svg) Синхронизировать поля будет выполняться автоматически при выполнении узла;
* ![](../../images/icons/toolbar-controls/delete-all_default.svg) **Удалить все...** — список "Выходные" очищается;
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Delete** enables to delete the selected position in the "Output" list. The icon of this command is highlighted when hovering cursor over this position.

Description of the Additional Wizard Commands:

* ![](../../images/icons/toolbar-controls/auto-connect_default.svg) **Auto link**: there is an attempt to establish the links between the output and input list of fields/variables. The list of the input/output fields/variables is not changed (the new fields are not added). New links can be added. If some links are already available, they are left unchanged. The algorithm used to create links tries to map the output fields/variables that do not have links with the input ones that do not have links:
   * first, by the following indicator: "compatible [data type](../../data/compatibility.md) and the name matches (case-insensitive)";
   * затем по признаку: "совместим тип данных и совпадает метка (без учета регистра)".
* ![](../../images/icons/toolbar-controls/remove-all-links_default.svg) **Delete all links** enables to delete all available links.
* ![](../../images/icons/toolbar-controls/order-links_default.svg) **Упорядочить связи** — пересортировывает поля списков для устранения пересечений связей друг с другом.
* ![](../../images/icons/toolbar-controls/help_default.svg) **Show lost links**: the missing fields of the input data set of the port with which links with the existing fields of the output data set have been earlier configured. Such situation can take place when the input data structure is changed.

If it is required to configure several positions simultaneously, they can be selected using the following methods:

* Press CTRL button and select them with one click of the left mouse button. The repeated field pressing deselects the field.
* Click one field, press SHIFT button. Then it is required to click another field. The list of positions between these fields will be selected in the result.

Both methods can be successively applied. For example, first, it is required to select the list using SHIFT, then press CTRL and delete some fields from the list or select the others.
