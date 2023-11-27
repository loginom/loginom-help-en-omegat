---
description: Экспорт данных из Loginom в базу данных. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/db-database-export_default.svg) Export to Database

The node exports the source data set to database.

> **Important:** For the node operation, it is required to pre-create [connection](./../connections/README.md) to database and connect it with the *Connection* input port. [Example of the DB connection and operation](./../../quick-start/database.md).

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Connection: the port for connection to database.
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Data source: the data table to be exported to database.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Execution status**: the output port variables display the error text (if an error occurs) and the node execution completion code:
   * **0** — execution finished without errors;
   * **1** — execution finished with an error.

## Wizard

* **Database** enables to display a string of connection to database. *Activate* button makes this connection active.
* **Table name** enables to set a name of the table to which it is planned to export data. This table can be selected from the list of the database tables. [*Create table*](./database/new-table-design.md) button enables to open the window for the new table creation in DB.
* **Export type** enables to select one of the options.
   * **Append data to table** enables to append rows from the source table to the selected database table.
   * **Clear table and append data** enables to clear the database table completely and fill in with rows of the exported table.
   * **Delete records by key fields** enables to select a key field by which records will be deleted from the database table at the next stage - *Adjustment of columns mapping*. In this case, export as such is not performed.
   * **Delete records by key fields and insert data into table** provides the same algorithm as for the previous parameter but rows from the source table will be appended to the database table upon its execution.
   * **Update existing table records** enables to select the key field by which records will be updated.
* **Transaction commit frequency (rows)** enables to divide the export process into several transactions. Transactions are committed after a given count of rows. If the parameter value is null, division into transactions is not performed.
* **Ignore errors**: when this checkbox is selected, the node is successfully activated even if errors occur in the activation process. Information on errors is recorded to *Execution status* output port.
