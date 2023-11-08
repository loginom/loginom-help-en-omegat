---
description: Сравнение редакций Loginom. Варианты редакций Community Edition, Personal, Team, Standard, Enterprise. Сравнение возможностей импорта и экспорта данных, обработки, визуализации, подключений.
---

# Comparison of Editions

To select Megaladata editions, it is required to define the platform use options. There is no difference between the editions as far as available processing algorythms or visualization methods are concerned. Their differences are connected with use cases and integration into the corporate IT environment.

The key questions that stipulate edition selection:

* Is team work required?
* How many users will work with the platform?
* How large amounts of data are to be processed?
* What are the performance requirements?
* Is automatic workflow start required?
* Is it required to publish web services?
* Is integration with non-standard web services planned?
* How is it required to integrate analytics with the company IT systems?
* Is it required to build fail-safe and scalable architecture?
* What operating system must be supported by the platform?

## Community

Desktop edition. It is used to train analysts and students how to work with the Megaladata platform. It is not allowed to use this edition of the platform for commercial purposes. Предполагает индивидуальный анализ данных, без механизмов коллективной работы. Поддерживается работа с множеством источников данных, интеграция с 1С доступна только на Windows. Кроме того, доступна работа с REST-сервисами. Редакция доступна для операционных систем Linux и Windows.

## Personal

Desktop edition. It is designated for the autonomous analytical processing. Производительность зависит только от мощности используемой рабочей станции. Отсутствуют ограничения на количество процессоров или объемы памяти. Так как редакция ориентирована на персональную работу аналитика, то отсутствуют встроенные механизмы коллективной работы, интеграции с бизнес-процессами и SOAP-сервисами. Отсутствует возможность автоматического запуска сценариев. The edition is available only for Linux and Windows operating systems.

## Team

Server edition. Предназначена для небольших команд до 5 человек и ориентирована на решение базовых аналитических задач. Объемы обрабатываемых данных должны соответствовать серверу с количеством процессорных ядер не более 6 и объемом оперативной памяти до 12 Гб. Доступна возможность пакетного выполнения сценариев. Возможности вызова сторонних SOAP-сервисов и публикации собственных веб-сервисов отсутствуют. The edition is available only for Windows operating system.

## Standard

Server edition. Предназначена для средних компаний, с количеством пользователей от 5 до 10 человек. Может быть задействовано не более 12 процессорных ядер и до 24 Гб оперативной памяти. Доступна возможность обработки данных в пакетном режиме, вызова сторонних веб-сервисов для интеграции в бизнес-процессы компании, публикация веб-сервисов, а также построение кластера серверов. Редакция доступна для операционных систем Linux и Windows.

## Enterprise

Server edition. Ориентирована на корпоративную обработку больших объемов данных, реализацию критичных бизнес-процессов в отказоустойчивой и масштабируемой среде. Отсутствуют ограничения на количество ядер процессоров и объем используемой оперативной памяти. Возможно приобретение дополнительных лицензий на любое количество пользователей. Доступна возможность обработки данных в пакетном режиме, вызова сторонних веб-сервисов для интеграции в бизнес-процессы компании, публикация веб-сервисов, а также построение кластера серверов. Редакция доступна для операционных систем Linux и Windows.

## Cloud

Cloud edition. Платформа работает только на мощностях арендованной виртуальной машины. Потребляемые ресурсы могут масштабироваться по требованию заказчика, в зависимости от изменения нагрузок. Отсутствуют ограничения на количество ядер процессоров и объем используемой оперативной памяти. В поставку сразу входят Server и  Loginom Integrator. Доступна возможность обработки данных в пакетном режиме, вызова сторонних веб-сервисов для интеграции в бизнес-процессы компании, публикация веб-сервисов, а также построение кластера серверов. The edition is available only for Linux operating system.

## Comparison table

|                          | Community | Personal | Team | Standard | Enterprise | Cloud |
|:-------------------------|:---------:|:--------:|:--------:|:--------:|:----------:|:------:|
| **Components** |           |          |          |          |            |        |
| [Desktop](./components-platform.md#desktop) | ● | ● |          |          |            |        |
| [Server](./components-platform.md#server) |           |          | ● | ● | ● | ● |
| [Studio](./components-platform.md#studio) |           |          | ● | ● | ● | ● |
| [Integrator](./components-platform.md#integrator) |           |          | ○<sup>1</sup> | ○<sup>1</sup> | ● | ● |
| [Adapter](./components-platform.md#adapter) |           |          |          |          | ● |        |
| Free licences<sup>2</sup> |    |          |          | 1 | 3 |        |
| **Operating system** |           |          |          |          |            |        |
| Windows | ● | ● | ● | ● | ● |        |
| Linux | ● | ● |          | ● | ● | ● |
| **Restrictions** |           |          |          |          |            |        |
| Work places<sup>3</sup> | 1 | 1 | 5 | 5-10 | 10-∞ | 1-∞ |
| Processor core |           |          | 1-6 | 1-12 | ∞ | ∞ |
| RAM |           |          | up to12 GB | up to 24 Гб | ∞ | ∞ |
| **Functions** |           |          |          |          |            |        |
| Processing and visualisation | ● | ● | ● | ● | ● | ● |
| Package processing |           |          | ● | ● | ● | ● |
| Поддержка LDAP<[LDAP support](./admin/ldap.md) |           |          |          |          | ● | ● |
| **Integration** |           |          |          |          |            |        |
| Files | ● | ● | ● | ● | ● | ● |
| Databases | ● | ● | ● | ● | ● | ● |
| REST JSON | ● | ● | ● | ● | ● | ● |
| SOAP WSDL |           |          |          | ● | ● | ● |
| [Kafka](./integration/connections/list/kafka.md) | |  |   |          | ● | ● |
| **Training** |           |          |          |          |            |        |
| [Standard training](https://skills.loginom.ru/marketplace/1/category/%D0%91%D0%B0%D0%B7%D0%BE%D0%B2%D1%8B%D0%B5_%D0%BA%D1%83%D1%80%D1%81%D1%8B) |           | ● | ● | ● | ● |        |
| [Workshops](https://mastering.loginom.ru/) |           | ● | ● | ● | ● |        |
| [Skills](https://skills.loginom.ru/marketplace/6/category/%D0%9D%D0%B0%D0%B2%D1%8B%D0%BA%D0%B8) |           | ● | ● | ● | ● |        |
| [Component library](https://marketplace.loginom.ru/libraries/)<sup>4</sup> | | ● | ● | ● | ● |        |
| [Business training](https://skills.loginom.ru/marketplace/2/category/%D0%91%D0%B8%D0%B7%D0%BD%D0%B5%D1%81-%D0%BA%D1%83%D1%80%D1%81%D1%8B) |           |          | ● | ● | ● |        |
| Workflow frames and templates |        |          | ● | ● | ● |        |
| **Техническая поддержка** |           |          |          |          |            |        |
| Сообщество ([чат](https://t.me/loginom_chat), [q&a](https://qa.loginom.ru/)…) | ● | ● | ● | ● | ● | ● |
| SLA Стандарт |           | ● | ● | ● | ● | ○<sup>1</sup> |
| SLA Премиум |           |          |          |          | ○<sup>1</sup> | &nbsp; |

Примечания:

<sup>1</sup> Приобретается дополнительно  
<sup>2</sup> Дополнительные контуры для разработки, тестирования и прочее, предоставляемые в рамках договора техподдержки  
<sup>3</sup> Количество сессий на одного пользователя/одно рабочее место ограничено (подробнее см.ниже в **Важно**)  
<sup>4</sup> Для коммерческого применения


> **Важно**: сессией считается одна вкладка или окно браузера, где работает Loginom. Для редакций Team и Standard один пользователь может запустить Loginom 2 раза одновременно в разных вкладках/окнах, т.е. для 5 рабочих мест получается максимум 10 сессий, аналогично для 10 рабочих мест — 20 сессий. При попытке открыть третью вкладку или окно с Loginom пользователь получит сообщение «Превышено количество сессий, допустимых для вашей редакции». Для пользователя с правами admin или при пакетном выполнении сценария ограничений нет.