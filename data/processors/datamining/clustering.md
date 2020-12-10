# ![ ](../../images/icons/components/clusterization_default.svg) Clustering

## Description

[Clustering](https://wiki.loginom.ru/articles/clustering.html) (segmentation) means grouping of objects (observations, events) based on the data describing properties of objects. Objects inside the cluster must be similar to each other and differ from the other ones not included into other clusters.

The handler performs clustering of objects on the basis of [k-means and g-means](https://wiki.loginom.ru/articles/k-means.html) algorithms. The main difference of one algorithm from the other one lies in the fact whether the number of clusters is known in advance or not. If the number of clusters is known, *k-means* algorithm is used, otherwise, *g-means* algorithm is used. It enables to define this number automatically within the set interval.

![Figure Describing k-means Algorithm Operation](./clustering.svg)

Separate clusters and objects that relate to them are highlighted by color.

To get resulting data sets, it is required to provide preliminary [training of the handler](../../scenario/training-processors.md).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

#### Requirements to the Received Data

The field will be no longer permitted for use in the following cases:

* It is discrete and contains only one unique value.
* It is continuous and with zero variance.
* It contains null values.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Clustering (data table).

Таблица, состоящая из полей:

* **Номер кластера** — каждому объекту присвоен номер того кластера, в который он входит.
* **Расстояние до центра кластера** — положение объекта относительно центра кластера.
* Поля исходного набора данных (значения не изменяются).

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Центры кластеров (таблица данных).

**Центр кластера** — среднее значение переменных объектов, входящих в кластер. Результат — таблица, количество записей которой соответствует числу кластеров, т.е. данные сгруппированы по кластерам. Состоит из полей:

* **Номер кластера** — перечислены номера сформированных кластеров.
* Поля исходного набора данных, в ячейках которых рассчитано среднее значение параметров.

## Мастер настройки узла

Мастер настройки включает в себя следующие группы параметров:

* Настройка входных столбцов;
* Настройки [нормализации](../normalization/README.md);
* Кластеризация.

### Configure Input Columns

* Выбор полей для кластеризации:
   * Для полей, участвующих в кластеризации, выставить назначение *Используемое*.
   * Для прочих полей оставить *Не задано*.

### Кластеризация

* При заданном числе кластеров:
   * Снять галочку *Автоопределение числа кластеров*.
   * Ввести нужное количество кластеров (должно быть больше 2). По умолчанию — 3.
* При автоматическом определении числа кластеров:
   * Минимальное число кластеров. По умолчанию — 1.
   * Максимальное число кластеров. По умолчанию — 10.
   * Порог разделения кластеров (в интервале от 0,1 до 5). Чем больше порог разделения, тем больше кластеров будет сгенерировано при кластеризации.
