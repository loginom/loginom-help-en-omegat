---
description: Импорт данных в Loginom из текстового файла.  Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/file-txt-import_default.svg) Import from the Text File

It is used for data import from the text files with separators. The text file with separators is a standard text file the data columns of which are separated with separating characters of the same type, for example, tab characters, commas, semicolumns, etc.

### Input

* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

### Output

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Data set (data table).

## Wizard

The wizard contains several configuration stages.

### Step 1. Import from the Text File

The following parameters are specified at the first configuration stage:

* **File name/URL**: the path to the file containing the required data. It is also possible to set URL reference for downloading in the file name.
* **Codepage**: the encoding used for storage of text in a file.
* **First line title**: the checkbox that enables to determine that captions of the fields of the created data set are present in the first line of the imported text.
* **Skip rows**: count of the rows from the text beginning that cannot be imported.

### Step 2. Configure Import Formats

**Auto determine**: all separators are auto determined, and field structure is calculated.

It is required to specify the following parameters at the configuration stage:

* **Column delimiter**: the character separating data of adjacent columns.

> **Note:** There are several standard delimiters: `tab`, `,`, `;`. If there is `tab` or `;`, it is required to use the one that occurs more frequently, otherwise the priority is given to `,`. It is also possible to set the delimiter manually. For this purpose, it is required to replace the text provided in the entry form in the string with the required delimiter. If there are no named delimiters, an attempt is made to divide by spaces.

* **Consider consecutive delimiters as one**: selected checkbox enables to consider several consecutive column delimiters as one.
* **Text qualifier**: the character that frames cell values of the downloaded data set. The text following this character and preceding its subsequent occurrence is imported as one value even if the text contains a separating character.
* **Null**: the text that represents the *Null* value.
* **Variable type**: the selected checkbox defines the fields that contain records with different data types as [Variable type](./../../data/datatype.md). [String type](./../../data/datatype.md) is assigned to such fields when the checkbox is not active.
* **Decimal separator**: the character that separates fractional and integer parts of numeric expressions.
* **Date format**: the parameter enables to set the date format used in the imported text.
* **Date separator**: the character that separates date components.
* **Time separator**: the character that separates time components.

> **Note:** Digits and dates are recognized as follows: the first string column that is transformed to the required type is selected (integer, real, date/time). The delimiter recognized in this column will be used in the remaining table part.

* **True**: the text that represents the logical *True* value.
* **False**: the text that represents the logical *False* value.

The table part of the wizard window is designated for configuration of import parameters for each data set field.

* ![Refresh all](./../../images/icons/common/toolbar-controls/refresh_default.svg) **Refresh all** calculates all names, captions, types and kinds of field data.
* ![Define data types](./../../images/icons/common/toolbar-controls/refresh-data_default.svg) **Define data types** calculates only types and kinds of data once again.
* **Row count for analysis** enables to set row count of a data set used for data type analysis. The maximum row count to be displayed is 200.
* **Raw data**: the source (text) version of downloaded data will be displayed in the table wizard part.
* **Result**: result of data transformation will be displayed in the table wizard part, taking into account the set parameters of fields.
* ![Expand](./../../images/icons/common/toolbar-controls/maximize_default.svg)**Expand** expands the table part of wizard.
* ![Collapse](./../../images/icons/common/toolbar-controls/minimize_default.svg)**Collapse** collapses the table part of wizard.

The following settings are used to generate the resulting data set in the manual way:

* **Name**: the unique field name is assigned.
* **Caption**: the user field description is provided.
* **Data type** — [data type](./../../data/datatype.md): the text field value will be transformed.
* **Data kind** — [data kind](./../../data/datakind.md): it is set by a list of values:
   * Continuous
   * Discrete
   * Undefined
* **Use**: checkbox of the field inclusion into the resulting data set.

### Auto determination of table structure

Table properties that can be automatically determined:

* **First line title**,
* **Text qualifier**,
* **Decimal separator**,
* **Date separator**,
* **Time separator**,
* **Date format**.
