# Replacement File Structure

The imported text file must meet the following requirements:

* It must contain data of two columns.
   * 1st column — replaced value.
   * 2nd column — new value.
* The tabulation character is used to separate the columns.
* Columns headers are not used.
* File encoding: UTF-8.

When importing the file that contains single inquiry character `?`, this character will be interpreted as `<null>` (null value). It must be taken into account if `<null>` values to be replaced with other values are present in the data, or it is required to replace some values with `<null>`.
