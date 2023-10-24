---
description: Фильтр строк в Loginom. Условия фильтрации. Работа с NULL-ми значениями.
---
# Условия фильтрации в компоненте Фильтр строк

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

> **Примечание.**
> При фильтрации полей с типом данных [Дата/Время](https://help.loginom.ru/userguide/data/datatype.html) и видом данных Дискретный не доступен выбор значений из календаря. Для того чтобы появилась возможность выбирать значение Дата/Время из календаря, нужно изменить вид данных на Непрерывный. Это можно сделать с помощью узла [Параметры полей](https://help.loginom.ru/userguide/processors/transformation/fields-parameters.html). В противном случае значения можно выбирать из списка значений, либо вводить их вручную.


# Принцип работы компонента Фильтр строк с NULL-ми значениями

NULL-значения — это значения с отсутствием данных. Такие значения нельзя сравнивать с непустыми значениями, более того нельзя сравнивать NULL-значения между собой.

Для того чтобы в выходном наборе Фильтра строк были пропущенные значения, нужно добавлять отдельное условие в Мастере настроек: "Имя поля" пустое. В противном случае записи с NULL-ми в выходной набор не попадут.

%spoiler%Example:%spoiler%

Исходный набор данных

| # | Имя поля |
|:--|:-----|
| 1 | 10 |
| 2 | NULL |
| 3 | 100 |

Если данный набор подать на узел Фильтр Строк и задать условие:

![Настройка Фильтр строк без NULL](./settings1.png)


то в выходном наборе получим следующую таблицу:

| # | Имя поля |
|:--|:-----|
| 1 | 100 |

Для того чтобы NULL-значение попало в выходной набор, нужно условие задать следующим образом:

![Настройка Фильтр строк с NULL](./settings2.png)

в таком случае в выходном наборе получим следующую таблицу:

| # | Имя поля |
| :--|:-----|
| 1 | NULL |
| 2 | 100 |

%/spoiler%

> **Примечание.**
> Данная логика при работе с NULL-значениями согласуется со стандартами <a href="https://wikipedia.org/wiki/Null_(SQL)#Law_of_the_excluded_fourth_.28in_WHERE_clauses.29" title="Null (SQL) in WHERE clauses ">SQL</a>.
