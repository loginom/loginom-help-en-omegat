# ![ ](../../images/icons/components/em_default.svg) EM Clustering

## Description

В основе [EM кластеризации](https://basegroup.ru/deductor/function/algorithm/em-clustering) лежит масштабируемый [алгоритм EM](https://basegroup.ru/community/articles/em), который опирается на предположение, что исследуемое множество данных может быть смоделировано с помощью линейной комбинации многомерных [нормальных распределений](https://wiki.loginom.ru/articles/normal-distribution.html). Целью при этом является оценка параметров распределения, которые максимизируют логарифмическую [функцию правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html), используемую в качестве меры качества модели. Иными словами, предполагается, что данные в каждом кластере подчиняются определенному закону распределения, а именно, нормальному распределению.

Таким образом, любое наблюдение (объект) принадлежит ко всем [кластерам](https://wiki.loginom.ru/articles/cluster.html), но с разной вероятностью. Объект должен быть отнесен к тому кластеру, для которого данная вероятность выше.

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

The table that consists of the following fields:

* **Cluster number**: each object is assigned with the number of the cluster into which it is included.
* **Вероятность принадлежности** — для каждого объекта проставляется вероятность принадлежности к данному кластеру.
* The source data set fields (values are not changed).

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Cluster centers (data table).

**Cluster center** denotes the average value of the objects variables included into cluster.
Result is a table the number of records of which complies with the number of clusters, namely, the data is grouped by clusters. It consists of the following fields:

* **Cluster number**: numbers of the generated clusters are listed.
* The source data set fields in the cells of which the average value of parameters has been calculated.

## Wizard

The wizard includes the following groups of parameters:

* Configure Input Columns;
* Настройка [нормализации](../normalization);
* EM Кластеризация.

### Configure Input Columns

* Select fields for clustering:
   * It is required to set *Used* usage types for the fields that are included into clustering.
   * *Unspecified* is preserved for other fields.

### EM Кластеризация

* Автоопределение числа кластеров. При установлении флага становится доступен для настройки блок параметров *Автоматическое определение числа кластеров*.
   * The minimum number of clusters. By default — 1.
   * The maximum number of clusters. By default — 10.
   * Cluster splitting significance threshold (in the interval from 0.1 to 5). The higher splitting significance threshold, the more clusters will be generated while clustering. By default — 1.
* Заданное число кластеров. Блок параметров, доступный для настройки, при неактивном флаге *Автоопределение числа кластеров*.
   * Число кластеров. By default — 3.
* Параметры EM-кластеризации.
   * Переменные независимы. Учет зависимости между переменными. Если флаг активен, зависимости нет.
   * Медианная модификация. Включение флага означает, что на втором М-шаге алгоритма моментные оценки максимального правдоподобия заменяются более устойчивыми оценками медианного типа. Это может повысить устойчивость алгоритма по отношению к начальным данным.
