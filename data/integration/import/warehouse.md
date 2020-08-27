# ![Import from the DW](../../images/icons/data-sources/wh-datawarehouse-import_default.svg) Import from Deductor Warehouse

The component is designated for data import from the Data Warehouse [Deductor Warehouse](../../data-format/data-warehouse.md) (hereafter referred to as the Data Warehouse).

> **Important:** For the node operation it is required to pre-create [Connection](../connections/README.md) to the *Data Warehouse* and connect it with the *Connection* input port.

## Ports

### Input Ports

* ![Port of connections](../../images/icons/app/node/ports/inputs/link_inactive.svg) **Connection** accepts parameters of connection to the Data Warehouse.

### Output Ports

* ![Output port of table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data set** mean the data imported from the Data Warehouse.

## Wizard

It enables to configure import of the required data from the Data Warehouse.

### Step 1. Selection of the Data Warehouse Object

* **Connection** enables to display a string of connection to data source. It cannot be edited.
* **Activate** provides connection with the Data Warehouse if it has not been established yet. Upon connection establishment, the button is inactive, and the name is changed to *Activated*.
* **Data Warehouse objects** contains a tree list ![Processes](../../images/icons/data-warehouse/fact-tables-folder_default.svg) *Processes* and ![Dimensions](../../images/icons/data-warehouse/dimensions-folder_default.svg) *Dimensions* from which it is required to select only one object, namely,![Process](../../images/icons/data-warehouse/fact-table_default.svg) *Process* or ![Dimension](../../images/icons/data-warehouse/dimension_default.svg) *Dimension*.

### Step 2. Import from the Data Warehouse

This page is designated for work with internal elements of the object selected at the previous stage: dimensions, attributes and measures.

The wizard window is divided into two areas:

* **Available elements** are in the left part. It contains a list of elements that can be chosen in accordance with the object selected at the previous stage.
* **Selected elements** are in the right part. It contains already chosen elements. It enables to specify the required elements in the first one and set necessary conditions and values for them.

The element can be only in one list. Между списками доступно перемещение элементов, в том числе и с помощью перетаскивания (*drag&drop*).

### Available Elements

* **Параметр** — метка параметра, при наведении курсора мыши появляется полное название метки.
* **Тип** — отображает типа элемента. Может быть:
   * ![Dimension](../../images/icons/data-warehouse/dimension_default.svg) *Dimension*.
   * ![Measure](../../images/icons/data-warehouse/fact_default.svg) *Measure*.
   * ![Attribute](../../images/icons/data-warehouse/attribute_default.svg) *Attribute*.

Список можно отсортировать, нажав по колонке *Параметр* или *Тип*. Выделить несколько элементов можно удерживая клавишу Shift или Ctrl.

Контекстное меню:

* ![Переместить](../../images/icons/toolbar-controls/create-out-column_default.svg) **Переместить в выбранные** — перемещает выделенный элемент в список *Выбранные элементы*;
* ![Переместить все](../../images/icons/toolbar-controls/create-out-columns_default.svg) **Переместить в выбранные все** — перемещает все доступные элементы в список *Выбранные элементы*.

### Selected Elements

* ![Выводить](../../images/icons/data-warehouse/on_default.svg) **Выводить** — определяет будет ли добавлен этот элемент в виде поля в выходной набор данных (если отключено, то поле добавлено не будет, но по нему можно установить фильтр);
* **Поле** — тоже что и *Параметр* в *Доступных элементах*;
* **Тип** — тоже что и *Тип* в *Доступных элементах*;
* **Условие** — для *Измерений* и *Атрибутов* позволяет выбирать из выпадающего списка условие фильтрации;
* **Значение** — для *Фактов* отображает выбранные [агрегации](../../processors/func/aggregation-functions.md), для остальных элементов отображается значение фильтрации, если указано условие;
* ![Удалить](../../images/icons/toolbar-controls/delete_default.svg) **Удалить** — перемещает соответствующий параметр обратно в список *Доступные элементы*.

> **Примечание:** если отключить вывод элемента и не задать *условий* и/или *значений*, то после сохранения списка этот элемент будет перемещен обратно в список *Доступные элементы*.

Если в поле *Условие* выбран вариант *в списке* или *вне списка*, то в поле *Значение* появится возможность отредактировать список, по которому будет проводится сравнение. Нажав на кнопку ![уточнить](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) откроется окно *Список значений* (см. далее).

Очередность элементов можно изменить:

* ![Переместить вверх](../../images/icons/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещает выделенный элемент вверх по списку;
* ![Переместить вниз](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вниз** — перемещает выделенный элемент вниз по списку.

Для исключения элемента из списка выбранных:

* Перетащить элемент из списка *Выбранные элементы* в *Доступные элементы*;
* To press the ![Delete](../../images/icons/toolbar-controls/delete_default.svg) button *Delete*.

Для очистки всего списка нажать ![Удалить все](../../images/icons/toolbar-controls/delete-all_default.svg) *Удалить все...*.

Контекстное меню дублирует общие функции:

* ![выводить](../../images/icons/checkbox-states/checked_default.svg) **Выводить** — определяет будет ли добавлен этот элемент в виде поля в выходной набор данных;
* ![Удалить](../../images/icons/toolbar-controls/delete_default.svg) **Удалить** — перемещает соотвествующий параметр обратно в список *Доступные элементы*;
* ![Удалить все](../../images/icons/toolbar-controls/delete-all_default.svg) **Удалить все** — перемещает все параметры обратно в список *Доступные элементы*;
* ![Переместить вверх](../../images/icons/toolbar-controls/moveup_default.svg) **Переместить вверх** — перемещает выделенный элемент вверх по списку;
* ![Переместить вниз](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вниз** — перемещает выделенный элемент вниз по списку.

Доступны горячие клавиши, дублирующие некоторые перечисленные команды:

* %kbd Delete % means to delete.
* %kbd Shift Delete % means to delete all.
* %kbd Ctrl Up % means to move up.
* %kbd Ctrl Down % means to move down.

#### List of Values

Позволяет выбрать строки с которыми будут сравниваться значения.

* ![Получить список](../../images/icons/toolbar-controls/get-column-list_default.svg) **Получить список** — получает список, соответствующий выбранному элементу;
* ![Выбрать все](../../images/icons/toolbar-controls/check-all_default.svg) **Выбрать все** — отмечает все строки;
* ![Отменить выбор всех](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Отменить выбор всех** — убирает выбор всех строк;
* ![Инвертировать выбор](../../images/icons/toolbar-controls/reverse-check_default.svg) **Инвертировать выбор** — меняет отмеченные и не отмеченные элементы местами;
* ![Добавить](../../images/icons/toolbar-controls/plus_default.svg) **Добавить** — позволяет добавить в список новую строку;
* ![Редактировать](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать** — позволяет отредактировать добавленную в список строку.

При помощи поля ![фильтр](../../images/icons/toolbar-controls/filter_default.svg) *Фильтрация* можно уменьшить видимую часть списка.

После завершения работы со списком следует нажать кнопку *Применить* для внесения изменений либо *Отменить* для возврата к состоянию до начала работы со списком.
