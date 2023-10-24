---
description: Экспорт данных из Loginom в Kafka. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/kafka-export_default.svg) Экспорт в Kafka
Узел предназначен для экспорта набора данных в Kafka.
## Ports
### Input Ports

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Подключение — порт для установки подключения к Kafka;
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Источник данных — таблица данных, подлежащая экспорту в Kafka;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

## Wizard
There are the following parameters in the wizard:
* **Подключение** — отображает статус подключения к источнику данных. Недоступен для редактирования.
* **Топик** — название темы, объединяющее сообщения одной тематики, на которую подписан консьюмер.
* **ID клиента ([`client.id`](https://kafka.apache.org/documentation/#consumerconfigs_client.id))** — строка идентификатора консьюмера, предназначенная для передачи данных кластеру *Kafka* при выполнении запросов.
* **Количество сообщений в пачке при отправке** — число сообщений, отправляемых в одной пачке. По умолчанию значение для отправки на локальный сервер *Kafka* будет «2».
* **Время ожидания завершения отправки пачки** — максимальное время (мс), за которое будет отправляться одна пачка.
* **Поле с ключами** — поле, из которого выбираются ключи сообщений.
* **Поле с сообщениями** — обязательное поле, из которого берутся сообщения.
* **Дополнительная конфигурация Producer** — коллекция из параметров *Kafka* в виде *Параметр — Значение*.

**See also:**
* [Официальный сайт производителя](https://kafka.apache.org/documentation/).
