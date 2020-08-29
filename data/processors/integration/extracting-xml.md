# ![ ](../../images/icons/components/extract-xml_default.svg) Извлечение XML

## Description

Обработчик извлекает таблицу данных из столбца входной таблицы, в ячейках которого содержатся документы XML в строковом виде. Все документы из столбца должны соответствовать подключенной [XSD-схеме](https://ru.wikipedia.org/wiki/XML_Schema_%28W3C%29).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) — Поключение к источнику XSD-схемы — подключение настроенного ранее подключения к файлам [XSD-схем](../../integration/connections/list/schemes.md).
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) —  Управляющие переменные (переменные), необязательный.
* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) — Источник данных — таблица данных, содержащая ячейки с документами XML.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — Набор данных — таблица данных, извлеченных из документов XML.
   * Поля, наличие которых задается пользователем:
      * Идентификатор поля — показывает, из какого именно документа была извлечена конкретная строка.

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — Ошибки и коды завершения — таблица логов извлечения, имеет следующую структуру:
   * Обязательные поля:
      * Код завершения — содержит значения кодов извлечения для каждого документа.
   * Поля, наличие которых задается пользователем:
      * Идентификатор поля — показывает, какому документу соответствует запись в таблице логов;
      * Описание ошибки — описание кодов завершения.

## Wizard

### Step 1. Параметры извлечения XML

* **Столбец, содержащий XML** — выбор столбца с документами XML.

* **Идентификация XML-документа** — в этой области определяется наличие столбца идентификаторов в извлекаемой таблице и в таблице логов:
   * Использовать идентификатор — флаг включает идентификаторы. Далее с помощью радиокнопки определяется тип идентификаторов:
      * Номер строки входного набора — номер строки, в которой содержится документ. Первой строке соответствует идентификатор 0.
      * Значение столбца — в качестве идентификаторов будут использованы значения выбранного столбца входной таблицы.

* **Останавливаться при ошибках** — данный флаг отменит извлечение при обнаружении первой ошибки.

* **Разэкранировать сущности XML** — применяется в том случае, если документы извлекаются из другого документа XML, в котором они были заэкранированы. При отсутствии данного флага извлечение документа, начинающегося, например, с объявления `&lt;`

```xml
&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt
```

выдаст ошибку, а при наличии флага обработчик интерпретирует такое объявление как корректное:

```xml
<?xml version=«1.0» encoding=«UTF-8»?>
```

* **Выдавать описание кодов завершения** — в таблицу с логами будет добавлен столбец "Описание ошибки".

### Step 2. Imported Fields

* **Connection** is a state of connection to the XSD schema.

* **Корневой элемент** — выбор корневого элемента XSD-схемы, в соответствии с которым данные будут извлекаться. Ниже расположена область, отображающая иерархическую структуру выбранного корневого элемента — в ней следует отметить флагами элементы, которые сформируют поля извлекаемой таблицы.

* **Default time zone**: the *Date/time* type values are transformed when extracting from XML according to the following algorithm:
   * If the time zone is specified for the value, it is transformed to the current time zone of the Loginom server.
   * If the time zone is not specified for the value, the following conditions are met:
      * If *Default time zone* is specified, the value is transformed to the current time zone of the Loginom server based on the assumption that it has the time zone specified in the *Default time zone* parameter.
      * If *Default time zone* is not specified, the value is not changed.

* **Repeat single values**: if there are a single item and nested sequence included into a sequence, the single item values will be repeated for each row formed from the nested sequence.

* **Check for strict XSD validation**: when flag placing, XML is validated for strict compliance with the XSD schema. Otherwise, the check is performed in the simplified accelerated mode. The simplified check procedure is performed faster, however, it does not secure correct data extraction from XXML if there are undetected validation errors.

* **Generate composite field captions**: if this flag has been placed, hierarchy relative to the root element will be displayed in each field caption. Например, составная метка "ROOT|PERSON|ACCES-LEVEL" будет сформирована для поля извлеченной таблицы, содержащего данные атрибута "ACCESS-LEVEL" элемента "PERSON" из корневого элемента "ROOT" документа. При отсутствии флага поле получит название "ACCESS-LEVEL".
