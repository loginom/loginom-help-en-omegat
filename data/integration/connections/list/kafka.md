---
description: Интеграция Loginom с брокером сообщений Kafka. Параметры подключения.
---
# ![ ](./../../../images/icons/common/data-sources/kafka_default.svg) Kafka Connection

It is used for connection to Kafka message broker.

## Connection Parameters

The following parameters are set during the connection setup:

* **Caption** contains the connection name set by a user.
* **Kafka cluster**: list of host/port couples to provide the initial connection to Kafka cluster.
* **Test**: test of the specified connection settings.
* **Security protocol** is a method providing secure access to data:
   * PLAINTEXT: access to data without authentification and encryption.
   * SASL_Plaintext: authentification by login and password.
   * SSL: authentification by certificate.
   * SASL_SSL: method combining the authentification methods specified above - *SASL* and *SSL*.
* **SASL mechanism**: authentification mechanism used to enhance verification capabilities.
   * PLAIN: simple authentification mechanism by login and password.
   * SCRAM-SHA-256: data hashing mechanism.
   * SCRAM-SHA-512: data hashing mechanism.
* **User name**: Kafka user name.
* **Пароль**: Kafka user password.
* **User certificate**: path to the certificate obtained in advance that contains data on the person to whom (IP or domain name) and by whom it has been given.
* **Private key**: path to the private key of the server with connected certificate chain.
* **Private key password**: password that enables to decrypt the key. It is not available by default.
* **Additional connection configuration**: collection of *Kafka* parameters in the following form: *Parameter — Value*.
* **Comment**: form for notes.

**See also:**
* [Official manufacturer website](https://kafka.apache.org/documentation/).