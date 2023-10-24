---
description: Компонент Сэмплинг в Loginom. Метод сэмплинга. Способы отбора записей в выборку. Мастер настройки.
---
# ![ ](./../../images/icons/components/sampling_default.svg) Sampling

## Description

Компонент реализует различные способы отбора записей в выборку из исходного набора данных. Such sample is created to decrease the analyzed data volume, for example, to avoid redundant computation, as complexity of some Data Mining algorithms is increased with data volume increase in an exponential manner.

При формировании выборки пользователь может задать метод отбора: случайный, равномерный случайный, стратифицированный, последовательный, отбор со смещением.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

* **Login status**: it enables to use the input data when the status is active. For example, the data from the input data set is required in "Biased sampling".
* **Total records**: the records count of the input data source table.
* **Area of the output table row count configuration.**
   The output table size is customized. The switch button provides a choice whether to set the row count ![ ](./../../images/icons/wizards/datapartition/percent_default.svg) or to set it as a percentage ![ ](./../../images/icons/wizards/datapartition/row_default.svg) of the source table size.
* **Sampling method**
   * *Random*: the records are randomly selected from the source data set, and then they are placed into the resulting sample.
   * *Random uniform*: all records of the source data set are divided into groups, and then they are randomly selected from each group and placed into the resulting sample. The group dimension is set in the method parameters.
   * *Stratified*: all records of the source data set are divided into uniform groups (strata), and then they are randomly selected from each group and placed into the resulting sample. The strata defining fields are set in the method parameters by means of checkboxes. При установке флажка *Полнота списка уникальных значений* в результирующую выборку должны попасть записи из всех групп. Если обеспечить полноту списка окажется невозможным — возникнет ошибка.
   * *Sequence*: the sample selection source will be specified in the method parameters. It will be defined whether it was taken from the source table beginning or end. Sequence of the sample rows will be the same as in the source table.
   * *Отбор со смещением* —  при настройке параметров метода следует выбрать поле и уникальное значение из этого поля, для которого устанавливается фактор. The factor with N value will increase the row count with the relevant unique value by N times in the output data set. N can take any positive values. It is required to take into account that the maximum count of unique values in the field must not exceed ten thousand.

* **Random seed** — начальное число (целое, положительное), которое используется для инициализации генератора псевдослучайных чисел. Последовательность чисел генератора полностью определяется начальным числом. Если генератор повторно инициализируется с тем же начальным числом, он выдаст ту же последовательность чисел.

   Параметр влияет на методы сэмплинга *Случайный* и *Равномерный случайный*. Повторить результат сэмплинга можно, если подать те же данные и указать тот же random seed.

   Для параметра доступны следующие команды:

   * Всегда случайно — начальное число всегда будет случайным.
   * Генерировать — сгенерируется новое начальное число.
   * Копировать — в буфер обмена будет скопировано указанное значение.