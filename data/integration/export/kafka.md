---
description: Экспорт данных из Loginom в Kafka. Мастер настройки
---
# ![ ](./../../images/icons/common/data-sources/kafka-export_default.svg) Export to Kafka
The node is designated for data set export to Kafka.
## Ports
### Input Ports

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Connection: the port for connection to Kafka;
* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Data source: the data table to be exported to Kafka;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

## Wizard
There are the following parameters in the wizard:
* **Connection** displays status of connection to data source. It can't be edited.
* **Topic**: topic name combining messages related to one topic to which consumer is subscribed.
* **Client ID ([`client.id`](https://kafka.apache.org/documentation/#consumerconfigs_client.id))**: the consumer identifier string designated for data transfer to *Kafka* cluster when executing requests.
* **Number of messages in pack while sending**: number of messages sent in one pack. "2" will be the default value for sending to *Kafka* local server.
* **Wait period of pack sending**: the maximum time period (ms) during which one pack will be sent.
* **Field with keys**: the field from which message keys are selected.
* **Field with messages**: the required field from which messages are taken.
* **Additional Producer configuration**: collection of *Kafka* parameters in the following form: *Parameter — Value*.

**See also:**
* [Official manufacturer website](https://kafka.apache.org/documentation/).
