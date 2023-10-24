---
description: Компонент Самоорганизующиеся сети в Loginom. Сети Кохонена. Нейронный газ. Выявление кластеров входных векторов, обладающих общими свойствами. Кластерный анализ.
---
# ![ ](./../../images/icons/components/sonn_default.svg) Self-Organizing Networks

## Description

Self-organizing networks enable to detect [clusters](https://wiki.loginom.ru/articles/cluster.html) (groups) of input vectors that have some common properties. Thus, they are well suitable for cluster analysis.

In particular, [Kohonen networks](https://wiki.loginom.ru/articles/kohonen-network.html) relate to self-organizing networks. Kohonen networks represent a kind of self-organising maps that, in their turn, represent a special type of neural networks. Kohonen network consists of the nodes that are combined into clusters. The closest nodes map the similar objects, and the objects that are remote from each other map the dissimilar ones.

[Neural gas](https://ru.wikipedia.org/wiki/%D0%9D%D0%B5%D0%B9%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9_%D0%B3%D0%B0%D0%B7) is one ot the types of self-organizing networks. The neural gas is an algorithm that provides adaptive clustering of input data, namely, not only to cluster the space but also to define its required count according to data peculiarities.

Для получения результирующих наборов требуется предварительное [обучение узла](./../../workflow/training-processors.md).

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table) — required port.

#### Requirements to the Received Data

The field will be no longer permitted for use in the following cases:

* It is discrete and contains only one unique value.
* It is continuous and with zero variance.
* It contains null values.

### Output

![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Clustering.

The table that consists of the following fields:

* **Cluster number**: each object is assigned with the number of the cluster into which it is included. The cluster consists of the network nodes.
* **Node number**: each object is assigned with the number of the network node to which it relates. In their turn, the nodes are combined into clusters (*Cluster number* field).
* **Distance to node**: the Euclidean distance to the nearest node, namely, to the node of the object.
* All fields of the source data set, irrespective of the field usage type.

![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Coordinates of nodes.

The table that consists of the following fields:

* **Node number**: numbers of the generated nodes are listed.
* **Cluster number**: numbers of the generated clusters are listed.
* The source data set fields for which *Used* was selected as *Usage type* parameter value. Weights of the network nodes are specified in the field cells.

## Wizard

The wizard includes the following groups of parameters:

* Configure input columns. The fields for clustering are selected at this stage:
   * It is required to set *Used* usage types for the fields that are included into clustering.
   * *Unspecified* is preserved for other fields.
* [Normalization](./../normalization/README.md) settings.
* Self-organizing network.
   * Type of self-organizing network:
      * Kohonen network.
      * Neural gas. При выборе данной опции блок *Параметры сети* становится неактивным.
   * Network Parameters:
      * Network topology: 1D, 2D rectangular, 2D hexagonal, 3D.
      * Network size X. The parameter is available for editing with any network topology. The integer value is set in the interval from 2 to 100. By default — 3.
      * Network size Y. The parameter is available for editing with the following network topologies: 2D rectangular, 2D hexagonal, 3D. The integer value is set in the interval from 2 to 100. By default — 3.
      * Network size Z. The parameter is available for editing with 3D network topology. The integer value is set in the interval from 2 to 100. By default — 3.

* **Random seed** — начальное число (целое, положительное), которое используется для инициализации генератора псевдослучайных чисел. Последовательность чисел генератора полностью определяется начальным числом. Если генератор повторно инициализируется с тем же начальным числом, он выдаст ту же последовательность чисел.

   Параметр влияет на воспроизводимость результата обучения. Можно повторить результат обучения узла, если подать те же данные и выставить тот же random seed.

   Для параметра доступны следующие команды:

   * Всегда случайно — начальное число всегда будет случайным.
   * Генерировать — сгенерируется новое начальное число.
   * Копировать — в буфер обмена будет скопировано указанное значение.
