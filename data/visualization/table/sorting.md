# ![](../../images/icons/toolbar-controls/sort-asc_default.svg) Configure Sorting

Data sorting in the [Table](./README.md) visualizer is performed according to the rules described in the [Sorting](../../processors/transformation/sorting.md) node.

## Configuration window

В левом списке отображаются поля, по которым можно производить сортировку, и столбцы, видимость которых убрана в Таблице.

It is possible to filter the list of fields by specifying the field caption in the filter area.

Для настройки сортировки необходимо переместить требуемые поля в список *Поля сортировки*. It can be done as follows:

* by drag-and-drop method;
* by double click on the field with the left mouse button;
* Вызвав выпадающее меню нажатием правой кнопки мыши и нажав кнопку ![](../../images/icons/toolbar-controls/plus_default.svg) *Добавить*;
* by pressing ![](../../images/icons/toolbar-controls/arrow-r_default.svg) *Add* button.

Параметры настройки сортировки задаются двух соседних столбцах:

* **Порядок** — в ячейках этого поля отображается тумблер, который указывает на вид сортировки, он может принимать *По возрастанию* ![По возрастанию](../../images/icons/sorting/order-switcher-asc_default.svg) и *По убыванию* ![По убыванию](../../images/icons/sorting/order-switcher-desc_default.svg);
* **Регистр** — в ячейках этого поля, при условии что сортируемые значения ![Строковый тип](../../images/icons/data-types/string_default.svg)*Строкового* или ![Переменный тип](../../images/icons/data-types/variant_default.svg)*Переменного* типов, отображается чекбокс. При проставленном в чекбоксе флажке поле сортируется с учетом регистра.

Для исключения из списка сортируемых полей нужно:

* Перетащить запись из списка *Поля сортировки* в *Доступные поля*;
* Нажать на кнопку ![](../../images/icons/toolbar-controls/delete_default.svg) нужного поля в столбце ![](../../images/icons/toolbar-controls/delete-all_default.svg) ;
* Вызвать выпадающее меню нажатием правой кнопки мыши и нажать кнопку ![](../../images/icons/toolbar-controls/delete_default.svg) *Удалить*.

Для очистки всего списка нужно нажать на иконку ![](../../images/icons/toolbar-controls/delete-all_default.svg) у одноименного столбца, вызвав выпадающее меню выбрать пункт ![](../../images/icons/toolbar-controls/delete-all_default.svg) *Удалить все...*.

Для того чтобы изменить очередность сортировки, над таблицей сортируемых полей расположены кнопки перемещения:

* ![](../../images/icons/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещает выбранное поле вверх в списке очередности;
* ![](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вниз** — перемещает выбранное поле вниз в списке очередности.

Также переместить поле можно, выбрав нужное поле вызвать выпадающее меню и нажать пункт ![](../../images/icons/toolbar-controls/moveup_default.svg) *Переместить вверх* или ![](../../images/icons/toolbar-controls/movedown_default.svg) *Переместить вниз*, в зависимости от нужного действия.

После выбора всех настроек нажать кнопку *Сортировать* для применения сортировки в таблице.

> **Примечание**: сравнение и сортировка символов осуществляется в соответствии с локальными настройками пользователя, из-под которого запущен сервер Loginom.
