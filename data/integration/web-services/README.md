# Web Services

В Loginom есть инструменты интеграции с внешними веб-сервисами и публикации своих собственных. Благодаря этому решения, созданные на базе Loginom, могут быть легко встроены в IT-ландшафт любой сложности.

> **Примечание:** Инструменты работы с веб-сервисами доступны только в [серверных редакциях Loginom](https://loginom.ru/platform/pricing#compare).

Интеграция и работа с веб-сервисами требует наличия следующих компонентов платформы Loginom:

* [Server](https://loginom.ru/platform/pricing#component-server) — основной компонент платформы. Выполняет задачи загрузки, расчетов, построения моделей, визуализации, управления правами и прочее.
* [Integrator](https://loginom.ru/platform/pricing#component-integrator) — компонент, отвечающий за публикацию собственных веб-сервисов на основе созданных в Loginom пакетов. Работает в связке с [IIS](https://ru.wikipedia.org/wiki/Internet_Information_Services), создавая в нем отдельное приложение.
* [Adapter](https://loginom.ru/platform/pricing#component-adapter) — необязательный компонент. Требуется для взаимодействия с нестандартными веб-сервисами, например, с бюро кредитных историй.

## Работа с веб-сервисами

### Интеграция с внешними веб-сервисами

Платформа Loginom предоставляет возможность интеграции с [SOAP](https://ru.wikipedia.org/wiki/SOAP) или [REST](https://ru.wikipedia.org/wiki/REST) сервисами.
Для этого необходимо [создать](../connections/README.md#nastroyka-podklyucheniya) соответствующее подключение:

- [SOAP Service Connection](../connections/list/soap-service.md) (SOAP service);
- [REST Service Connection](../connections/list/rest-service.md) (REST service).

В дальнейшем выходные данные созданного подключения используются соответствующим узлом вызова сервиса:

- [SOAP-запрос](../../processors/integration/soap-request.md) — SOAP-запрос;
- [REST-запрос](../../processors/integration/rest-request.md) — REST-запрос.

> **Примечание:** Ряд сервисов предоставляет ответ в виде вложенного XML. Для его преобразования в табличный вид предназначен компонент [Извлечение XML](../../processors/integration/extracting-xml.md). Для преобразования ответа, полученного в виде JSON, возможно использование конструкции [JSON.parse()](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse) в компоненте [Java-script](../../processors/transformation/java-script).

### Создание собственных веб-сервисов

Есть возможность [создания собственных SOAP и REST сервисов](../../integration/web-services/publishing-web-service.md). При этом в публикуемом в качестве веб-сервиса узле пакета реализуется логика обработки данных запроса к веб-сервису. Чаще всего таким узлом является [подмодель](../../processors/control/submodel.md), поскольку в ней возможно реализовать произвольную логику обработки. Входные [порты](../../scenario/ports/README.md) подмодели задают структуру запроса к сервису, а выходные — структуру ответа.

> **Примечание:** Возможна публикация нескольких подмоделей (узлов) в различных пакетах. Для каждой из них создается отдельный метод SOAP-сервиса и URL REST-сервиса.
