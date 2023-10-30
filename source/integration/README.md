---
description: Интеграция в Loginom. Обмен данными между Loginom и сторонними внешними системами. Описание разделов.
---
# Интеграция

Механизмы интеграции предназначены для обмена данными между платформой Loginom и сторонними внешними системами. Loginom имеет возможность  работать как с [веб-сервисами](./web-services/README.md), так и базами данных и файловыми хранилищами данных (электронные таблицы, текстовые файлы и т.д.).

> **Важно**:
> Для интеграции с некоторыми источниками, например, базами данных и веб-сервисами, необходима предварительная настройка [подключения](./connections/README.md).

Для описания реализации обмена данными можно выделить несколько разделов:

* [Подключение](./connections/README.md) — этот раздел включает описание подключений с указанием параметров доступа ко внешним системам, требуемых для последующего многократного использования;
* [Импорт](./import/README.md) — раздел предназначен для описания узлов извлечения данных из внешних источников с целью их последующей обработки;
* [Экспорт](./export/README.md) — раздел предназначен для описания узлов наполнения внешних систем обработанными данными с целью их дальнейшего хранения, использования, пересылки или публикации;
* [Веб-сервисы](./web-services/README.md) — данный раздел описывает работу Loginom с веб-сервисами.