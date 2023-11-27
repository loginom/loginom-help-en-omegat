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

* **Connection** enables to display a string of connection to data source. Нет доступна для редактирования.
* **Тип запроса** — отображает какой именно тип запроса осуществляется:
   * **Выбор таблицы** — после установки переключателя в этом положении необходимо указать, из какого именно источника будет происходить импорт. Его нужно выбрать из выпадающего списка *Таблица/Представление*, в котором отобразятся все доступные варианты. В том случае, если подключение не активно, необходимо нажать кнопку Активировать.
   * **SQL запрос** — выбирается для настройки импорта данных при помощи языка SQL.
* **Ignore errors**: when this checkbox is selected, the node is successfully activated even if errors occur in the activation process.
* **Тайм-аут импорта (с)** — устанавливает максимальное время на выполнение запроса к базе данных и получение данных из нее (время подключения к серверу БД в тайм-аут не входит). Тайм-аут импорта не распространяется на предварительный просмотр внутри мастера настройки. При срабатывании тайм-аута, в зависимости от этапа выполнения, останавливается выполнение запроса или заполнение выходного набора данных. Таким образом, в режиме выполнения узла «Игнорировать ошибки» выходной набор данных может оказаться частично заполненным.
* **Область настройки параметров извлечения данных из БД** — зависит от выбранного типа запроса:
   * При типе запроса *Выбор таблицы* — в левой части области настройки   *Таблицы/представления* отображаются таблицы подключенной базы данных. Для выбора определенной таблицы необходимо дважды нажать по ней левой кнопкой мыши, после чего в правой части отобразятся имена полей данной таблицы. Для импорта можно выбрать все поля сразу с помощью кнопки Извлекать всё или только нужные поля, проставив соответствующие флаги.
   * При типе запроса *SQL запрос* — в левой части *Таблицы/представления* отображаются таблицы подключенной базы данных и область для работы с переменными, которая по умолчанию скрыта внизу поля. В правой части задается текст SQL запроса к базе данных. При формировании запроса требуемые поля из левой части в правую можно переместить несколькими способами:
      * Перетащить мышью (Drag-and-drop) — по умолчанию перетаскивается непосредственное имя объекта, а при зажатой клавише CTRL — полное имя. Из таблицы с переменными по умолчанию перетаскивается параметр, а при зажатой клавише CTRL — макроподстановка.
      * Два раза щелкнуть левой кнопкой мыши по полю.
      * Вызвать контекстное меню нажатием правой кнопки мыши. Далее выбрать пункт Вставить имя в редактор SQL кода или Вставить полное имя в редактор SQL кода.

[Preview…](./../../visualization/preview/preview.md) button enables to access request accuracy. It displays up to 100 first rows of the resulting table.

## Use of Variables in Queries

В SQL-запросах возможно два варианта использование переменных:

* As **parameter**: a defined value is set for the variable. В тексте запроса параметр записывается со знаком двоеточие, например, `:var1`. The variable type will be taken into account in this case, for example, the string will be in quotation marks.  It is allowed to use parameters only in the *WHERE* section. Выбрать этот вариант использования можно в контекстном меню переменной.
* в качестве **подстановки** — в значении переменной указывается SQL-запрос или какая-то его часть. В тексте запроса ее необходимо обрамлять знаками процента, например, `%condition%`. Выбрать этот вариант использования можно в контекстном меню переменной.

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
