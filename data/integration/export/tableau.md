---
description: Экспорт данных из Loginom в Extract файл Tableau. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/file-tableau-export_default.svg) Экспорт в Tableau файл

Узел осуществляет экспорт исходного набора данных в Extract файл Tableau.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Источник данных — таблица данных, подлежащая экспорту в файл или сервер Tableau;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/link_inactive.svg) [Подключение к серверу Tableau](./../connections/list/tableau.md) (необязательный порт) — порт для установки подключения к серверу Tableau.

## Wizard

* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. Кнопка ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) вызывает диалог сохранения файла.
* **Table name** enables to set a name of the table to which it is planned to export data.
* **Создать таблицу** — открывает окно создания новой таблицы в файле данных Tableau.
* **Пересоздать файл при экспорте** — при проставленном флажке перезаписывает файл экспорта при каждом выполнении узла.
* **Создавать таблицу, если не существует** — параметр отвечает за создание таблицы, если в файле экспорта онп отсутствует. Данный параметр нельзя отключить при активном параметре пересоздания файла.
* **Публиковать на сервер** — публикует полученный файл на сервере Tableau.
   * **Имя проекта на сервере** — имя проекта на сервере в который будет сохранен файл.
   * **Имя файла на сервере** — имя источника данных на сервере под которым будет сохранен экспортируемый файл.
   * **Добавлять записи при публикации** — дополняет данные в файле данных в источнике.
   * **Перезаписывать данные при публикации** — перезаписывает источник с файлом экспорта при публикации.

> **Note:**
> * Для публикации на сервер требуется предварительно создать [подключение](./../connections/README.md) к серверу и связать его с входным портом *Подключение к серверу Tableau*.
> * *Добавлять записи при публикации* и *Перезаписывать данные при публикации* являются взаимоисключающими параметрами, но могут быть одновременно отключены.
> * Публикация на сервер возможна только если файл экспорта содержит одну таблицу под названием "Extract".
