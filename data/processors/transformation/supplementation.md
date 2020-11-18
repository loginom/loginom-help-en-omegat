# ![Enrich Data](../../images/icons/components/enrich-data_default.svg) Enrich Data

Join of the data tables based on connection by the key fields — analogue of the `LEFT JOIN` operation in SQL. The node performs the action similar to the [Left join](./join/left.md) of the [Join](./join/README.md) node but the number of joined tables is optional.

## Ports

### Input

* ![Main table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Main table** is the left table to be joined in the context of the SQL queries terms.
* ![Joined table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Joined table** is the right table to be joined in the context of the SQL queries terms.
* ![Add port](../../images/icons/toolbar-controls/plus-native_default.svg) **Add another port** enables to create new ports for the subsequemt joined tables that will be automatically numbered.

### Output

* ![Output data set](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** denotes a table that contains fields of all tables supplied to the input ports, with the exception of the joined tables fileds selected as the key ones. Prefixes can be optionally added to the field captions of the joined tables.

## Wizard

* **Key fields configuration area**: it is required to place a flag in the column of the joined table in front of the main table field that must become the key one. Из выпадающего списка необходимо выбрать поле, по которому таблицы будут связываться. При включенной фильтрации ![Включенная фильтрация](../../images/icons/filter-switcher/filter-switcher-filterswitch-off_default.svg) доступны совместимые поля, которые еще не связаны с ключевыми полями главной таблицы, при отключенной фильтрации ![Выключенная фильтрация](../../images/icons/filter-switcher/filter-switcher-filterswitch-on_default.svg) можно выбрать любое из полей, совместимых по типу.
* **Использовать префиксы** — включение данного флага позволяет добавить в результирующей таблице префиксы к именам и меткам полей, взятых из присоединяемых таблиц.
   * **Префикс имени** — в это поле вводится префикс добавляемый к имени присоединенных полей таблиц, состав именного префикса следует правилу [Параметров полей набора данных](../../data/datasetfieldoptions.md).
   * **Префикс метки** — в это поле вводится префикс добавляемый к метке присоединенных полей таблиц, именуется согласно *Параметрам полей набора данных*.

For example:

Для примера возьмем три таблицы. Персона - главная таблица, и две присоединяемых: Город и Регион.

Main table:

|Name|City Id|
|:-|-:|
|Andrey|1|
|Leonid|2|
|Sergey|1|
|Gregory|4|

Joined table:

|Id|City|
|-:|:-|
|1|Moscow|
|2|Saint Petersburg|
|3|Kazan|

Присоединяемая таблица 2:

|Id города|Регион|
|-:|:-|
|1|Центральный|
|2|Северо-западный|
|3|Приволжский|
|4|Дальневосточный|

![Порядок связей при присоединении.](./supplementation.svg)

Resulting table:

|Имя|Id города|Город|Регион|
|:-|-:|:-|:-|
|Андрей|1|Москва|Центральный|
|Леонид|2|Санкт-Петербург|Северо-западный|
|Сергей|1|Москва|Центральный|
|Григорий|4|&#60;null>|Дальневосточный|
