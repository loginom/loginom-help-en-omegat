# ![ ](../../images/icons/data-sources/file-excel-export_default.svg) Export to the Excel File

The handler exports the table data to the files for Microsoft Excel. It is possible to set the following file formats:

* Excel 2003 (.xls extension);
* Excel 2007 (.xlsx extension).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg)Data source is a data table to be exported.
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

## Wizard

* **File storage** enables to display information on method of connection to the destination file.
* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Name of the sheet to be exported** means the name of the sheet in the Excel file that contains the exported table. Default value — *Sheet 1*.
* **Headers row** enables to define headers for the table in Excel.
   * There is no headers row.
   * Fields names.
   * Fields captions.
* **Excel file type**
   * Excel 2003 (.xls extension).
   * Excel 2007 (.xlsx extension).
* **Activate and Show**: clicking this button shows in the wizard how the table in Excel will look like, and to change any parameters if it is required.
