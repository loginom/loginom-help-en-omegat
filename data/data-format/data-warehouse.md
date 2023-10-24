---
description: Справка по подключению "Loginom" к собственному хранилищу данных "Deductor Warehouse". Описание принципа работы хранилища данных. Особенности физического и логического уровней. Обзор механизма "Семантического слоя".
---
# Deductor Warehouse

**Deductor Warehouse** is the own format of [Data Warehouse](https://wiki.loginom.ru/articles/data-warehouse.html) elaborated specially for usage with *Loginom* and *Deductor*. It is a multidimensional Data Warehouse that enables to accumulate all the information required for analysis of the subject area.

Usage of the unified data warehouse provides data coherence and centralized storage. It also automatically provides all the support required for the data analysis process. When using the data warehouse, it is not obligatory for a user to know the data storage structure and data query language. Familiar business environment terms are used in it. For example, shipment, goods, client.

## Data Warehouse Operation Principle

### Physical Level

At the physical level  *Deductor Warehouse* is a relational database based on the Firebird, MS SQL or Oracle platform. That is why the data warehouse operation does not differ from any DBMS service at this level. To provide the data warehouse service, utility software of third party developers can be used at the low level for the Firebird, MS SQL, Oracle DBMS as well as the tools provided by the developers of corresponding databases.

For proper operation of *Deductor Warehouse*, it is compulsory to provide the full-scale database support of **`SQL'92`** standard. That is why there are constraints concerning the DBMS versions:

* **Firebird**: version 2.5 and higher.
* **Microsoft SQL**: version 2000 and higher.
* **Oracle**: starting from 9i version.

Support of several DBMS different in their prices and performance as the data warehouse platform enables to use the most suitable database in each specific case.

*Deductor Warehouse* performs all required operations to connect to the relational DBMS and select necessary information that is rather transparent for a user. The crossplatform Data Warehouse is the base convenient for creation of distributed data warehouses, datamarts, etc.

### Logical Level

At the logical level the data warehouse shema is developed, namely, mapping between *subject area objects* is established: *processes*, *dimensions* and *measures* of the data warehouse:

* **Process** is a set of dimensions, measures and attributes. It describes a definite action, for example, sale of goods, shipments, etc.
* **Dimensions** mean the categorical, discrete attributes, names and properties of the objects involved into some business process. For example, it could be names of vendor companies, product identification number, full names of people, etc.
* **Measures** mean the data describing the business process in the quantitative terms. They are continuous in concept, namely, they can take infinite set of values. Examples of measures: price of product or item, their number, amount of sales or purchase, salary of employees, credit value, insurance compensation, etc.
* **Attribute** means the dimension property that helps a user to describe the dimension under research better. For example, to provide a dimension for *Goods*, *Color*, *Weight*, *Sizes* can be attributes.

First and foremost, the logical structure is designed taking into account the subject area objectives.

### Semantic Layer

*Semantic layer* is a special mechanism that lets an analyst use data by means of the subject area business terms. It has been implemented over the relational database.

Due to this layer a user can handle not fields and columns of the database tables, but such multidimensional concepts as dimension or measure. And the system automatically performs all operations required  for the relational DBMS operation. Thus, this layer enables a user to concentrate on analysis and not to think about the data acquisition mechanisms.

Deductor Warehouse provides the universal multidimensional storage, namely, it can contain a set of processes with different number of dimensions and measures.

So, configuration of processes, setting of dimensions, attributes and measures can be performed by means of the metadata editor built into Deductor Studio.
