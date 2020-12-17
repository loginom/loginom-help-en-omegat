# ![ ](../../images/icons/components/sonn_default.svg) Self-Organizing Networks

## Description

Self-organizing networks enable to detect [clusters](https://wiki.loginom.ru/articles/cluster.html) (groups) of input vectors that have some common properties. Thus, they are well suitable for cluster analysis.

К самоорганизующимся сетям относятся, в частности, [сети Кохонена](https://wiki.loginom.ru/articles/kohonen-network.html). Сети Кохонена представляют собой разновидность самоорганизующихся карт признаков, которые, в свою очередь, являются специальным типом нейронных сетей. Сеть Кохонена состоит из узлов, которые объединяются в кластеры. Наиболее близкие узлы соответствуют похожим объектам, а удаленные друг от друга — непохожим.

Также одним из типов самоорганизующихся сетей является [нейронный газ](https://ru.wikipedia.org/wiki/%D0%9D%D0%B5%D0%B9%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9_%D0%B3%D0%B0%D0%B7). Нейронный газ — это алгоритм, позволяющий осуществлять адаптивную кластеризацию входных данных, то есть не только разделить пространство на кластеры, но и определить необходимое их количество, исходя из особенностей самих данных.

To get resulting data sets, it is required to provide preliminary [training of the handler](../../scenario/training-processors.md).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table) — required port.

#### Requirements to the Received Data

The field will be no longer permitted for use in the following cases:

* It is discrete and contains only one unique value.
* It is continuous and with zero variance.
* It contains null values.

### Output

![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Clustering.

The table that consists of the following fields:

* **Cluster number**: each object is assigned with the number of the cluster into which it is included. The cluster consists of the network nodes.
* **Номер узла** — каждому объекту присвоен номер узла сети, к которому он относится. Узлы в свою очередь объединяются в кластеры (поле *Номер кластера*).
* **Расстояние до узла** — евклидово расстояние до ближайшего узла, т.е. того, которому принадлежит объект.
* Все поля исходного набора данных, независимо от назначения поля.

![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Coordinates of nodes.

The table that consists of the following fields:

* **Node number**: numbers of the generated nodes are listed.
* **Cluster number**: numbers of the generated clusters are listed.
* Поля исходного набора данных, для которых значение параметра *Назначение* выбрано *Используемое*. В ячейках полей указаны веса узлов сети.

## Wizard

The wizard includes the following groups of parameters:

* Configure Input Columns. The fields for clustering are selected at this stage:
   * It is required to set *Used* usage types for the fields that are included into clustering.
   * *Unspecified* is preserved for other fields.
* [Normalization](../normalization/README.md) Settings.
* Self-organizing network.
   * Type of self-organizing network:
      * Kohonen network.
      * Neural gas. При выборе данной опции блок *Параметры сети*   становится неактивным.
   * Network Parameters:
      * Топология сети: 1D, 2D прямоугольная, 2D гексагональная, 3D.
      * Network size X. Параметр доступен для редактирования при любой   топологии сети. Устанавливается значение целого типа в интервале от 2   до 100. By default — 3.
      * Network size Y. Параметр доступен для редактирования при следующих топологиях сети: 2D прямоугольная, 2D гексагональная, 3D. Устанавливается значение целого типа в интервале от 2 до 100. By default — 3.
      * Network size Z. Параметр доступен для редактирования при топологии сети 3D. Устанавливается значение целого типа в интервале от 2 до 100. By default — 3.
