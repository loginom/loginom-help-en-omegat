---
description: Импорт данных в Loginom из баз данных. Мастер настройки. Варианты извлечения данных из БД. SQL запрос.
---
# ![ ](./../../images/icons/common/data-sources/db-database-import_default.svg) Import from Database

The component is designated for data set import from DBMS. The node created on the basis of this component enables to import a table or view from database, or results of execution of the [SQL](https://wiki.loginom.ru/articles/sql.html) query set by a user.

It is allowed to use [Control variables](./../../workflow/variables/control-variables.md) in the SQL query text as parameters and macro substitution. It allows for dynamic generation of the request sent to the server. 

> **Important:** For the node operation, it is required to pre-create [connection](./../connections/README.md) to database and connect it with the *Connection* input port. [Example of the DB connection and operation](./../../quick-start/database.md).

## Ports

### Input Ports

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) **Connection** accepts parameters of connection to database.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Control variables** (optional port): it is possible to set values of the wizard parameters using variables.

### Output Ports

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data set**: the table with imported data.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Execution status**: the output port variables display the error text (if an error occurs) and the node execution completion code:
   * **0** — execution finished without errors;
   * **1** — execution finished with an error;
   * **2** — execution terminated by timeout.

## Wizard

There are the following parameters in the wizard:

* **Connection** enables to display a string of connection to data source. Edition is not possible.
* **Request type** displays what type of request is executed exactly:
   * **Table selection**: when the switch is set in this position, it is required to specify the source from which import will be performed. It must be selected from the *Tables/Views* drop-down list  in which all available options will be displayed. In this case, if connection is not active, it is required to press Activate button.
   * **SQL query** is selected for data import configuration using SQL language.
* **Ignore errors**: when this checkbox is selected, the node is successfully activated even if errors occur in the activation process.
* **Import timeout (s)** sets the maximum time for the database query execution and data acquisition (time of connection to the DB server is not included into the timeout). Import timeout does not apply to preview inside the wizard. When timeout is enabled, query execution or output data set filling in is terminated according to the execution stage. Thus, the output data set can be partially filled in for the mode of "Ignore errors" node execution.
* **Area of parameters configuration for data extraction from DB** depends on the selected type of query:
   * Tables of the connected database are displayed for *Table selection* query type in the left part of *Tables/Views* configuration area. To select the particular table, it is required to double click on it using the left mouse button. Then field names of this table will be displayed in the right part. For import it is required to select all fields at once using Extract all button or only required fields selecting corresponding checkboxes.
   * Tables of the connected database and area of work with variables that is hidden in the lower part of the field by default are displayed for *SQL query* type in the left part of *Tables/Views*. The text of SQL query to database is set in the right part. When generating the query, the required fields can be moved from the left pat to the right part using several methods:
      * Drag-and-drop: only the object name is dragged by default, and with CTRL key pressed - the full name. Parameter is dragged by default from the table with variables, and with CTRL key pressed - macro substitution.
      * It is required to double click on the field using the left mouse button.
      * The context menu is called by pressing the right mouse button. Then it is required to select Paste name to the SQL code editor or Paste full name to the SQL code editor.

[Preview…](./../../visualization/preview/preview.md) button enables to access request accuracy. It displays up to 100 first rows of the resulting table.

## Use of Variables in Queries

Two options of variables use are allowed in SQL queries:

* As **parameter**: a defined value is set for the variable. Parameter is recorded with colon in the query text, for example, `:var1`. The variable type will be taken into account in this case, for example, the string will be in quotation marks.  It is allowed to use parameters only in the *WHERE* section. It is possible to select this use option in the variable context menu.
* as **substitution** — SQL query or its any part is specified as variable. It must be encased with percent signs in the query text, for example, `%condition%`. It is possible to select this use option in the variable context menu.

> **Note:** if the substitution construction is in quotation marks, quotation marks are prioritized but not the substitution.

%spoiler%Example:%spoiler%

```sql
SELECT * FROM %tables%
WHERE
   %cond1% :TitlePart
   AND Books.year > :MinYear
   AND Publisher.Name LIKE '%Media%'
```

where 

| variable name | type | example value |
|:---|:---|:---|
| tables | string | Books JOIN Publisher ON Books.PubId = Pub.Id |
| cond1 | string | title LIKE |
| TitlePart | string | Adventures% |
| MinYear | integer | 2005 |
| Media | string | Astra Info |

In this case, `'%Media%'` is not a macro substitution, that's why no replacement with the variable value will take place.

Consequently, the following query will be generated:

```sql
SELECT * FROM Books JOIN Publisher ON Books.PubId = Pub.Id
WHERE
   title LIKE 'Adventures%'
   AND Books.year > 2005
   AND Publisher.Name LIKE '%Media%'
```

%/spoiler%
