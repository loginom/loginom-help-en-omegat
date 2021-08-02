# ![ ](../../images/icons/components/sampling_default.svg) Sampling

## Description

The handler uses different methods to select records for the sample from the source data set. Such sample is created to decrease the analyzed data volume, for example, to avoid redundant computation, as complexity of some Data Mining algorithms is increased with data volume increase in an exponential manner.

When creating the sample, a user can set the sampling method: random, random uniform, stratified, sequence, biased sampling.

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

* **Login status**: it enables to use the input data when the status is active. For example, the data from the input data set is required in "Biased sampling".
* **Total records**: the records count of the input data source table.
* **Area of the output table row count configuration.**
   The output table size is customized. The switch button provides a choice whether to set the row count ![ ](../../images/icons/) or to set it as a percentage ![ ](../../images/icons/) of the source table size.
* **Sampling method**
   * *Random*: the records are randomly selected from the source data set, and then they are placed into the resulting sample.
   * *Random uniform*: all records of the source data set are divided into groups, and then they are randomly selected from each group and placed into the resulting sample. The group dimension is set in the method parameters.
   * *Stratified*: all records of the source data set are divided into uniform groups (strata), and then they are randomly selected from each group and placed into the resulting sample. The strata defining fields are set in the method parameters by means of checkboxes.
   * *Sequence*: the sample selection source will be specified in the method parameters. It will be defined whether it was taken from the source table beginning or end. Sequence of the sample rows will be the same as in the source table.
   * *Biased sampling*: it is possible to change the number of records with specific unique values in the sample after definition of the sample size. When selecting a method, the field with its parameters is opened. It is required to select the field in it and unique value from this field for which the factor is set. The factor with N value will increase the row count with the relevant unique value by N times in the output data set. N can take any positive values. It is required to take into account that the maximum number of unique values in the field must not exceed ten thousand.
