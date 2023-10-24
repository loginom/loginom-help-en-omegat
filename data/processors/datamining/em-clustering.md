---
description: Компонент EM Кластеризация в Loginom. Решение задачи кластеризации. Масштабируемый алгоритм ЕМ. Нормальные распределения. Функция правдоподобия. Параметры EM-кластеризации. Мастер настройки.
---
# ![ ](./../../images/icons/components/em_default.svg) EM Clustering

## Description

В основе EM кластеризации лежит масштабируемый [алгоритм EM](https://loginom.ru/blog/em), который опирается на предположение, что исследуемое множество данных может быть смоделировано с помощью линейной комбинации многомерных [нормальных распределений](https://wiki.loginom.ru/articles/normal-distribution.html). Целью при этом является оценка параметров распределения, которые максимизируют логарифмическую [функцию правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html), используемую в качестве меры качества модели. In other words, it is assumed that the data in each cluster is subject to the particular distribution law, namely, probability distribution.

Thus, any observation (object) belongs to all [clusters](https://wiki.loginom.ru/articles/cluster.html) but with different likelihood. The object must relate to the cluster for which this likelihood is higher.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

#### Requirements to the Received Data

The field will be no longer permitted for use in the following cases:

* It is discrete and contains only one unique value.
* It is continuous and with zero variance.
* It contains null values.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Clustering (data table).

The table that consists of the following fields:

* **Cluster number**: each object is assigned with the number of the cluster into which it is included.
* **Ownership probability**: it is required to specify probability of ownership by this cluster for each object.
* The source data set fields (values are not changed).

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Cluster centers (data table).

**Cluster center**: the average value of the objects variables included into cluster.
Result is a table the number of records of which complies with the number of clusters, namely, the data is grouped by clusters. It consists of the following fields:

* **Cluster number**: numbers of the generated clusters are listed.
* The source data set fields in the cells of which the average value of parameters has been calculated.

## Wizard

The wizard includes the following groups of parameters:

* Configure input columns.
* Настройка [нормализации](./../normalization).
* EM clustering.

### Configure input columns

* Select fields for clustering:
   * It is required to set *Used* usage types for the fields that are included into clustering.
   * *Unspecified* is preserved for other fields.

### EM Clustering

* Auto selection of clusters. The following pack of parameters becomes available for configuration when selecting the checkbox: *Auto Determination of Clusters Count*.
   * The minimum number of clusters. By default — 1.
   * The maximum number of clusters. By default — 10.
   * Cluster splitting significance threshold (in the interval from 0.1 to 5). The higher splitting significance threshold, the more clusters will be generated while clustering. By default — 1.
* Set number of clusters. The pack of parameters available for configuration in the case of inactive checkbox: *Auto selection of clusters*.
   * Number of clusters. By default — 3.
* Parameters of EM clustering.
   * Variables are independent. Consideration of dependence between variables. If the checkbox is active, there is no dependence.
   * Median modification. Selection of the checkbox means that moment scores of the maximum likelihood at the second M-step of the algorithm are replaced with more stable scores of the median type. It can increase the algorithm stability relative to the source data.

* **Random seed** — начальное число (целое, положительное), которое используется для инициализации генератора псевдослучайных чисел. Последовательность чисел генератора полностью определяется начальным числом. Если генератор повторно инициализируется с тем же начальным числом, он выдаст ту же последовательность чисел.

   Параметр влияет на воспроизводимость результата обучения. Можно повторить результат обучения узла, если подать те же данные и выставить тот же random seed.

   Для параметра доступны следующие команды:

   * Всегда случайно — начальное число всегда будет случайным.
   * Генерировать — сгенерируется новое начальное число.
   * Копировать — в буфер обмена будет скопировано указанное значение.