---
description: Экспорт данных из Loginom в Extract файл Tableau. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/file-tableau-export_default.svg) Export to the Tableau File

The node exports the source data set to the Extract file Tableau.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Data source: the data table to be exported to file or Tableau server;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/link_inactive.svg) [Connection to the Tableau server](./../connections/list/tableau.md) (optional port): the port for connection to the Tableau server.

## Wizard

* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file save dialog.
* **Table name** enables to set a name of the table to which it is planned to export data.
* **Create table** enables to open the window for the new table creation in the Tableau data file.
* **Recreate file while export**: if this checkbox is selected, it enables to rerecord the export file when each node is executed.
* **Create table if it doesn't exist**: this parameter is responsible for table creation if it doesn't exist in the export file. It is not possible to disable this parameter when the file recreation parameter is active.
* **Publish to server** publishes the recieved file to the Tableau server.
   * **Project name on server**: the project name on the server on which the file will be saved.
   * **File name on server**: the data source name on the server under which the exported file will be saved.
   * **Add records when publishing** appends data in the data file in the source.
   * **Rerecord data when publishing** rerecords the source with the export file when publishing.

> **Note:**
> * For server publication at first it is required to create [connection](./../connections/README.md) to the server and connect it with *Connection to the Tableau server* input port.
> * *Add records when publishing* and *Rerecord data when publishing* are mutually exclusive parameters but they can be simultaneously disabled.
> * Server publication is possible only if the export file contains one "Extract" table.
