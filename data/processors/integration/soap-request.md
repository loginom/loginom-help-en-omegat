# ![ ](../../images/icons/data-sources/web-soap-client_default.svg) SOAP Request

Компонент позволяет взаимодействовать с внешним [SOAP-сервисом](https://ru.wikipedia.org/wiki/SOAP), отправляя ему запросы и получая ответы. SOAP-сервису может быть отправлено несколько последовательных запросов, формируемых из строк входной таблицы с параметрами запросов. На выходных портах обработчика формируются таблицы с ответами сервиса, возвращенными ошибками и дополнительными данными. The service XML responses are transformed to the table view.

Поддерживаются описание SOAP-сервисов спецификации WSDL 1.1 и протоколы SOAP версий 1.1 и 1.2.

Для работы с SOAP-сервисом необходимо настроенное [connection to SOAP-сервису](../../integration/connections/list/soap-service.md).

## Ports

### Input Ports

* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) — Connection to SOAP Service (connection to *SOAP Service Connection* component);
* ![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) — Request data source (table with the request parameters), optional;
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) — Control variables (variables), optional.

### Output Ports

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — Output data set (table with the SOAP service responses);
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — Exceptions (WSDL fault);
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — Additional data (table) contains description of errors and SOAP responses of the service.

## Wizard

Перед началом настройки требуется установить связь с узлом подключения к SOAP-сервису. Настройка включает несколько шагов.

### Selection of the request method

Радиокнопкой необходимо выбрать один из предоставляемых SOAP-сервисом методов (операций).

### Configure Request

The request parameters are set at this stage. The list of the input data set fields is located on the left. Справа расположен список принимаемых SOAP-сервисом параметров. It is required to establish the links between fields and parameters for provide further setup. It can be done in several ways:

* *Drag-and-drop* method: drag the field caption from the left list of the fields to the item of the request parameters list.
* It is necessary to select the required request parameter in the right table and select the field caption from the input data set from the drop-down list in the *Related fields* column.
* Использовать кнопку ![ ](../../images/icons/toolbar-controls/auto-connect_default.svg) *Связать все автоматически*, при этом происходит автоматическое связывание входных полей и параметров запроса, исходя из значений меток и типов данных полей входного набора и параметров.

> **Note**: If the link between the field and object has been incorrectly established, it can be deleted. In order to do that, it is required to select the caption and press ![ ](../../images/icons/link-grid/remove-link_hover.svg) button in the line. If all links are to be deleted, ![ ](../../images/icons/toolbar-controls/remove-all-links_default.svg) *Delete all links* button is used.

* **Наличие временной зоны** — определяет, указывается ли информация о [часовом поясе](https://ru.wikipedia.org/wiki/Список_часовых_поясов_по_странам) в рамках стандарта [ISO_8601](https://ru.wikipedia.org/wiki/ISO_8601) при передаче параметров запроса типа `Дата/Время`. Possible values:
   * Do not specify.
   * Не указывать для даты — не указывать временную зону для элементов SOAP-запроса типа [Date](https://www.w3.org/TR/xmlschema-2/#date).
   * Specify always.

### Configure Service Response

Необходимо выбрать параметры ответа SOAP-сервиса, которые будут включены в результирующую таблицу в виде отдельных столбцов.

### Configure Exception Handled

На данном шаге выбираются атрибуты ошибок, которые необходимо вывести в выходном наборе порта *Исключения*.

### Custom User Headers

На данном шаге задаются имена и значения [заголовков HTTP-запросов](https://ru.wikipedia.org/wiki/HTTP#Заголовки) к сервису.

### Additional Parameters

* Request Identification.
   * **Один запрос в каждой строке входного запроса** — каждая строка входной таблицы содержит параметры одного запроса к сервису.
   * **Идентификатор запроса — поле входного набора** — каждый запрос формируется из нескольких строк входной таблицы с совпадающим идентификатором. Необходимо выбрать поле идентификатора из списка полей входного набора.

> **Примечание**: поскольку входной набор данных с параметрами запросов является необязательным, то при его отсутствии узел вызова SOAP-сервиса отправит единичный SOAP-запрос без параметров.

* Response Processing.
   * **Временная зона по умолчанию** — значения с типом *Дата/Время* преобразуются при обработке ответа сервера по следующему алгоритму:
      * If the time zone is specified for the value, it is transformed to the current time zone of the Loginom server.
      * If the time zone is not specified for the value, the following conditions are met:
         * If *Default time zone* is specified, the value is transformed to the current time zone of the Loginom server based on the assumption that it has the time zone specified in the *Default time zone* parameter.
         * If *Default time zone* is not specified, the value is not changed.
   * **Дублировать единичные значения** — при установке данного флага для каждого дочернего элемента XML ответа сервиса выводится информация, содержащаяся в родительском элементе (например, атрибуты, дочерние элементы с maxOccurs=1). В противном случае эта информация выводится только для первого дочернего элемента.
   * **Проверять на строгое соответствие XSD** — при установке флага производится валидация XML ответа сервиса на строгое соответствие XSD схеме, заявленной в WSDL веб-сервиса. В противном случае проверка ответа веб-сервиса производится в упрощенном, ускоренном режиме, и большинство проверок осуществляются только для элементов XML, которые были выбраны для вывода в результирующем наборе данных. Процесс проверки в упрощенном режиме происходит быстрее, однако не гарантирует корректное извлечение данных из XML ответа сервиса в случае, если имеются невыявленные ошибки валидации.
   * **Генерировать составные метки полей** — метка поля вывода элементов XML ответа сервиса содержит полный путь их расположения в иерархической структуре XML.
* Additional.
   * **Выдавать описание кодов завершения** — отображать описание ошибок, произошедших при отправке запроса, получении и разборе ответа сервиса.
   * **Выдавать "сырой" ответ сервера** — в выходном наборе данных порта *Дополнительные данные* выводить SOAP-сообщение ответа сервиса.
* Debug.
   * **Сохранять текст запроса на диск** — все запросы, отправленные сервису, записываются в указанную папку в файловом хранилище.
   * **Имитировать запрос с ответом в файле** — при установке флага фактического запроса к сервису не происходит, а в качестве ответа сервиса выводится содержимое указанного файла.
