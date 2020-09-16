# ![ ](../../images/icons/data-sources/file-xml-export_default.svg) Экспорт в XML-файл

Компонент предназначен для экспорта таблиц данных в файлы формата XML.

> **Important:** For the node operation, it is required to pre-create [connection to the XSD schema](../connections/list/schemes.md) and connect it with the *Connection* input port. The connection is performed similar to [connection to DB](../../quick-start/database.md).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg)Data source is a data table to be exported.
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port): it is possible to set values of wizard parameters using variables.
* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) Connection to the XSD schema source (optional port) enables connection to the *Connection to set of the XSD schemas* configured earlier.

## Wizard

### Step 1. Настройка файла экспорта

* **File storage** enables to display information on method of connection to the destination file.
* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Настройка форматирования** — область включает следующие флаги.
   * **Записывать Byte Order Mark** — записывать [маркер последовательности байтов](https://ru.wikipedia.org/wiki/Маркер_последовательности_байтов).
   * **Добавлять отступы и переводы строк** — в файле экспорта каждой строке будет соответствовать один элемент, перед которым будет стоять позиция табуляции.
   * **Экранировать табуляции и переводы строк в атрибутах** — замена в атрибутах выходного файла символов табуляции на обозначение *`&#x9;`* и символа перевода строк на *`&#xA;`*
   * **Экранировать одинарные и двойные кавычки** — замена в выходном файле одинарных кавычек на обозначение *`&apos;`* и двойных на *`&quot;`*.

### Step 2. Сопоставление полей для экспорта

* **Connection** is a state of connection to the XSD schema.
* **Корневой элемент** — выбор корневого элемента XSD-схемы, в соответствии с которым данные будут экспортироваться.
* **Связывание объектов** — список полей экспортируемой таблицы и иерархической структуры XML, которые необходимо соотнести друг с другом. Типы данных поля таблицы и связываемого объекта должны совпадать. Списки можно связать автоматически, воспользовавшись кнопкой ![ ](../../images/icons/toolbar-controls/auto-connect_default.svg) *Связать автоматически*. Если связь между полем и объектом была установлена неправильно, ее можно удалить, нажав на кнопку ![ ](../../images/icons/link-grid/remove-link_hover.svg) на линии связи. При необходимости удаления всех связей используется кнопка ![ ](../../images/icons/toolbar-controls/remove-all-links_default.svg) *Удалить все связи*. Поля таблицы, которые уже соотнесены с каким-либо элементом, подсвечиваются жирным шрифтом. Помимо автоматического, возможно связывание полей и объектов XML вручную двумя способами.
   * **Методом Drag-and-drop** — перетащить метку поля на элемент.
   * Выбрать элемент для связи и в колонке *Связанные поля* щелкнуть левой кнопкой мыши по его ячейке. Откроется окно для выбора полей, пригодных для связывания. Кнопка-переключатель в состоянии фильтра ![ ](../../images/icons/filter-switcher/filterswitch-on_default.svg) предоставляет в окне выбора только те поля, которые еще не связаны с какими-либо элементами, а в простом состоянии ![ ](../../images/icons/filter-switcher/filterswitch-off_default.svg) предоставляет к выбору все поля.
* **Наличие временной зоны** — указание для данных формата дата/время временной зоны машины, на которой производится экспорт.
   * Не указывать.
   * Не указывать для даты — не указывать временную зону для элементов типа Date.
   * Указывать всегда.
