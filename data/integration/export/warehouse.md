---
description: Экспорт данных из Loginom в Хранилище данных Deductor Warehouse. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/wh-datawarehouse-export_default.svg) Экспорт в Deductor Warehouse

Узел предназначен для экспорта набора данных в Хранилище данных [Deductor Warehouse](./../../data-format/data-warehouse.md) (далее — Хранилище данных).

> **Важно:** для работы узла требуется предварительно создать [Подключение](./../connections/README.md) к *Хранилищу данных* и связать его с входным портом *Подключение*.

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) **Подключение** — порт для установки подключения к Хранилищу данных;
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Источник данных** — данные, подлежащие экспорту в Хранилище.

## Wizard

### Step 1. Select Data Warehouse Object

* **Connection** enables to display a string of connection to data source. It cannot be edited.
* **Activate** provides connection with the Data Warehouse if it has not been established yet. Upon connection establishment, the button is inactive, and the name is changed to *Activated*.
* **Объекты хранилища данных** — содержит древовидный список ![Процессы](./../../images/icons/imports/dwh/data-warehouse/fact-tables-folder_default.svg) *Процессов* и ![Измерения](./../../images/icons/imports/dwh/data-warehouse/dimensions-folder_default.svg) *Измерений*, из которых необходимо выбрать лишь один объект — ![Процесс](./../../images/icons/imports/dwh/data-warehouse/fact-table_default.svg) *Процесс* или ![Измерение](./../../images/icons/imports/dwh/data-warehouse/dimension_default.svg) *Измерение*.

### Step 2. Экспорт в хранилище данных

This page is designated for work with internal items of the object selected at the previous stage.

The wizard window is divided into two areas:

**Список исходных столбцов** — левая часть, содержит поля источника данных. Состоит из колонки *Столбцы исходного набора*.

**Дерево элементов Хранилища данных** — правая часть, содержит древовидный список внутренних элементов (атрибуты, измерения, факты) выбранного объекта.

Для Измерений доступны элементы:

* **Параметр** — метка поля Хранилища.
* **Тип** — отображает тип элемента. There are the following items:
   * ![Attribute](./../../images/icons/imports/dwh/data-warehouse/attribute_default.svg) *Attribute*.
   * ![Dimension](./../../images/icons/imports/dwh/data-warehouse/dimension_default.svg) *Dimension*.
   * ![Fact](./../../images/icons/imports/dwh/data-warehouse/fact_default.svg) *Fact*.


Для *Процессов*, помимо колонок *Параметр* и *Тип*, доступны также:

* **Способ удаления** — из выпадающего списка можно выбрать доступный для элемента способ удаления:
   * не удалять.
   * в списке.
* **Способ агрегации** — из выпадающего списка есть возможность выбрать доступный для элемента вид [агрегации](./../../processors/func/aggregation-functions.md):
   * ![](./../../images/icons/common/aggregations/factor-min_default.svg) Минимум.
   * ![](./../../images/icons/common/aggregations/factor-max_default.svg) Максимум.
   * ![](./../../images/icons/common/aggregations/factor-stat-first_default.svg) Первый.
   * ![](./../../images/icons/common/aggregations/factor-stat-last_default.svg) Последний.

Правый и левый список можно отсортировать по возрастанию и убыванию нажатием по соответствующей колонке.

Между элементами списка и дерева можно установить связи кнопкой ![ ](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_auto-connect_default.svg)*Связать все автоматически* и с помощью перетаскивания (*drag&drop*).
Имеется возможность ![ ](./../../images/icons/common/toolbar-controls/remove-all-links_default.svg) *Удалить все связи*.

При помощи поля ![фильтр](./../../images/icons/common/toolbar-controls/filter_default.svg) *Фильтрация* возможен поиск по частичному совпадению в колонке.



