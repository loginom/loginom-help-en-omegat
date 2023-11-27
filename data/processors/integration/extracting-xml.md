---
description: Компонент Разбор XML в Loginom. Извлечение таблицы данных из столбца входной таблицы. Мастер настройки. XSD-схема. Пример.
---
# ![ ](./../../images/icons/components/extract-xml_default.svg) Разбор XML

## Description

Компонент разбирает таблицу данных из столбца входной таблицы, в ячейках которого содержатся документы XML в строковом виде. All documents from the column must comply with the connected [XSD schema](https://ru.wikipedia.org/wiki/XML_Schema_%28W3C%29).

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) — Подключение к источнику XSD-схемы — подключение настроенного ранее подключения к файлам [XSD-схем](./../../integration/connections/list/schemes.md).
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) — Control variables (variables), optional.
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) — Data source: the data table that contains the cells with the XML documents.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — Набор данных — таблица данных, разобранных из документов XML.
   * There are the following fields the availability of which is set by a user:
      * Идентификатор поля — показывает, из какого именно документа была разобрана конкретная строка.

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — Ошибки и коды завершения — таблица логов разбора, имеет следующую структуру:
   * Required fields:
      * Код завершения — содержит значения кодов разбора для каждого документа.
   * There are the following fields the availability of which is set by a user:
      * The field identifier enables to identify the document with which a record is connected in the log table.
      * Error description: the description of exit codes.

## Wizard

### Step 1. Параметры разбора XML

* **XML column**: selection of the column with the XML documents.

* **Идентификация XML-документа** — в этой области определяется наличие столбца идентификаторов в разбираемой таблице и в таблице логов:
   * Use identifier: the checkbox enables identifiers. Then it is required to define the type of identifiers using the radio button:
      * Number of the input data set row: the number of the string which contains a document. 0 identifier matches the first string.
      * The column value: values of the selected column of the input table will be used as identifiers.

* **Останавливаться при ошибках** — данный флаг отменит разбор при обнаружении первой ошибки.

* **Разэкранировать сущности XML** — применяется в том случае, если документы разбираются из другого документа XML, в котором они были заэкранированы. При отсутствии данного флага разбор документа, начинающегося, например, с объявления `&lt;`

```xml
&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt
```

выдаст ошибку, а при наличии флага узел интерпретирует такое объявление как корректное:

```xml
<?xml version=«1.0» encoding=«UTF-8»?>
```

* **Provide description of error codes**: "Error description" column will be added to the table with logs.

### Step 2. Imported Fields

* **Connection**: the state of connection to the XSD schema.

* **Корневой элемент** — выбор корневого элемента XSD-схемы, в соответствии с которым данные будут разбираться. Ниже расположена область, отображающая иерархическую структуру выбранного корневого элемента — в ней следует отметить флагами элементы, которые сформируют поля разбираемой таблицы.

* **Временная зона по умолчанию** — значения с типом *Дата/Время* преобразуются при разборе из XML по следующему алгоритму:
   * If the time zone is specified for the value, it is transformed to the current time zone of the Loginom server.
   * If the time zone is not specified for the value, the following conditions are met:
      * If *Default time zone* is specified, the value is transformed to the current time zone of the Loginom server based on the assumption that it has the time zone specified in the *Default time zone* parameter.
      * If *Default time zone* is not specified, the value is not changed.

* **Repeat single values**: if there are a single item and nested sequence included into a sequence, the single item values will be repeated for each row formed from the nested sequence.

* **Check for strict XSD validation**: when this checkbox is selected, XML is validated for strict compliance with the XSD schema. Otherwise, the check is performed in the simplified accelerated mode. The simplified check procedure is performed faster, however, it does not secure correct data parsing from XML if there are undetected validation errors.

* **Generate composite field captions**: if this checkbox has been selected, hierarchy relative to the root element will be displayed in each field caption. Например, составная метка "ROOT|PERSON|ACCES-LEVEL" будет сформирована для поля разобранной таблицы, содержащего данные атрибута "ACCESS-LEVEL" элемента "PERSON" из корневого элемента "ROOT" документа. When there is no such checkbox, the field will get the following name: "ACCESS-LEVEL".
