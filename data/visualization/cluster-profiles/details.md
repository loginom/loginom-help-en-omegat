
# ![Detailing](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) Detailing

Detailing uses the data of the source data set filtered by the clusters selected in the main table. If *Total* cluster has been selected, the detailing data set matches the input one. Detailing enables to find out what rows of the source data set are included into this or that cluster. To display the detailed information by the selected cell, it is possible to use the following visualizers:

* ![Table](../../images/icons/cube/detailing/browse_default.svg) **Table**: the data will be displayed by the [Table](../table/README.md) visualizer but without filtering option and detailing panel;
* ![Form](../../images/icons/cube/detailing/form_default.svg) **Form**: the data will be displayed by view of a separate row starting from the first one in the list;
* ![Statistics](../../images/icons/cube/detailing/stat_default.svg) **Statistics**: the data will be displayed by the [Statistics](../statistics/README.md) visualizer.

> **Note:** It is possible to change the columns sequence order in ![Table](../../images/icons/cube/detailing/browse_default.svg) *Table* and ![Form](../../images/icons/cube/detailing/form_default.svg) *Form*.

## Table Representation Interface

* ![Row number](../../images/icons/toolbar-controls/grid-row-no_default.svg) **Row number**: show/hide continuous row number.
* ![Record number](../../images/icons/toolbar-controls/rec-no_default.svg) **Record number**: switch representation of the column with order record number in this report.
* ![Data types](../../images/icons/toolbar-controls/show-data-type_default.svg) **Data types**: switch data type icon representation.
* ![Show null value](../../images/icons/toolbar-controls/null-count_default.svg) **Show null value**: switch *`<null>`* representation in the cells with null values.
* ![Format](../../images/icons/toolbar-controls/format_default.svg) **Format**: open [format](../table/format.md) configuration window of data display.
* ![Sort](../../images/icons/toolbar-controls/sort-asc_default.svg) **Sort**: open data [sorting](../table/sorting.md) configuration window by columns.
* ![Search](../../images/icons/toolbar-controls/zoom_default.svg): search for the next occurrence of the value specified in the search string. It is possible to [configure](../table/search.md) search by pressing ![Open](../../images/icons/toolbar-controls/down_default.svg) button.
* ![Export](../../images/icons/toolbar-controls/export_default.svg) **Export to file (XLS)**:
   * **XLS**: save the current view in the Excel format.
   * **HTML**: save the current view in the HTML format.

To perform quick sorting by column, it is required to press its caption. The following options will be applied after repeated pressing: in ascending order, in descending order, without sorting. Sorting is possible by several columns. In this case, a figure in the caption will be used to specify the order.

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* ![To previous](../../images/icons/toolbar-controls/prev_default.svg): go to the previous page.
* ![To next](../../images/icons/toolbar-controls/next_default.svg): go to the next page.
* ![To first](../../images/icons/toolbar-controls/first_default.svg): go to the first page.
* ![To last](../../images/icons/toolbar-controls/last_default.svg): go to the last page.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons. 50,000 records are displayed on one page.

## Form Representation Interface

* ![Row number](../../images/icons/toolbar-controls/grid-row-no_default.svg) **Row number**: show/hide continuous row number.
* ![Record number](../../images/icons/toolbar-controls/rec-no_default.svg) **Record number**: switch representation of the column with order record number in this report.
* ![Data types](../../images/icons/toolbar-controls/show-data-type_default.svg) **Data types**: switch data type icon representation.
* ![Show null value](../../images/icons/toolbar-controls/null-count_default.svg) **Show null value**: switch *`<null>`* representation in the cells with null values.
* ![To previous](../../images/icons/toolbar-controls/prev_default.svg): go to the previous record.
* ![To next](../../images/icons/toolbar-controls/next_default.svg): go to the next record.
* ![На первую](../../images/icons/toolbar-controls/first_default.svg): go to the first record.
* ![To last](../../images/icons/toolbar-controls/last_default.svg): go to the last record.
* ![Export](../../images/icons/toolbar-controls/export_default.svg) **Export to file (XLS)**:
   * **XLS**: save the current view in the Excel format.
   * **HTML**: save the current view in the HTML format.

## Statistics Representation Interface

* ![Transpose](../../images/icons/toolbar-controls/transform_default.svg) **Transpose**: turn of the table when the fields names are displayed in columns, and the statistical indicators are displayed in rows.
* ![Configure fields](../../images/icons/toolbar-controls/fields-list_default.svg) **Configure fields…** : selection of the data set fields for which the statistical indicators will be calculated.
* ![Configure indicators](../../images/icons/toolbar-controls/row-sum_default.svg) **Configure indicators…**: selection of the statistical indicators.
* ![Unique values](../../images/icons/toolbar-controls/execute_default.svg) **Unique values**: the number of unique values is calculated.
* ![Order statistics](../../images/icons/toolbar-controls/execute_default.svg) **Order statistics**: the order statistics are calculated.
* ![Histogram](../../images/icons/toolbar-controls/toggle-left-panel_default.svg) **Histogram**: the operation that enables to open the detailed window with advanced histogram settings.

> **Note:** It is possible to define the number of records of the data set to which this visualizer is applied in *Row count of data* column located in the right toolbar part, to the left from the ![Histogram](../../images/icons/toolbar-controls/toggle-left-panel_default.svg) *Histogram* button.