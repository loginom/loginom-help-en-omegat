# ![Enrich Data](../../images/icons/components/enrich-data_default.svg) Enrich Data

Join of the data tables based on connection by the key fields — analogue of the `LEFT JOIN` operation in SQL. The node performs the action similar to the [Left join](./join/left.md) of the [Join](./join/README.md) node but the number of joined tables is optional.

## Ports

### Input

* ![Main table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Main table** is the left table to be joined in the context of the SQL queries terms.
* ![Joined table](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Joined table** is the right table to be joined in the context of the SQL queries terms.
* ![Add port](../../images/icons/toolbar-controls/plus-native_default.svg) **Add another port** enables to create new ports for the subsequemt joined tables that will be automatically numbered.

### Output

* ![Output data set](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** denotes a table that contains fields of all tables supplied to the input ports, with the exception of the joined tables fields selected as the key ones. Prefixes can be optionally added to the field captions of the joined tables.

## Wizard

* **Key fields configuration area**: it is required to place a flag in the column of the joined table opposite the main table field that must become the key one. It is required to select the field from the drop-down list by which the tables will be connected. Activated ![Enabled filter](../../images/icons/filter-switcher/filter-switcher-filterswitch-off_default.svg) option makes available compatible fields that are not still connected with key fields of the main table, deactivated ![Disabled filter](../../images/icons/filter-switcher/filter-switcher-filterswitch-on_default.svg) option enables to select any of the fields compatible by type.
* **Use prefixes**: placement of this flag enables to add prefixes to names and captions of the fields from the joined tables in the resulting table.
   * **Name prefix**: the prefix added to the name of the joined table fields is specified in this field. Composition of the name prefix conforms to the rules of [Features of data set fields](../../data/datasetfieldoptions.md).
   * **Caption prefix**: the prefix added to the caption of the joined table fields is specified in this field. It is named according to *Features of data set fields<*.

For example:

Let's consider three tables as an example. A person - the main table and two joined: City and District.

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

Joined table 2:

|City Id|District|
|-:|:-|
|1|Central|
|2|Northwestern|
|3|Volga|
|4|Far Eastern|

![Connection order when joining.](./supplementation.svg)

Resulting table:

|Name|City Id|City|District|
|:-|-:|:-|:-|
|Andrey|1|Moscow|Central|
|Leonid|2|Saint Petersburg|Northwestern|
|Sergey|1|Moscow|Central|
|Gregory|4|&#60;null>|Far Eastern|
