---
description: Импорт данных в Loginom из Хранилища данных Deductor Warehouse. Мастер настройки.
---
# ![Import from the DW](./../../images/icons/common/data-sources/wh-datawarehouse-import_default.svg) Import from Deductor Warehouse

The component is designated for data import from the Data Warehouse [Deductor Warehouse](./../../data-format/data-warehouse.md) (hereafter referred to as the Data Warehouse).

> **Important:** For the node operation, it is required to pre-create [Connection](./../connections/README.md) to the *Data Warehouse* and connect it with the *Connection* input port.

## Ports

### Input Ports

* ![Порт подключений](./../../images/icons/app/node/ports/inputs/link_inactive.svg) **Подключение** — принимает параметры подключения к Хранилищу данных.

### Output Ports

* ![Output port of table](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data set**: the data imported from the Data Warehouse.

## Wizard

Позволяет настроить импорт из Хранилища данных.

### Step 1. Select Data Warehouse Object

* **Connection** enables to display a string of connection to data source. Недоступна для редактирования.
* **Activate** provides connection with the Data Warehouse if it has not been established yet. Upon connection establishment, the button is inactive, and the name is changed to *Activated*.
* **Data Warehouse objects** contain a tree list ![Processes](./../../images/icons/imports/dwh/data-warehouse/fact-tables-folder_default.svg) *Processes* and ![Dimensions](./../../images/icons/imports/dwh/data-warehouse/dimensions-folder_default.svg) *Dimensions* from which it is required to select only one object, namely,![Process](./../../images/icons/imports/dwh/data-warehouse/fact-table_default.svg) *Process* or ![Dimension](./../../images/icons/imports/dwh/data-warehouse/dimension_default.svg) *Dimension*.

### Step 2. Import from Data Warehouse

This page is designated for work with internal items of the object selected at the previous stage: dimensions, attributes and facts.

The wizard window is divided into two areas:

* **Доступные элементы** — левая часть со списком возможных для выбора элементов, соответствующих выбранному на предыдущем шаге объекту.
* **Выбранные элементы** — правая часть с уже выбранными элементами, которая позволяет указать интересующие элементы из левой части и задать им необходимые условия и значения.

The item can be only in one list. It is possible to move items between the lists, including drag&drop (*drag&drop*).

### Available Items

* **Параметр** — метка параметра. При наведении курсора мыши появляется полное название метки.
* **Тип** — отображает тип элемента. There are the following items:
   * ![Dimension](./../../images/icons/imports/dwh/data-warehouse/dimension_default.svg) *Dimension*.
   * ![Fact](./../../images/icons/imports/dwh/data-warehouse/fact_default.svg) *Fact*.
   * ![Attribute](./../../images/icons/imports/dwh/data-warehouse/attribute_default.svg) *Attribute*.

> **Примечание:** Агрегация обязательна при импорте из хранилища данных. Агрегировать возможно только те данные, где тип объекта хранилища данных является фактом.
> Варианты агрегации: Сумма, Минимум, Максимум, Среднее, Количество.

It is possible to sort the list by pressing the *Parameter* or the *Type* column. It is possible to select several items by holding down the Shift or Ctrl key.

The context menu:

* ![Переместить](./../../images/icons/common/toolbar-controls/create-out-column_default.svg) **Переместить в выбранные** — перемещает выделенный элемент в список *Выбранные элементы*.
* ![Move all](./../../images/icons/common/toolbar-controls/create-out-columns_default.svg) **Move all to selected** enables to transfer all available items to the *Selected items* list.

### Selected Items

* ![Выводить](./../../images/icons/imports/dwh/data-warehouse/on_default.svg) **Выводить** — определяет, будет ли добавлен этот элемент в виде поля в выходной набор данных (если отключено, то поле добавлено не будет, но по нему можно установить фильтр).
* **Поле** — то же, что и *Параметр* в *Доступных элементах*.
* **Тип** — то же, что и *Тип* в *Доступных элементах*.
* **Условие** — для *Измерений* и *Атрибутов* позволяет выбирать из выпадающего списка условие фильтрации.
* **Значение** — для *Фактов* отображает выбранные [агрегации](./../../processors/func/aggregation-functions.md), для остальных элементов — значение фильтрации, если указано условие.
* ![Delete](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete** enables to move the required parameter back to the *Available items* list.

> **Note:** if the item showing is disabled, and no *conditions * and/or *values* are specified, upon the list saving, this item will be moved back to the *Available items* list.

Если в поле *Условие* выбран вариант *в списке* или *вне списка*, то в поле *Значение* появится возможность отредактировать список, по которому будет проводиться сравнение. При нажатии на кнопку ![уточнить](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) откроется окно *Список значений* (см. below).

Если в поле *Условие* выбран любой другой вариант, то в поле *Значение* появится возможность указать некоторые параметры фильтрации с помощью переменных. При нажатии на кнопку ![уточнить](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) откроется окно, в котором можно указать нужное значение напрямую либо выбрать соответствующую переменную из списка.

It is possible to change the order of items.

* ![Переместить вверх](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещает выделенный элемент вверх по списку.
* ![Move down](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move down** enables to move the selected item down the list.

To exclude the item from the list of selected items, it is required to perform the following actions:

* Перетащить элемент из списка *Выбранные элементы* в *Доступные элементы*.
* Press ![Delete](./../../images/icons/common/toolbar-controls/delete_default.svg) *Delete* button.

To clear the whole list, it is required to press ![Delete all](./../../images/icons/common/toolbar-controls/delete-all_default.svg) *Delete all...* button.

The context menu duplicates the general functions:

* ![Выводить](./../../images/icons/ext/checkbox-states/checked_default.svg) **Выводить** — определяет, будет ли добавлен этот элемент в виде поля в выходной набор данных.
* ![Delete](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete** enables to move the required parameter back to the *Available items* list.
* ![Удалить все](./../../images/icons/common/toolbar-controls/delete-all_default.svg) **Удалить все** — перемещает все параметры обратно в список *Доступные элементы*.
* ![Переместить вверх](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещает выделенный элемент вверх по списку.
* ![Move down](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move down** enables to move the selected item down the list.

The following hotkeys duplicating some listed commands are available:

* %kbd Delete %: delete.
* %kbd Shift Delete %: delete all.
* %kbd Ctrl Up % — переместить вверх;
* %kbd Ctrl Down % — переместить вниз.

#### List of Values

Позволяет выбрать строки, с которыми будут сравниваться значения.

* ![Получить список](./../../images/icons/common/toolbar-controls/get-column-list_default.svg) **Получить список** — получает список, соответствующий выбранному элементу.
* ![Выбрать все](./../../images/icons/common/toolbar-controls/check-all_default.svg) **Выбрать все** — отмечает все строки.
* ![Отменить выбор всех](./../../images/icons/common/toolbar-controls/uncheck-all_default.svg) **Отменить выбор всех** — убирает выбор всех строк.
* ![Инвертировать выбор](./../../images/icons/common/toolbar-controls/reverse-check_default.svg) **Инвертировать выбор** — меняет отмеченные и неотмеченные элементы местами.
* ![Добавить](./../../images/icons/common/toolbar-controls/plus_default.svg) **Добавить** — позволяет добавить в список новую строку.
* ![Edit](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit** enables to edit the row added to the list.

Using the![filter](./../../images/icons/common/toolbar-controls/filter_default.svg) *Filter* field, it is possible to decrease the visible part of the list.

When the work with the list is completed, it is required to press *Apply* button to introduce changes, or *Cancel* button to return to the state before the work with the list.
