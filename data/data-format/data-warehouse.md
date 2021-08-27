# Deductor Warehouse

**Deductor Warehouse** means the own format of the [Data warehouse](https://wiki.loginom.ru/articles/data-warehouse.html) elaborated specially for usage with *Loginom* and *Deductor*. It is a multidimensional Data Warehouse that enables to accumulate all the information required for analysis of the subject area.

Usage of the unified data warehouse provides data coherence and centralized storage. It also automatically provides all the support required for the data analysis process. When using the data warehouse, it is not obligatory for a user to know the data storage structure and data query language. Familiar business environment terms are used in it. For example, shipment, goods, client.

> **Important:** Currently, the *Loginom* analytical platform enables to import data only from the *Deductor Warehouse* data warehouse. This format is fully supported by the *Deductor* analytical platform.

## Data Warehouse Operation Principle

### Physical Level

At the physical level  *Deductor Warehouse* is a relational database based on the Firebird, MS SQL or Oracle platform. That is why the data warehouse operation does not differ from any DBMS service at this level. To provide the data warehouse service, utility software of third party developers can be used at the low level for the Firebird, MS SQL, Oracle DBMS as well as the tools provided by the developers of corresponding databases.

For proper operation of *Deductor Warehouse*, it is compulsory to provide the full-scale database support of **`SQL'92`** standard. That is why there are constraints concerning the DBMS versions:

* **Firebird**: version 2.5 and higher.
* **Microsoft SQL**: version 2000 and higher.
* **Oracle**: starting from 9i version.

Support of several DBMS different in their prices and performance as the data warehouse platform enables to use the most suitable database in each specific case.

*Deductor Warehouse* performs all required operations to connect to the relational DBMS and select necessary information that is rather transparent for a user. The crossplatform Data Warehouse is a base convenient for creation of distributed data warehouses, datamarts, etc.

### Logical Level

На логическом уровне разрабатывается схема хранилища, т.е. устанавливается соответствие между *объектами предметной области*: *процессами*, *измерениями* и *фактами* хранилища:

* **Процесс** — совокупность измерений, фактов и атрибутов. Он описывает определенное действие, например, продажи товара, отгрузки и прочее.
* **Измерения** — это категориальные, дискретные атрибуты, наименования и свойства объектов, участвующих в некотором бизнес-процессе. Например, это могут быть названия фирм-поставщиков, идентификационный номер товаров, ФИО людей и т.д.
* **Факты** — это данные, количественно описывающие бизнес-процесс, непрерывные по своему характеру, то есть они могут принимать бесконечное множество значений. Примеры фактов — цена товара или изделия, их количество, сумма продаж или закупок, зарплата сотрудников, сумма кредита, страховое вознаграждение и т.д.
* **Атрибут** — это свойство измерения, помогающее пользователю полнее описать исследуемое измерение. Например, для измерения *Товар* атрибутами могут выступать *Цвет*, *Вес*, *Габариты*.

Логическая структура проектируется, прежде всего, с учетом задач предметной области.

### Semantic Layer

*Семантический слой* — это специальный механизм, позволяющий аналитику пользоваться данными посредством бизнес-терминов предметной области. Он реализован поверх реляционной базы данных.

Благодаря этому слою, пользователь оперирует не полями и колонками таблиц базы данных, а многомерными понятиями, например, такими как измерение или факт. А система автоматически производит все требуемые манипуляции, необходимые для работы с реляционной СУБД. Таким образом, этот слой дает пользователю возможность сосредоточиться на анализе и не задумываться о механизмах получения данных.

Deductor Warehouse реализует универсальное многомерное хранение, т.е. может содержать множество процессов с различным количеством измерений и фактов.

Пока что настройка процессов, задание измерений, атрибутов и фактов может осуществляться с помощью редактора метаданных, встроенного в Deductor Studio.
