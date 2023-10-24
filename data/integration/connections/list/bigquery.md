---
description: Интеграция Loginom с облачной базой данных BigQuery. Параметры подключения. Параметры BigQuery. Ограничения при работе.
---

# ![](./../../../images/icons/common/data-sources/db-bigquery_default.svg) Подключение BigQuery

Используется для подключения к облачной базе данных BigQuery. Для работы требуется [*Simba ODBC Driver for Google BigQuery*](https://cloud.google.com/bigquery/providers/simba-drivers/). Разрядность драйвера должна совпадать с разрядностью приложения.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Строка подключения** — строка вида `projectId[:datasetId]` задается вводом параметров вручную. Параметр `projectId` — уникальный идентификатор *Проекта*, `datasetId` — уникальное имя датасета (параметр опциональный).
* **Тестировать** — тест указанных настроек подключения.

### Параметры BigQuery

* **Email сервисного аккаунта** — email сервисного аккаунта *Google*.
* **Путь к секретному ключу** — путь к файлу с секретным ключом в формате  *JSON* или *PKCS#12*.
* **Системное хранилище сертификатов** — при выставленном флаге драйвер от *Simba* будет проверять подлинность сервера путем проверки, подписан ли сертификат сервера одним из сертификатов из хранилища доверенных корневых сертификатов центров сертификации *Windows*.
* **Сертификат CA** —  путь к файлу с корневым сертификатом. Используется, если необходимо задать сторонний сертификат.
* **Подключаться к Google Drive** — при выставленном флаге разрешаются запросы к ресурсам *Google Drive*: файлы в форматах *CSV*, *JSON*, *Avro* и *Google Sheets*.

### Параметры

* **Показывать системные таблицы** — параметр недоступен, т.к. драйвер от *Simba* не реализует этот функционал в настоящий момент.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client** is not available as для подключения к *BigQuery* всегда используется драйвер от *Simba*.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

### Ограничения при работе с BigQuery

* Экспорт из Google Sheets не поддерживается (ограничение драйвера от Simba).
* Объем ответа от BigQuery ограничен 10 МБ (ограничение REST API).
* Транзакции не поддерживаются (ограничение BigQuery).
* Системные таблицы не поддерживаются (ограничение драйвера от Simba).
* Обновление (UPDATE) существующих записей в таблице недоступно (из-за слишком медленной работы).



> **Notes:**
>
> * Доступен импорт таблиц из *BigQuery* данных следующих типов: `string`, `integer`, `float`, `numeric`, `boolean`, `timestamp`, `date`, `time`, `datetime`.
> * Доступен экспорт в *BigQuery* данных следующих типов: `string`, `integer`, `float`, `boolean`, `timestamp`.
> * BigQuery использует уникальные типы данных `geography` и `record`, не поддерживаемые SQL.
> * Данные типов `datetime` и `numeric` доступны только для импорта.
> * При экспорте в поле `timestamp` используется формат ГГГГ-ММ-ДД ЧЧ:ММ:СС, часовой пояс не учитывается.
> * Для возможности импорта данных из Google Sheets необходимо явно предоставить доступ сервисному аккаунту BigQuery на чтение таблицы.


