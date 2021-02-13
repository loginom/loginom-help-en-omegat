# Web Services

Loginom provides the tools used for integration with external web services and publication of the own ones. Благодаря этому решения, созданные на базе Loginom, могут быть легко встроены в IT-ландшафт любой сложности.

> **Note:** The web service tools are available only in the [server Loginom editions](https://loginom.ru/platform/pricing#compare).

The following Loginom platform components are required for web services integration and operation:

* [Server](https://loginom.ru/platform/pricing#component-server) is the main platform component. It completes the loading, calculation, model training, visualisation, right management and other tasks.
* [Integrator](https://loginom.ru/platform/pricing#component-integrator) is a component responsible for publication of own web services based on the packages created in Loginom. It is used in combination with [IIS](https://ru.wikipedia.org/wiki/Internet_Information_Services) creating a separate application in it.
* [Adapter](https://loginom.ru/platform/pricing#component-adapter) is an optional component. It is required for interaction with non-standard web services, for example, with credit reference bureau.

## Работа с веб-сервисами

### Integration with External Web Services

Платформа Loginom предоставляет возможность интеграции с [SOAP](https://ru.wikipedia.org/wiki/SOAP) или [REST](https://ru.wikipedia.org/wiki/REST) сервисами.
Для этого необходимо [создать](../connections/README.md#nastroyka-podklyucheniya) соответствующее подключение:

- [SOAP Service Connection](../connections/list/soap-service.md) (SOAP service);
- [REST Service Connection](../connections/list/rest-service.md) (REST service).

В дальнейшем выходные данные созданного подключения используются соответствующим узлом вызова сервиса:

- [SOAP request](../../processors/integration/soap-request.md) — SOAP request;
- [REST request](../../processors/integration/rest-request.md) — REST request.

> **Примечание:** Ряд сервисов предоставляет ответ в виде вложенного XML. Для его преобразования в табличный вид предназначен компонент [Извлечение XML](../../processors/integration/extracting-xml.md). Для преобразования ответа, полученного в виде JSON, возможно использование конструкции [JSON.parse()](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse) в компоненте [Java-script](../../processors/transformation/java-script).

### Создание собственных веб-сервисов

Есть возможность [создания собственных SOAP и REST сервисов](../../integration/web-services/publishing-web-service.md). При этом в публикуемом в качестве веб-сервиса узле пакета реализуется логика обработки данных запроса к веб-сервису. Чаще всего таким узлом является [подмодель](../../processors/control/submodel.md), поскольку в ней возможно реализовать произвольную логику обработки. Входные [порты](../../scenario/ports/README.md) подмодели задают структуру запроса к сервису, а выходные — структуру ответа.

> **Примечание:** Возможна публикация нескольких подмоделей (узлов) в различных пакетах. Для каждой из них создается отдельный метод SOAP-сервиса и URL REST-сервиса.
