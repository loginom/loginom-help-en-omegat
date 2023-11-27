---
description: Импорт данных в Loginom из брокера сообщений Kafka. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/kafka-import_default.svg) Import from Kafka Message Broker
The component is used for data import from *Kafka* cluster.
## Ports
### Input Ports

* ![Порт подключений](./../../images/icons/app/node/ports/inputs/link_inactive.svg) **Подключение** — принимает параметры подключения к кластеру *Kafka*;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [**Control variables**](./../../workflow/variables/control-variables.md) — optional port. It is possible to set values of the wizard parameters using variables.
### Output Ports
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data set**: the table with imported data.
## Wizard
There are the following parameters in the wizard:
* **Connection** displays status of connection to data source. It can't be edited.
* **Topic**: topic name combining messages related to one topic to which consumer is subscribed.
* **ID группы ([`group.id`](https://kafka.apache.org/documentation/#consumerconfigs_group.id))** — уникальная строка, идентифицирующая группу консьюмеров, в рамках которой доставляется один экземпляр сообщения.
* **Client ID ([`client.id`](https://kafka.apache.org/documentation/#consumerconfigs_client.id))**: the consumer identifier string designated for data transfer to *Kafka* cluster when executing requests.
* **Тип смещения** — параметр, позволяющий выбрать положение записи в разделе топика:
   * Без указания смещения — параметр по умолчанию.
   * С начала очереди партиций — смещение относительно начала очереди партиций.
   * С текущего смещения — импорт начнется со смещения, сохранённого в партиции.
   * Номер смещения — абсолютное смещение по указанному номеру сообщения.
   * Смещение относительно конца — смещение относительно конца очереди партиций.
> **Примечание:**  смещения хранятся в топиках *Kafka*.
* **Время ожидания сообщения (мс)** — максимальное время, за которое будет выполняться запрос одного сообщения.
* **Максимальное количество сообщений** — при получении максимального количества сообщений импорт будет остановлен.
* **Additional Consumer configuration**: collection of *Kafka* parameters in the following form: *Parameter — Value*.

**See also:**
* [Official manufacturer website](https://kafka.apache.org/documentation/).
