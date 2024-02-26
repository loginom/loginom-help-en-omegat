---
description: Интеграция Loginom с облачной базой данных BigQuery. Параметры подключения. Параметры BigQuery. Ограничения при работе.
---

# ![](./../../../images/icons/common/data-sources/db-bigquery_default.svg) BigQuery Connection

It is used for connection to the cloud BigQuery database. [*Simba ODBC Driver for Google BigQuery*](https://cloud.google.com/bigquery/providers/simba-drivers/) is required for operation. Driver bitness must match application bitness.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Connection string**: the string of `projectId[:datasetId]` kind that is set by entering the parameters manually. `projectId` parameter: the unique identifier of *Project*, `datasetId` is the unique dataset name (optioal parameter).
* **Test**: test of the specified connection settings.
   .

### BigQuery Parameters

* **Service account email**: email of *Google* service account.
* **Path to private key**: path to file with private key in *JSON* or *PKCS#12* format.
* **System certificate store**: when this checkbox is selected, *Simba* driver will perform server authentication check whether the server certificate is signed by one of the the store certificates from *Windows* trusted root certification authorities.
* **CA certificate**: path to the file with the root certificate. It is used if it is required to set the third party certificate.
* **Connect to Google Drive**: when this checkbox is selected, requests to *Google Drive* resources are allowed: files in *CSV*, *JSON*, *Avro* and *Google Sheets* formats.

### Parameters

* **Show system tables**: this parameter is not available because *Simba* driver does not provide this functionality at the moment.
* **Quote names**: if the database objects names (for example, names of tables, fields) contain spaces or reserved characters, it is required to use framing characters fixing the name start and end.
* **Do not use DBMS client** is not available as to connect to *BigQuery*, *Simba* driver is always used.
* **Clear pool when deactivated** enables to clear the pool of the Loginom Integrator packages frequently used in the batch processing saved for the quick call upon the node deactivation. This parameter is disabled by default.
* **Comment**: it is possible to provide any reference data concerning connection in this form.

### BigQuery Operation Restrictions

* Export from Google Sheets is not supported (Simba driver restriction).
* Extent of BigQuery response is limited to 10 MB (REST API restriction).
* Transactions are not supported (BigQuery restriction).
* System tables are not supported (Simba driver restriction).
* Update (UPDATE) of existing table records is not available (in connection with too slow operation).



> **Notes:**
>
> * Table import from *BigQuery* data of the following types is available: `string`, `integer`, `float`, `numeric`, `boolean`, `timestamp`, `date`, `time`, `datetime`.
> * Export to *BigQuery* data of the following types is available: `string`, `integer`, `float`, `boolean`, `timestamp`.
> * BigQuery uses unique `geography` and `record` data types that are not supported by SQL.
> * `datetime` and `numeric` data types are available only for import.
> * YYYY-MM-DD HH:MM:SS format is used when exporting to `timestamp` field. Time zone is not taken into account
> * To provide data import from Google Sheets, it is required to provide explicit access to BigQuery service account to read table.


