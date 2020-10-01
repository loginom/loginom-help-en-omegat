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

It is possible to set the structure of the set supplied for processing in manual way, or to download it from the *.xsd file.

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
* ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Синхронизировать поля** — синхронизируется список выходных полей порта со списком входных (алгоритм синхронизации см. [автоматическая синхронизация полей](../../scenario/ports/field-synchronization.md)).
* ![](../../images/icons/toolbar-controls/auto-sync-columns_default.svg) **Автоматическая синхронизация** — при включении данного режима команда  ![](../../images/icons/toolbar-controls/sync-columns_default.svg) **Синхронизировать поля** будет выполняться автоматически при выполнении узла (включена по умолчанию).
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Удалить** — удаляет дочерний узел дерева, иконка этой команды высвечивается при наведении курсора на узел (команду также можно вызвать горячей клавишей *Delete*).
* ![](../../images/icons/toolbar-controls/delete-all_default.svg)**Удалить все...** — удаляет все дочерние узлы (комбинация горячих клавиш *Shift+Delete*).

> **Примечание:** Удалить корневой узел **Root** нельзя.

При выполнении команд ![](../../images/icons/wizards/datatree/add-child_default.svg)  **Добавить дочерний узел**, ![](../../images/icons/wizards/datatree/add-neighbor_default.svg) **Добавить соседний узел**, ![](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать...** задаются значения полей:
* **Name** denotes a unique column name for one data set. It can consist of the following characters:
   * Capital or low case Latin characters.
   * Underscore characters.
   * Digits (it cannot be the first character).
* **Caption** denotes a random field description.
* **Data type** denotes one of the possible [data types](./../../data/datatype.md).
* **Вид данных** — один из возможных [видов данных](./../../data/datakind.md)
   .

Кроме того, можно установить следующие признаки:
* **Массив** — при установке флага выбранный дочерний узел будет определен как упорядоченное множество (массив) данных одного типа.
* **Контейнер** — если флаг установлен, выбранный дочерний узел будет являться корневым узлом для других создаваемых дочерних узлов разных типов.

Записи в списках Входное дерево и Выходное дерево можно отфильтровать с помощью команды ![](../../images/icons/toolbar-controls/filter_default.svg)**Фильтрация** на соответствующей панели инструментов.

#### Загрузка структуры узлов из XSD схемы

Структуру выходного дерева можно загрузить из файла формата XSD с помощью команды ![](../../images/icons/toolbar-controls/import-from-xsd_default.svg) **Загрузить из XSD...**

В появившемся диалоговом окне необходимо заполнить поля:

* **XSD файл** — поле для выбора файла (не редактируемое).
* **Пространство имен** — выбор пространства имен из списка всех пространств имен описанных в файле XSD, ограничивает выбор корневого элемента только указанным пространством. По умолчанию принимает значение *Все пространства имен*.
* **Корневой элемент** — выбор корневого узла из списка в загруженном файле. По умолчанию имеет значение первого корневого узла выбранного файла.
* **Recursive depth** provides the maximum number of recursions when opening recursive nodes. It is selected in the range from 0 to 3. By default, it is equal to 1. It means that every recursive node will be automatically opened but recursive nodes inside these nodes will be left unopened. Additional opening of recursive nodes is possible in the manual mode upon tree building. При значении 0 все рекурсивные узлы не будут раскрыты автоматически.

After filling in all the fields it is required to press **Load** button, and the XSD schema will be loaded for further work.

#### Сопоставление полей

Для сопоставления полей входного и выходного дерева необходимо задать между ними связи. Это можно сделать нажав кнопку ![](../../images/icons/toolbar-controls/auto-connect_default.svg)**Связать автоматически**. Входные и выходные поля будут связаны, если у них совпадают имена и тип данных.
Связи также можно установить вручную, с помощью метода *Drag-and-drop* путем перетаскивания элемента из левого списка на элемент из правого списка. В этом случае имена полей не важны, однако типы данных должны совпадать.

Связи между узлами можно удалять:
* с помощью кнопки  ![](../../images/icons/toolbar-controls/remove-all-links_default.svg) **Удалить все связи** — удаляет все связи;
* нажатием на кнопку ![Удалить связь](../../images/icons/link-grid/remove-link_selected.svg) на линии связи (при наведении курсора кнопка меняет вид на ![Удалить связь](../../images/icons/link-grid/remove-link_hover.svg)).

### Выбор узлов дерева

Мастер настройки обработчика представляет собой отображение дерева (дерево, поданое на выход входного порта) с возможностью выбора некоторых или всех узлов. The selected nodes will be organized in columns of the output data set.

Доступные действия представлены в виде кнопок на панели инструментов и в контекстном меню:

* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Выбрать все** – помечает все узлы.
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Снять выделение со всех** – снимает выделение со всех узлов.
* ![](../../images/icons/toolbar-controls/reverse-check_default.svg) **Инвертировать выделение** – меняет выбранные узлы на невыбранные и наоборот.

Пометить выделенный узел можно нажав клавишу *Enter*, повторное нажание *Enter* снимает выделение.

Логика выбора узлов:

* При выборе узла выбираются так же и его родители, вплоть до корня.
* При снятии выделения с ветки выделение снимается и со всех потомков.
* Глобальный индекс узла - узел отсутствует в древовидной структуре данных, однако он появляется в отображении дерева и указывает на индекс, используемый в узле-массиве. Его можно выбрать, при этом также выбирается и узел массива.
   Узел получает индекс -1, который учитывается при сортировке.
   При выборе узла для него формируется колонка с именем узла массива с добавлением  "_global_index" и меткой узла массива с добавлением "|Глобальный индекс".

> **Важно:** Компонент будет выдавать ошибку при выходе со страницы настройки или при выполнении, если у него нет ни одного выбранного узла.

**Дублировать значения родительских узлов** – если в структуре имеется родительский узел и последовательность потомков, значение родительского узла будет продублировано для каждой строки, образованной из последовательности потомков.

**Генерировать составные метки полей** – при наличии данного флага используется составная метка узла массива: в метках полей будет отражена иерархия относительно корневого элемента.
