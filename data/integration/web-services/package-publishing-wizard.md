---
description: Настройка публикации веб-сервисов в Loginom
---
# Редактирование веб-сервиса
При добавлении веб-сервиса требуется указать пространство имен.
**Namespace** of items and attributes provides their uniqueness in WSDL description of the service. Для задания параметра нужно выбрать один из вариантов:
* Use Loginom Integrator namespace;
* Generate unique for package (it is used by default);
* Generate unique for each package version;
* Custom.
> **Примечание:** при выборе *задать вручную* пространство имен должно быть [абсолютным URI](https://ru.wikipedia.org/wiki/URI#%D0%90%D0%B1%D1%81%D0%BE%D0%BB%D1%8E%D1%82%D0%BD%D1%8B%D0%B5_URI), в соответствии с [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) и [RFC 3987](https://datatracker.ietf.org/doc/html/rfc3987). В остальных случаях эти требования выполняются автоматически.

Сгенерированное пространство имен, которое будет использоваться для публикации, отображается в окне мастера.

> **Important:** To avoid the name conflict, it is required to provide uniqueness of the paired values:  `published node name`, `published package namespace`. For this purpose, it is recommended to use *Generate unique for package* or *Generate unique for each package version* option for all published packages, or to set the unique namespaces manually.

It is required to show the path to the package file, select the namespace and press *Publish* button for publication.