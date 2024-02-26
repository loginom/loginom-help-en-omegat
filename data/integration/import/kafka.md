---
description: Импорт данных в Loginom из брокера сообщений Kafka. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/kafka-import_default.svg) Import from Kafka Message Broker
The component is used for data import from *Kafka* cluster.
## Ports
### Input Ports

* ![Port of connections](./../../images/icons/app/node/ports/inputs/link_inactive.svg) **Connection** accepts parameters of connection to *Kafka* cluster.
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [**Control variables**](./../../workflow/variables/control-variables.md) — optional port. It is possible to set values of the wizard parameters using variables.
### Output Ports
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data set**: the table with imported data.
## Wizard
There are the following parameters in the wizard:
* **Connection** displays status of connection to data source. It can't be edited.
* **Topic**: topic name combining messages related to one topic to which consumer is subscribed.
* **Group ID ([`group.id`](https://kafka.apache.org/documentation/#consumerconfigs_group.id))**: the unique string that identifies a group of consumers in which one message instance is delivered.
* **Client ID ([`client.id`](https://kafka.apache.org/documentation/#consumerconfigs_client.id))**: the consumer identifier string designated for data transfer to *Kafka* cluster when executing requests.
* **Bias type**: the parameter that enables to select location of record in the topic section:
   * Without bias specification: the default parameter.
   * From the start of partition queue: bias relative to the start of partition queue.
   * From the current bias: import will start from the bias saved in partition.
   * Bias number: the absolute bias by the specified message number.
   * Bias relative to the end: bias relative to the end of partition queue.
> **Note:**  biases are kept in *Kafka* topics.
* **Message wait period (ms)**: the maximum time period during which request of one message will be executed.
* **Maximum number of messages**: import will be stopped when the maximum number of messages is received.
* **Additional Consumer configuration**: collection of *Kafka* parameters in the following form: *Parameter — Value*.

**See also:**
* [Official vendor's website](https://kafka.apache.org/documentation/).
