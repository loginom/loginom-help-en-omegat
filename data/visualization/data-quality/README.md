---
description: Визуализатор. Качество данных производит комплексную оценку набора данных.
---

# ![](./../../images/icons/view_types/data-quality_default.svg) Data Quality

The visualizer enables to perform comprehensive data quality assessment for each field.

## Interface

### Operations

* ![Summary](./../../images/icons/common/toolbar-controls/info_default.svg) **Summary**: fields for data analysis are selected, general data quality indicators and problems detected in the data fields are displayed.
* ![Discrete](./../../images/icons/common/data-types/discrete_default.svg) **Discrete**: overview of data quality for discrete fields.
* ![Continuous](./../../images/icons/common/data-types/continuous_default.svg) **Continuous**: overview of data quality for continuous fields.
* ![Indicators](./../../images/icons/common/toolbar-controls/fields-list-settings_default.svg) **Indicators**: selection and configuration of the following indicators:
   * ![Selection of indicators](./../../images/icons/common/toolbar-controls/row-sum_default.svg) Selection of indicators: the indicators that are required to a user for data quality assessment are selected.
   * ![Configure indicators](./../../images/icons/common/toolbar-controls/setup_default.svg) Configure indicators: selection of identification method, configuration of identification method parameters, configuration of the maximum null count.
* ![Absolute or relative values](./../../images/icons/switches/roc/relative_default.svg) **Absolute or relative values**: switch the mode of the quantitative values representation from the absolute to the percentage-based one.
* ![Export](./../../images/icons/common/toolbar-controls/export_default.svg) **Export** enables to export the file with a report. Only the current table is exported (Summary, Discrete, Continuous). The name of the format that has been selected for export will be displayed in this menu option:
   * Export to XLS(html);
   * Export to HTML.
* ![Detailing](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Detailing** shows the input data set filtered by the set indicator for the selected field. For example, when selecting *Null count* cell, all records of the input data set that have null count in the selected field will be shown. Detailing is available only for *Discrete* and *Continuous* tables.
* ![Histogram](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Histogram** displays the panel with histogram by the selected field. Histogram is available only for *Discrete* and *Continuous* tables.

## Data Set Statistics

* **Determination of outliers and extreme values** shows identification method. *Standard deviation* method is set by default
* **Columns**: total number of columns in the data set under research.
* **Rows**: total number of records in the data set under research.
* **Fully filled fields**: number of the fields that do not contain null values in percentage terms.
* **Fully filled records**: number of the records that do not contain null values in percentage terms.
* **Suitable columns**: number of suitable columns. The column is considered to be useless if one of the following conditions is met:
   * Percentage of *Null count* is highter than *Maximum percentage of null data* indicator (this indicator is set in *Configure indicators*).
   * *Quality indicator* of the discrete field is equal to 0 (the field contains intercept).
* **EPV index**: ratio of number of records to the number of columns.

## Configure Tables

When opening *Data quality* visualizer, *Summary* table with the list of fields is displayed. Checkboxes enable to select the fields that will be required for processing to a user. *Discrete* and *Continuous* tables are not available at this moment.

![Selection of fields for processing](./images/settings-choice-column.png)

### **Available indicators:**

| Indicator | Data kind | Value |
|:----------|:----------:|:--------|
| Quality indicator | ![](./../../images/icons/common/data-types/discrete_default.svg) | It displays variety of values in the field |
| [Histogram](https://wiki.loginom.ru/articles/histogram.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Histogram Preview |
| Extremes | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of the records in which the value is extreme |
| Empty | ![](./../../images/icons/common/data-types/discrete_default.svg) | Number of the records with null values |
| Trailing spaces | ![](./../../images/icons/common/data-types/discrete_default.svg) | Number of the records with the values that end with whitespace (the indicator does not include the records that consist only of whitespaces) |
| Range of values | ![](./../../images/icons/common/data-types/discrete_default.svg) | Range of values in the following format: *first ... last value* in the sorted list of values |
| Zeros | ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of the records in which the values are equal to zero |
| [Box plot](https://wiki.loginom.ru/articles/box-plot.html) | ![](./../../images/icons/common/data-types/continuous_default.svg) | It counts the following indicators: *Minimum outlier, Lower quartile, Median, Upper quartile, Maximum outlier, Sample maximum* |
| Minimum | ![](./../../images/icons/common/data-types/continuous_default.svg) | Minimum value |
| Average | ![](./../../images/icons/common/data-types/continuous_default.svg) | Average value |
| [Mode](https://wiki.loginom.ru/articles/mode.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | The most frequently occurring value[^1] |
| Null count | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of the records in which there is no value for this field |
| Values | ![](./../../images/icons/common/data-types/discrete_default.svg) | It displays the chart in which variety of values is displayed by rows |
| Outliers | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of the records in which the value is outlier |
| Whitespaces | ![](./../../images/icons/common/data-types/discrete_default.svg) | Number of the records with the values that consist only of whitespaces |
| String lengths | ![](./../../images/icons/common/data-types/discrete_default.svg) | Range of row lengths in the following format: *minimum length - maximum length* |
| Negative | ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of records with negative values |
| Infinities | ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of the records in which the values are equal to infinity |
| Unique | ![](./../../images/icons/common/data-types/discrete_default.svg) | Count of unique values |
| Maximum | ![](./../../images/icons/common/data-types/continuous_default.svg) | Maximum value |
| [Median](https://wiki.loginom.ru/articles/median.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Median for this field |
| Monotony | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | It displays uniformity of the field values (*Descending, Increasing, Non-monotonic*) |

[^1]: If there are several mode values in the field, the first of these values is shown and ![](./../../images/icons/viewers/data-quality/mode/sliced_18x18/multi_default.svg)multimodality icon is displayed.

### Configure Indicators

Identification method and its parameters are selected in *Configure indicators*.

![Configure Indicators](./images/settings-index.png)

After selection of fields and indicators to perform data quality analysis, it is required to activate  ![](./../../images/icons/common/toolbar-controls/execute_default.svg) *Calculate statistics* button.

Now `Discrete` and `Continuous` tables become available.

Upon pressing ![Button](./../../images/icons/common/toolbar-controls/down_default.svg) button, it is possible to sort fields by the selected indicator and remove/add columns with indicators.

![Sort and delete/add columns](./images/add-index-sorting.png)

When selecting the cell and pressing ![Detailing](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) Detailing button, a window is opened in the lower part with all records from this cell.

![Cell Detailing](./images/detalization-data-quality.png)

When selecting the cell and pressing ![Histogram](./../../images/icons//common/toolbar-controls/toggle-left-panel_default.svg) Histogram button, a window with more detailed histogram is opened in the right part of the interface. It is possible to select values for the discrete fields to display as follows:

![Possible values](./images/settings-histogram.png)

## Problems

Total value of the problematic rows for this field will be displayed in *Problems* column.

### Kinds of Problems

* **Null count**: number of the records that contain null values.
* **Empty**: number of the records that contain null values.
* **Zeros**: number of the records that contain zero values.
* **Spaces**: number of the records that contain only whitespaces (space character, nonbreaking space, tabulation, etc.)
* **Infinities**: number of the records that contain *Infinity* value.
* **Intercept** indicates that the field contains only one unique value, in this case null count can be in this field.
* **Unique** indicates that every value in this field is unique.
* **Conversion error** appears if the field contains the values that cannot be set to the field data type.
* **Not calculated**: the fields that do not contain calculated indicators are marked.
* **No data**: the problem occurs when analyzing the empty data set.
* **Extreme**: number of the records in which the value is extreme.
* **Outliers**: number of the records in which the value is outlier.
* **Negative**: number of records with negative values.
* **Trailing spaces**: number of the records with the values that end with whitespace (the indicator does not include the records that consist only of whitespaces).

Number of rows with such problem is specified near *Kind of problems* value. Percentage of the problematic rows to the total number of rows is specified in brackets.

![Kinds of Problems](./images/problem-types-value.png)

