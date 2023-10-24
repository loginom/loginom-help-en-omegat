---
description: Кросс-таблица в Loginom. Создание сводной таблицы. Мастер настройки.
---
# ![Cross Table](../../images/icons/components/cross-tab_default.svg) Cross Table

Компонент создает сводную таблицу на основе исходного набора. When creating the table, the following criteria are met:

* A part of fields of the source data set is unchanged forming the **strings** of the pivot table.
* The values of cells of the other fields groups form the **columns** of the pivot table defining their headers.
* Data of the third group of fields is used for calculation of **measures** — [aggregated values](../func/aggregation-functions.md) at the intersection of strings and columns of the pivot table.

%spoiler%Example:%spoiler%

Source table:

| Date | Goods | Volume of sales |
| :------- | :------- | -------: |
| 05.02.2022 | Wallpaper | 2000 |
| 05.02.2022 | Grout | 300 |
| 07.02.2022 | Wallpaper | 2000 |
| 07.02.2022 | Sealer | 750 |
| 07.02.2022 | Primer | 400 |
| 10.02.2022 | Primer | 400 |
| 10.02.2022 | Wallpaper | 3000 |
| 11.02.2022 | Sealer | 250 |

Преобразуем исходную таблицу со следующими параметрами: колонки — *Товар*, строки — *Дата*, факты — *Количество продаж*. Let's select the *Sum* aggregation function by the *Volume of sales* field.

Output data set:

| Date | Sealer | Primer | Grout | Wallpaper |
| :------- | -------: | -------: | -------: | -------: |
| 05.02.2022 |  | | 300 | 2000 |
| 07.02.2022 | 750 | 400 | | 2000 |
| 10.02.2022 |  | 400 | | 3000 |
| 11.02.2022 | 250 |  | |  | |

Upon processing, the values of the *Goods* field were transferred to headers of the new columns, the values of the *Date* field were left in the strings, the values of the *Volume of sales* field were summed by dates.

%/spoiler%

### Input

* ![Input data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source**: the port for connection of the input data set.

### Output

* ![Output data source](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set**: the table with processed data is output to the port.

## Wizard

The wizard window is divided into two areas: available fields (to the left) and selected fields (to the right).

* **Available fields** contain the input data set fields.
* **Selected fields** are divided into groups.
   * ![Columns](../../images/icons/common/dataset-operations/dsa-columns_default.svg) Columns.
   * ![Strings](../../images/icons/common/dataset-operations/dsa-rows_default.svg) Strings.
   * ![Measures](../../images/icons/common/dataset-operations/dsa-factor_default.svg) Measures.

%spoiler%Агрегация фактов и возможные типы данных:%spoiler%


|Вид агрегации|![](../../images/icons/common/data-types/string_default.svg)|![](../../images/icons/common/data-types/integer_default.svg)|![](../../images/icons/common/data-types/float_default.svg)|![](../../images/icons/common/data-types/boolean_default.svg)|![](../../images/icons/common/data-types/datetime_default.svg)|![](../../images/icons/common/data-types/variant_default.svg)|
|:-|:-:|:-:|:-:|:-:|:-:|:-:
|![](../../images/icons/common/aggregations/factor-sum_default.svg) Сумма|||**•**||||
|![](../../images/icons/common/aggregations/factor-count_default.svg) Количество|**•**|**•**|**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-min_default.svg) Минимум|**•**||**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-max_default.svg) Максимум|**•**||**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-avg_default.svg) Среднее|||**•**||**•**||
|![](../../images/icons/common/aggregations/factor-stddev_default.svg) Стандартное отклонение|||**•**||**•**||
|![](../../images/icons/common/aggregations/factor-unique-count_default.svg) Количество уникальных|**•**||**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-null-count_default.svg) Количество пропусков|**•**||**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-stat-first_default.svg) Первый|**•**||**•**|**•**|**•**|**•**|
|![](../../images/icons/common/aggregations/factor-stat-last_default.svg) Последний|&nbsp;&nbsp;**•**&nbsp;&nbsp;||&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;|&nbsp;&nbsp;**•**&nbsp;&nbsp;||

%/spoiler%


The *Available fields* area always contains the *Count* synthetic field apart from the input data set fields, it can be added only to the *Measures* group. It will be calculated how many times each combination of columns and strings occurs in the source data set.

### Columns

The values of these fields will be the columns headers. Поля в данной группе обязательно должны иметь дискретный [вид данных](../../data/datakind.md).

#### **Измерение в колонках**

Данная панель может быть открыта следующими способами:
* ![](../../images/icons/common/system-object/../system-objects/sliced_18x18/edit_default.svg) в правом верхнем углу;
* контекстное меню;
* двойной клик на поле;
* горячая клавиша %kbd F2 %.

![Измерение в колонках](./cross-table/measure.PNG)

When using the cross table, new values can appear in the fields by which the columns were generated. В узле имеется два подхода к решению этой проблемы:

* **Sliding unique values** enable to create columns from the unique field (fields) values. When changing the source data set values, the whole structure of the resulting table will be fully reconstructed taking into account the new unique values. It is also possible to set the minimum number of the fields values from which the columns will be created. But in this case, the column with the remaining values will be left in the resulting table.

%spoiler%Example:%spoiler%

Input table:

| Point of sale | Goods | Amount of sales |
|:--------------|:-----:|:--------------|
| StroyRynok | Wallpaper | 170 |
| StroyRynok | Tiles | 400 |

Кросс-таблица с колонкой: Товар.<br>
Для колонки установлено минимальное количество уникальных значений = 4.<br>
Со строкой: Точка продажи.<br>
Фактом: Сумма продажи (Сумма).<br>

Resulting table:

| Point of sale | Wallpaper | Tiles | 3 | 4 |
|:--------------|:-----:|:-----:|---|---|
| StroyRynok | 170 | 400 | | | |

Если во входной набор добавился ещё один товар:

| Point of sale | Goods | Amount of sales |
|:--------------|:-----:|:--------------|
| StroyRynok | Wallpaper | 170 |
| StroyRynok | Tiles | 400 |
| StroyRynok | Sealer | 135 |

И настройки кросс-таблицы не изменились, то результирующий набор будет следующим:

| Point of sale | Wallpaper | Tiles | Sealer | 4 |
|:--------------|:-----:|:-----:|:--------:|---|
| StroyRynok | 170 | 400 | 135 | | |

%/spoiler%

* **Group of values**: if the new values appear in the source field from the moment of the last node configuration, in this case, with the enabled *Other* checkbox, measures for such values will be aggregated in the *Other* column. The enabled *Null* checkbox displays the field data with null values in the output data set. Measures for them will be aggregated in the *Null values* column.

**Общие настройки для колонок**

![Общие настройки для колонок](./cross-table/general_settings.PNG)

Расположены в нижней части мастера и имеют следующие параметры:

* **Field caption parts separator**: it is required to select the character to separate the new fields captions when selecting several fields in the columns.
   * . (Dot).
   * | (вертикальная линия).
   * ->.
   * Space.
* **Sliding unique values**: the checkbox selection enables to create columns from the unique field (fields) values again. When changing the source data set values, the whole structure of the resulting table will be fully reconstructed taking into account the new values.
* **Value number limit** is used to limit the maximum count of columns in the output data set. The first n generated fields are selected if the set number of values exceeds the number of the unique values in the columns, the fictitious columns are not added.

Using ![Up](../../images/icons/common/toolbar-controls/moveup_default.svg) and ![Down](../../images/icons/common/toolbar-controls/movedown_default.svg) buttons, it is possible to change the order of fields in the group. The order of fields location has an impact on the resulting table structure.

%spoiler%Example:%spoiler%

Source table:

|Точка продажи|Товар|Сумма продажи|Дата|
|:-|:-|-:|:-|
|СтройРынок|Обои|170|10.04.2022|
|СтройРынок|Плитка|400|10.04.2022|
|СтройРынок|Герметик|135|10.04.2022|
|Павильон|Обои|240|11.04.2022|
|Павильон|Плитка|80|11.04.2022|
|Павильон|Герметик|40|12.04.2022|
|СтройРынок|Обои|130|12.04.2022|
|Павильон|Обои|130|12.04.2022|
|Павильон|Плитка|20|12.04.2022|
|Павильон|Обои|230|13.04.2022|
|СтройРынок|Герметик|65|13.04.2022|
|Павильон|Герметик|260|13.04.2022|

*Cross table* with the following order of columns: *Goods*, *Point of sale*.  Measure: *Amount of sales (Amount)*. And the following parameter: *Field caption parts separator*: `.`

|Sealer.Trade stand|Sealer.StroyRynok|Wallpaper.Trade stand|Wallpaper.StroyRynok|Tiles.Trade stand|Tiles.StroyRynok|
|-:|-:|-:|-:|-:|-:|
|300|200|600|300|100|400|

*Cross table* with the following order of columns: *Point of sale*, *Goods*. Measure: *Amount of sales (Amount)*. And the following parameter: *Field caption parts separator*: `.`

|Trade stand.Sealer|Trade stand.Wallpaper|Trade stand.Tiles|StroyRynok.Sealer|StroyRynok.Wallpaper|StroyRynok.Tiles|
|-:|-:|-:|-:|-:|-:|
|300|600|100|200|300|400|

%/spoiler%

> **Примечание:** **Скользящие уникальные значения** и **Группа значений** являются несовместимыми параметрами. То есть при включении одного нет возможности задать второй и наоборот.

### Strings

The cross table rows will be generated from the fields values. Одинаковые значения поля (полей) будут сгруппированы таким же образом, как это происходит в узле [Группировка](./grouping.md).

The fields order in this group has an impact on data sorting in the resulting table by these fields.

%spoiler%Example:%spoiler%

Source table:

|Точка продажи|Товар|Сумма продажи|Дата|
|:-|:-|-:|:-|
|СтройРынок|Обои|170|10.04.2022|
|СтройРынок|Плитка|400|10.04.2022|
|СтройРынок|Герметик|135|10.04.2022|
|Павильон|Обои|240|11.04.2022|
|Павильон|Плитка|80|11.04.2022|
|Павильон|Герметик|40|12.04.2022|
|СтройРынок|Обои|130|12.04.2022|
|Павильон|Обои|130|12.04.2022|
|Павильон|Плитка|20|12.04.2022|
|Павильон|Обои|230|13.04.2022|
|СтройРынок|Герметик|65|13.04.2022|
|Павильон|Герметик|260|13.04.2022|

*Cross table* with the following order of strings: *Point of sale*, *Date*. Measure: *Amount of sales (Amount)*.

|Точка продажи|Дата|Сумма продажи|
|:-|:-|-:|
|Павильон|11.04.2022|320|
|Павильон|12.04.2022|190|
|Павильон|13.04.2022|490|
|СтройРынок|10.04.2022|705|
|СтройРынок|12.04.2022|130|
|СтройРынок|13.04.2022|65|

%/spoiler%

### Measures

The fields data in this group are processed according to the [aggregation functions](../func/aggregation-functions.md). The obtained values are displayed at the intersection of columns and strings. By default, the *Sum* function is selected for all numerical types, whereas for others - *Count*.

To select other aggregation functions, it is required to double click on the field. При выборе нескольких вариантов функций каждая из них будет рассчитана в отдельном столбце.

The order of fields does not matter in the *Measures* group.