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

* ![Output data set](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** denotes a table that contains fields of all tables supplied to the input ports, with the exception of the joined tables fields selected as the compared ones. Выбранные поля объединяются и присоединяются к набору данных согласно проставленному сопоставлению. Поля без сопоставления дополняют набор данных. По желанию к меткам дополненных полей можно добавить префиксы.

## Wizard

Полям главной таблицы необходимо сопоставить поля присоединяемой таблицы. В результирующем наборе данные сопоставленных полей объединяются в одно поле. Это поле получает *Имя* и *Метку* поля главной таблицы. Данные не сопоставленных полей помещаются в отдельные столбцы результирующего набора, которые можно отметить префиксами.

Сопоставление возможно только для полей с одинаковым типом данных. При первоначальном открытии мастера поля с одинаковым именем и типом данных сопоставляются автоматически. Ручная настройка осуществляется с помощью элементов управления:

* **Область настройки сопоставления** — представляет таблицу где слева представлены поля *Главной таблицы*, а справа *Подключаемые таблицы*, отмечаемые чекбоксами и выпадающими списками. Обозначение *Подключаемых таблиц* идет таким образом: *Подключаемая таблица*, *Подключаемая таблица 2* ... *Подключаемая таблица N*.
   * **Чекбокс** — в этих столбцах у *Подключаемых таблиц* флажком отмечаются поля участвующие в сопоставлении.
   * **Раскрывающиеся списки полей** — содержатся в каждой строке таблицы сопоставления. Список позволяет выбрать поле присоединяемой таблицы, которое будет сопоставлено полю главной таблицы. С помощью переключателя ![Фильтр](../../images/icons/filter-switcher/filterswitch-on_default.svg) можно изменить способ отображения полей: общим списком или только поля, которые еще не выбраны.
* **Использовать префиксы** — применяется, если необходимо выделить не сопоставленные столбцы присоединяемых таблиц. Для таких столбцов в результирующем наборе данных можно задать.
   * **Префикс имени** — в это поле вводится префикс добавляемый к имени не сопоставленных полей таблиц, состав именного префикса следует правилу [Параметров полей набора данных](../../data/datasetfieldoptions.md).
   * **Префикс метки** — в это поле вводится префикс добавляемый к метке не сопоставленных полей таблиц, именуется согласно *Параметрам полей набора данных*.


В области настройки объединения предусмотрена возможность сортировки полей таблиц. Для этого необходимо щелкнуть мышью по заголовку таблицы (Главная таблица или Присоединяемая таблица). Аналогичным образом можно сортировать записи по индексу поля в таблице (№).
