---
description: Настройка публикации веб-сервисов в Loginom
---
# Edit Web Service
When adding web service, it is required to specify namespace.
**Namespace** of items and attributes provides their uniqueness in WSDL description of the service. To set the parameter, it is required to select one of the options:
* Use Loginom Integrator namespace;
* Generate unique for package (it is used by default);
* Generate unique for each package version;
* Custom.
> **Note:** when selecting *set manually* namespace must be [absolute URI](https://ru.wikipedia.org/wiki/URI#%D0%90%D0%B1%D1%81%D0%BE%D0%BB%D1%8E%D1%82%D0%BD%D1%8B%D0%B5_URI) according to [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) and [RFC 3987](https://datatracker.ietf.org/doc/html/rfc3987). In other cases, these requirements are automatically met.

The generated namespace that will be used for publication is displayed in the wizard window.

> **Important:** To avoid the name conflict, it is required to provide uniqueness of the paired values:  `published node name`, `published package namespace`. For this purpose, it is recommended to use *Generate unique for package* or *Generate unique for each package version* option for all published packages, or to set the unique namespaces manually.

It is required to show the path to the package file, select the namespace and press *Publish* button for publication.