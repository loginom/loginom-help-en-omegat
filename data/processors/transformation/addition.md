# ![](../../images/icons/components/coluniondata_default.svg) Column Union

The source data set is filled with the fields of the joined data sets by means of the *Column Union* handler. In this case, each record of the source data set is joined with the record of the additional data set with the same order number.

If the joined data sets have different number of records, the resulting data set can contain null values. The wizard enables to use different processing options for such situation. The joined data sets can be cut up to the number of records of the smaller data set, or they can be filled with up to the largest one.

Variables can be added to the source data set. Each of the joined variables adds a new column to the source data set. In this case, according to the settings of *Missing Terminal Rows Filling* parameter, the value of the joined variable will be added:
* to all rows of the new column;
* only to the first row, and the null value will be displayed in other rows for the fileds related to the string and variable types, for the fields related to other types - empty cell.

### Input

* ![](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Main table** is a port for the input data set.
* ![](../../images/icons/toolbar-controls/plus-native_default.svg) **Add another port** enables to create new input ports for the joined tables and variables. There are two types of the new ports:
   * ![](../../images/icons/app/node/ports/inputs/table_inactive.svg) Joined table [N] where N is an order number of the table.
   * ![](../../images/icons/app/node/ports/inputs/variable_inactive.svg) Joined variables [N] where N is an order number of the variables port.

### Output

* ![Output data set](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** denotes a table with joined columns.

## Wizard

The following parameters can be configured:

* **Missing Terminal Rows Filling**: it is required to select one of the options of filling of the table records least in number:
   * **Leave empty**: filling with the records the fields of which will contain null values.
   * **Repeat all rows**: the tables will be filled with the copies of their own records starting from the first one.
   * **Repeat the last row**: filling with the last row copies.
* **Row count complies**: it is required to select one of the options to determine the number of records of the resulting data set:
   * **With minimum data set**;
   * **With maximum data set**;
   * **Data set defined**: when selecting this option, the *Data set defining row count* list becomes available. It is required to select a data set in it according to which the row count of the resulting data set will be defined.

%spoiler%Example:%spoiler%

Let's consider two tables as an example.

Main table:

|Full name|Year of birth|
|:-|:-|
|Abramov|1972|
|Avdeyeva|1956|
|Agafonov|1978|
|Aksenova|1979|
|Aleksandrov|1980|
|Alekseyev|1983|
|Andreyeva|1982|
|Anisimov|1963|
|Antonov|1984|
|Artemyev|1965|

Joined table:

|KTU|Cluster|
|:-|-:|
|> 0.8|1|
|> 0.8|1|
|0.5 - 0.8|2|
|0.5 - 0.8|2|
|0.2 - 0.5|3|
|< 0.2|4|

*Missing Terminal Rows Filling* parameter is set to *Leave empty* value, *Row count complies* parameter — to *With maximum data set* value.

Resulting table:

|Full name|Year of birth|KTU|Cluster|
|:-|:-|:-|-:|
|Abramov|1972|> 0.8|1|
|Avdeyeva|1956|> 0.8|1|
|Agafonov|1978|0.5 - 0.8|2|
|Aksenova|1979|0.5 - 0.8|2|
|Aleksandrov|1980|0.2 - 0.5|3|
|Alekseyev|1983|< 0.2|4|
|Andreyeva|1982|&#60;null>|&#60;null>|
|Anisimov|1963|&#60;null>|&#60;null>|
|Antonov|1984 |&#60;null>|&#60;null>|
|Artemyev|1965|&#60;null>|&#60;null>|
%/spoiler%