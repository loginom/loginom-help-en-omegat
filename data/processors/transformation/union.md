# ![Union](../../images/icons/components/union_default.svg) Union

The source data set is appended with the records of the joined data sets by means of the Union handler. The union is an analogue of the `UNION` operation in SQL.

%spoiler%Example:%spoiler%

Source table:

|Full name|Year of birth|
|:-|:-|
|Andreyeva|1982|
|Anisomov|1963|
|Antonov|1984|
|Artemyev|1965|

Joined table:

|Full name|Year of birth|KTU|Cluster|
|:-|:-|:-|-:|
|Abramov|1972|\> 0.8|1|
|Avdeyeva|1956|\> 0.8|1|
|Agafonov|1978|0.5 - 0.8|2|
|Aksenova|1979|0.5 - 0.8|2|
|Aleksandrov|1980|0.2 - 0.5|3|
|Alekseyev|1983|< 0.2|4|

Resulting table:

|Full name|Year of birth|KTU|Cluster|
|:-|:-|:-|-:|
|Andreyeva|1982|null|null|
|Anisomov|1963|null|null|
|Antonov|1984|null|null|
|Artemyev|1965|null|null|
|Abramov|1972|\> 0.8|1|
|Avdeyeva|1956|\> 0.8|1|
|Agafonov|1978|0.5 - 0.8|2|
|Aksenova|1979|0.5 - 0.8|2|
|Aleksandrov|1980|0.2 - 0.5|3|
|Alekseyev|1983|< 0.2|4|

%/spoiler%

### Input

* ![Main table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Main table** is the first table participating in the union.
* ![Joined table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Joined table** is the second table participating in the union. All subsequent tables are added by means of *Add another port*.
* ![Add port](../../images/icons/toolbar-controls/plus-native_default.svg) **Add another port** enables to create new ports for the subsequemt joined tables that will be automatically numbered.

### Output

* ![Output data set](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** denotes a table that contains fields of all tables supplied to the input ports, with the exception of the joined tables fields selected as the mapped ones. The selected fields are united and joined to the data set according to the set mapping. The fields without mapping append the data set. Prefixes can be optionally added to the captions of the appended fields.

## Wizard

It is required to map the fields of the main and joined tables. The data of the mapped fields are joined into one field in the resulting data set. This field is given the *Name* and *Caption* of the main table field. The data of the fields that are not mapped are placed into separate columns of the resulting data set that can be checked using prefixes.

Mapping is possible only for the fields with the same data type. When the wizard is initially opened, the fields with the same name and data type are automatically mapped. Manual setting is performed using the following control elements:

* **Mapping configuration area** denotes a table in which the *Main table* fields are in the left part, and *Connected tables* selected with checkboxes and drop-down lists are in the right part. *Connected tables* are shown as follows: *Connected table*, *Connected table 2* ... *Connected table N*.
   * **Checkbox**: the fields involved into mapping are selected with a flag in these columns of *Connected tables*.
   * **Раскрывающиеся списки полей** — содержатся в каждой строке таблицы сопоставления. Список позволяет выбрать поле присоединяемой таблицы, которое будет сопоставлено полю главной таблицы. С помощью переключателя ![Фильтр](../../images/icons/filter-switcher/filterswitch-on_default.svg) можно изменить способ отображения полей: общим списком или только поля, которые еще не выбраны.
* **Использовать префиксы** — применяется, если необходимо выделить не сопоставленные столбцы присоединяемых таблиц. Для таких столбцов в результирующем наборе данных можно задать.
   * **Префикс имени** — в это поле вводится префикс добавляемый к имени не сопоставленных полей таблиц, состав именного префикса следует правилу [Параметров полей набора данных](../../data/datasetfieldoptions.md).
   * **Префикс метки** — в это поле вводится префикс добавляемый к метке не сопоставленных полей таблиц, именуется согласно *Параметрам полей набора данных*.


В области настройки объединения предусмотрена возможность сортировки полей таблиц. Для этого необходимо щелкнуть мышью по заголовку таблицы (Главная таблица или Присоединяемая таблица). Аналогичным образом можно сортировать записи по индексу поля в таблице (№).
