---
description: Сравнение редакций Loginom. Варианты редакций Community Edition, Personal, Team, Standard, Enterprise. Сравнение возможностей импорта и экспорта данных, обработки, визуализации, подключений.
---

# Compare Editions

To select a Megaladata edition, it is required to define the platform use options. There is no difference between the editions as far as available processing algorythms or visualization methods are concerned. Their differences are connected with the use cases and integration into the corporate IT environment.

The key questions that stipulate edition selection:

* Is team work required?
* How many users will work with the platform?
* How large are the amounts of data  that will be processed?
* What are the performance requirements?
* Is automatic workflow start required?
* Is it required to publish web services?
* Is integration with non-standard web services planned?
* How is it required to integrate analytics with the company's IT systems?
* Is it required to build fail-safe and scalable architecture?
* What operating system must be supported by the platform?

## Community

A desktop edition. It is used to train analysts and students on how to work with the Megaladata platform. It is not allowed to use this edition of the platform for commercial purposes. Individual data analysis without team work mechanisms is provided. Work with multiple data sources is supported. Integration with 1C is available only for Windows. Besides, work with REST services is available. The edition is available for the Linux and Windows operating systems.

## Personal

A desktop edition. It is designated for the autonomous analytical processing. Performance depends only on the capacity of the used working station. There is no limit on the number of processors or memory size. As the edition is targeted at the personal work of analyst, there are no built-in mechanisms of team work, integration with business processes and SOAP services. Automatic start of workflows is not available. The edition is available only for the Linux and Windows operating systems.

## Team

A server edition. It is designated for small teams of up to 5 people, and is targeted at the solution of basic analytical tasks. The processed data sizes must match the server with not more than 6 processor cores and RAM size up to 12 GB. Batch processing of workflows is available. It is not possible to call the third party SOAP services and publish own web services. The edition is available only for the Windows operating system.

## Standard

A server edition. It is designated for average companies with the number of users from 5 to 10. Not more than 12 processor cores and up to 24 GB of RAM can be used. It is possible to process data in batch mode, call third party web services for integration into the company's business processes, publish web services and construct a server cluster. The edition is available for the Linux and Windows operating systems.

## Enterprise

A server edition. It is targeted at the corporate processing of large volumes of data and implementation of critical business processes in a fail-safe and scalable environment. There is no limit on the number of processor cores and used RAM size. It is possible to buy additional licences for any number of users. It is possible to process data in batch mode, call third party web services for integration into the company's business processes, publish web services and construct a server cluster. The edition is available for the Linux and Windows operating systems.

## Cloud

A cloud edition. The platform is operated using a rented virtual machine's capacities only. The supplied resources can be scaled upon customer request according to the load size change. There is no limit on the number of processor cores and used RAM size. Server Edition and Megaladata Integrator are supplied at once. It is possible to process data in batch mode, call third party web services for integration into the company's business processes, publish web services and construct a server cluster. The edition is available only for the Linux operating system.

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
| Processor cores |           |          | 1-6 | 1-12 | ∞ | ∞ |
| RAM |           |          | up to12 GB | up to 24 GB | ∞ | ∞ |
| **Functions** |           |          |          |          |            |        |
| Processing and visualization | ● | ● | ● | ● | ● | ● |
| Batch processing |           |          | ● | ● | ● | ● |
| [LDAP support](./admin/ldap.md) |           |          |          |          | ● | ● |
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
| [Component libraries](https://marketplace.loginom.ru/libraries/)<sup>4</sup> | | ● | ● | ● | ● |        |
| [Business training](https://skills.loginom.ru/marketplace/2/category/%D0%91%D0%B8%D0%B7%D0%BD%D0%B5%D1%81-%D0%BA%D1%83%D1%80%D1%81%D1%8B) |           |          | ● | ● | ● |        |
| Workflow frames and templates |        |          | ● | ● | ● |        |
| **Technical support** |           |          |          |          |            |        |
| Community([chat](https://t.me/loginom_chat), [q&a](https://qa.loginom.ru/)…) | ● | ● | ● | ● | ● | ● |
| SLA Standard |           | ● | ● | ● | ● | ○<sup>1</sup> |
| SLA Premium |           |          |          |          | ○<sup>1</sup> | &nbsp; |

Notes:

<sup>1</sup> Additionally purchased  
<sup>2</sup> Additional contours for development, testing, etc., supplied within the terms of the techical support agreement  
<sup>3</sup> Number of sessions for one person/one working place is limited (more detailed information is provided below in the **Important** section)  
<sup>4</sup> For commercial use


> **Important**: A session is considered to be one tab or browser window when Megaladata is operated. In the Team and Standard editions, a user can start Megaladata 2 times simultaneously in different tabs/windows, namely, maximum 10 sessions are provided for 5 working places, whereas 20 sessions are provided for 10 working places. While attempting to open the third tab or window with Megladata, the user will receive the following message: "Exceeded number of sessions allowed for your edition". There are no restriictions for the users with admin rights or during batch processing of a workflow.