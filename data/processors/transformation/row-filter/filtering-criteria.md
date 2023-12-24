---
description: Фильтр строк в Loginom. Условия фильтрации. Работа с NULL-ми значениями.
---
# Filtering Criteria in the Row Filter Component

A list of possible conditions and data types to which they can be applied.

| Condition | ![](../../../images/icons/common/data-types/integer_default.svg) Integer | ![](../../../images/icons/common/data-types/float_default.svg) Real | ![](../../../images/icons/common/data-types/string_default.svg) String | ![](../../../images/icons/common/data-types/datetime_default.svg) Date/time | ![](../../../images/icons/common/data-types/boolean_default.svg) Logical | ![](../../../images/icons/common/data-types/variant_default.svg) Variant |
| :------ | :---: | :----------: | :-------: | :--------: | :--------: | :--------: |
| <, <=, >, >=, =, <> | • | • | • | • | | • |
| null | • | • | • | • | • | • |
| not null | • | • | • | • | • | • |
| within the range | • | • | • | • | | • |
| out of the range | • | • | • | • | | • |
| listed | • | • | • | • | | • |
| not listed | • | • | • | • | | • |
| contains | | | • | | | • |
| does not contain | | | • | | | • |
| starting with | | | • | | | • |
| not starting with | | | • | | | • |
| ending with | | | • | | | • |
| not ending with | | | • | | | • |
| first | | | | • | | • |
| not first | | | | • | | • |
| last | | | | • | | • |
| not last | | | | • | | • |
| true | | | | | • | • |
| false | | | | | • | • |

> **Note.**
> When filtering the fields with the [Date/Time](https://help.loginom.ru/userguide/data/datatype.html) data type and the Discrete data kind, selection of values from calendar is not available. In order to have an opportunity to select the Date/Time value from calendar, it is required to change data kind for the Continuous one. It can be done using the [Features of fields](https://help.loginom.ru/userguide/processors/transformation/fields-parameters.html) node. Otherwise, values can be selected from the list of values or they can be manually entered.


# Operation principle of the Row Filter component with NULL values

NULL values are the values with null data. It is not allowed to compare such values with not null values. Moreover, it is not allowed to compare NULL values with each other.

To provide null values in the Row Filter output data set, it is required to add a separate condition in the Wizard: "Field name" is null. Otherwise, records with NULLs will not be included into the output data set.

%spoiler%Example:%spoiler%

Source data set

| # | Filed name |
|:--|:-----|
| 1 | 10 |
| 2 | NULL |
| 3 | 100 |

If this data set is sent to the Row Filter node and the following condition is established:

![Configuration of Row Filter without NULL](./settings1.png)


the following table will be received in the output data set:

| # | Field name |
|:--|:-----|
| 1 | 100 |

To include the NULL value into the output data set, it is required to establish condition as follows:

![Configuration of Row Filter with NULL](./settings2.png)

In this case, the following table will be received in the output data set:

| # | Field name |
| :--|:-----|
| 1 | NULL |
| 2 | 100 |

%/spoiler%

> **Note.**
> Such logics of work with NULL values complies with standards. <a href="https://wikipedia.org/wiki/Null_(SQL)#Law_of_the_excluded_fourth_.28in_WHERE_clauses.29" title="Null (SQL) in WHERE clauses ">SQL</a>.
