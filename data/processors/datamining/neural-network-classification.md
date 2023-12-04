---
description: Компонент Нейросеть (классификация) в Loginom. Решение задачи классификации. Обучающая выборка. Нахождение весов. Метод Бройдена-Флетчера-Гольдфарба-Шанно с ограничением памяти L-BFGS. K-fold кросс-валидация. Монте-Карло. Мастер настройки.
---
# ![ ](./../../images/icons/components/classifierneuralnet_default.svg) Neural Network (Classification)

## Description

The component handles the task of [classification](https://wiki.loginom.ru/articles/classification.html): in the [*Neural network*](https://wiki.loginom.ru/articles/neural-network.html) output data set it correlates a set of [input parameters](https://wiki.loginom.ru/articles/input-variable.html)  (independent variables) with one of the [classes](https://wiki.loginom.ru/articles/class.html) known in advance:

**{** P(1), P(2), P(3) ... P(n) **}** => Class(i) where P(n) — input parameter, Class(i) — one of the classes known in advance.

Before classification, it is required to train the algorithm using the training data set, namely, the [training sample](https://wiki.loginom.ru/articles/training-set.html). Each row of such sample contains the following data:

* a set of input parameters in the fields marked as the *input* ones;
* class identification mapping this set in the only *output* field.

Thus, the list of classes is set by the training data set in the process of the *Neural network* training, and it cannot be changed/reconsidered in the classification process.

Technically, the training consists in determination of *weights* — coefficients of links between neurons. In the process of training, the neural network enables to detect complex dependences between input and [output parameters](https://wiki.loginom.ru/articles/output-variable.html), and also to perform generalization. It means that on condition of the successful training, the network can return the correct result based on the data that was absent in the training sample, and also incomplete and/or "noisy", partially distorted data. The Quasi-Newton [Broyden — Fletcher — Goldfarb — Shanno method](https://ru.wikipedia.org/wiki/Алгоритм_Бройдена_—_Флетчера_—_Гольдфарба_—_Шанно) is used for training with limited use of *L-BFGS* memory.

In the classification task (as opposed to the [regression task](./../../processors/datamining/neural-network-regression.md)) only the field with discrete [data kind](./../../data/datakind.md) can be the output one. Data kind of input fields is not regulated, they can be both continuous and discrete.

> **Note:** One input will be created for each continuous parameter in the *Neural Network* structure, whereas each discrete one will be provided with the inputs the number of which will comply with the number of different unique values of this parameter.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

#### Requirements to the Received Data

The input data set fields that will be used as the *input* or *output* ones, must not contain null values. If this requirement is not met, error message will appear when node activating.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) [Neural network output](./neural-network-classification/output-set.md) (data table).
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) [Summary](./neural-network-classification/report.md) (variables) — model quality indicators.

## Wizard

### Step 1. Configure input columns

It is required to set the [usage type](./../../data/datasetfieldfeatures.md) of the input data set fields at the first stage:

* ![ ](./../../images/icons/common/usage-types/active_default.svg) **Input**: the field contains the values of one of the input parameters.
* ![ ](./../../images/icons/common/usage-types/predicted_default.svg) **Output**: the field contains the class values.
* ![ ](./../../images/icons/common/usage-types/unspecified_default.svg) **Not defined**: the field is not included into processing. It is set for other fields by default.

### Step 2. Configuration of Normalization

At this stage, the input data is set to the normal kind. It is transformed from the natural values to the non-dimensional ones to ensure that the data with wide scatter of values does not prevail over the data with less significant scatter of values. Usage of [normalization](./../normalization/README.md) increases the quality and speed of the *neural network* training.

### Step 3. Partitioning

The *Partitioning* page enables to divide a set into the training and test ones:

* [Train](https://wiki.loginom.ru/articles/training-set.html): the structured data set used for training of [analytical models](https://wiki.loginom.ru/articles/taught-model.html). Each record of the training set is a training example with the set input effect and correct output (target) result that corresponds to it.
* [Test](https://wiki.loginom.ru/articles/test-set.html): the training sample subset that contains test examples, namely, the examples used not to train the model but to check its results.

Available Parameters:

* Size of training and test set in percentage terms or in rows.
* Method of partition to training and test sets. There are three partition methods:
   * Random method provides partitioning of records set to training and test sets.
   * Sequence: groups of sets rows (training, unused, test) are selected in a sequential order, namely, only the records that are included into the first set are selected first, then it is required to select the records that are included into the second set, etc. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
   * By column: partitioning to training and test sets is set using the parameter. Parameter is a column with the logical data type where &laquo;TRUE&raquo; value indicates that the record relates to the test set, and &laquo;FALSE&raquo; value indicates that the record relates to the training set (namely, it is possible to partition the set to training and test sets in the [Partitioning](../preprocessing/partitioning.md) node, and submit data from *Common output data set* port to the input of the *Neural network (classification)* node having selected the "Test set" column as partitioning by column parameter). When selecting this method, the training and test set correlation selection table becomes inactive.
* [Validation](./../validation.md) method that can take the following values:
   * No validation.
   * [K-fold cross validation](https://wiki.loginom.ru/articles/cross-validation.html) enables to select the *Method of [sampling](https://wiki.loginom.ru/articles/sampling.html)* and number of *Cross validation fold*.
   * [Monte Carlo](https://wiki.loginom.ru/articles/monte-carlo-technique.html?q=) enables to select *Resampling iteration count* and set the size of training and [validation set](https://wiki.loginom.ru/articles/validation-set.html).

**Random seed** is a starting seed (integer, positive ) that is used for initialization of pseudo-random number generator. Sequence of generator numbers is fully determined by the starting seed. If the generator is repeatedly initialized with the same starting seed, it will provide the same sequence of numbers.

The parameter affects the order of random partitioning to the test and training sets and training result reproducibility. It is possible to reproduce the node training result if the same data is provided and the same random seed is set.

The following commands are available for the parameter:

* Always randomly: the starting seed will always be random.
* Generate: the new starting seed will be generated.
* Copy: the specified value will be copied to the clipboard.

### Step 4. Configure Neural Network Parameters

#### Neural Network Structure

* **Number of hidden layers** is selected from the list:
   * No hidden layers.
   * One hidden layer (used by default).
   * Two hidden layers.
* **Number of neurons in the first hidden layer** — integer >= 1 (by default = 10).
* **Number of neurons in the second hidden layer**— integer >= 1 (by default = 10).

#### Training Parameters

* **Number of restarts**: number of attempts of the *Neural Network* training (using one and the same set) based on the random initial values of weights. Upon completion of all restarts, it is required to select the network that provides the least root-mean-square error of the training set. Integer >= 1 (by default = 10).
* **Decay degree**: the degree of the network weights dependence from each other. The higher this dependence, the stronger impact exerts one input parameter on the other ones. The decay enables to decrease the effective number of the model degrees of freedom, thereby avoiding overfitting. The following options are available:
   * None (0).
   * Very weak (20).
   * Weak (40). It is used by default.
   * Mean (60).
   * Strong (80).
   * Very strong (100).
* **Продолжить обучение** — установка данного флага позволяет начать переобучение модели не со случайных значений весов *Нейросети*, а с полученных при последнем обучении. При этом параметр *Количество рестартов* игнорируется.

#### Stop Criteria

The network is trained in the iterative manner. The whole training data set is read for each iteration, and the *Neural Network* weights are changed. Это продолжается до тех пор, пока относительные изменения весов не станут меньше заданного порога или количество итераций не превысит заданной величины.

* **Порог минимального изменения весов** — если на очередном шаге обучения относительное изменение нормы вектора весов становится меньше порога, то обучение останавливается. По умолчанию = 0,005.
* **Максимальное количество эпох** — максимальное количество итераций обучения алгоритма. If it is required to limit the training process in time, in this case, it will be stopped upon the set number of epochs even if the training has not reached the optimal point, namely, the minimum weight change threshold has not been reached yet.

### Шаг 5. Configure Auto Selection of Neural Network Parameters

Three structure related parameters can be selected for the neural network:

* Number of hidden layers (0, 1 or 2).
* Number of neurons in each hidden layer.
* **Степень регуляризации** — параметр, регулирующий жесткость модели.

#### Common Parameters

* **Подобрать структуру** — автоматический подбор структуры *Нейросети*:
   * **Начать с указанной структуры** — использование в качестве начальных параметров значений, заданных на странице настройки параметров *Нейросети*.
* **Подобрать степень регуляризации** — автоматический подбор степени регуляризации *Нейросети*:
   * **Начать с указанной степени регуляризации** — использование в качестве начальной *Степени регуляризации* значения, заданного на странице настройки параметров *Нейросети*.

> **Примечание:** если необходимо осуществлять подбор параметров для больших входных объемов или сложных моделей, можно включить только подбор структуры, либо только подбор степени регуляризации, сократив время на обучение.

#### Sampling Parameters

To speed up the autofit process, it is required to set the subsample in which it will be performed:

* **Использовать подмножество обучающего набора** — использование подвыборки обучающего множества для автоподбора.
   * **Размер выборки в процентах** — размер подвыборки обучающего множества.
   * **Maximum sample size**: the maximum size of the training set subsample.

#### Auto Stop Criteria

The auto selection process is stopped by default if it is not possible to find better parameters as compared with the detected ones. Для ограничения времени работы предусмотрена возможность ограничить, в том числе одновременно количество шагов автоподбора и время автоподбора:

* **Autofit stages not more**: the maximum number of the algorithm steps (0 — restrictions are disabled).
* **Autofit time not more (s)**: the maximum algorithm operation time (0 — restriction is disabled).

> **Примечание:** при работе следует учитывать, что фактически оба ограничения могут быть незначительно превышены при использовании подвыборки для автоподбора, так как последним этапом, который не учитывается ограничениями, будет осуществлено обучение лучшей *Нейросети* на полном наборе.

The optimizer is stopped in some specific cases if, from a theoretical standpoint, the best result is reached. It is the root-mean-square error of the training set equal to 0 both for regression networks, and for the classifier.

By default, *Stop at zero classification error* is also enabled for the classifier:

* **Stop at zero classification error** enables to stop autofit when reaching zero classification error.

> **Примечание:** опцию *Останов при нулевой ошибки классификации* можно отключить,
> т.к. правильная классификация всех примеров не всегда означает наилучшую структуру *Нейросети*: оптимизатору можно дать возможность подобрать сеть с лучшей обобщающей способностью (например, с меньшим числом нейронов или сильнее регуляризованную), но при этом не обязательно с нулевой ошибкой классификации.

#### Optimization Strategy

The root-mean-square error of the training set is a target function for the optimizer. Under these circumstances, to take into account the cases when several networks provide the results comparable in accuracy, in order to select the network with the simplest structure, the target function value is additionally fined by the multiplier (1+1e-8) slightly different from 1 for each hidden neuron.

The following optimization strategy is used:

* If it is required to select only the decay degree for the set structure:
   * Если начальная точка не задана, то степень регуляризации подбирается методом *золотого сечения*, в противном случае — методом *схождения к вершине*.
* Если необходимо подобрать только структуру, не изменяя степень регуляризации:
   * Если не задана начальная структура, то она подбирается в два этапа: сначала происходит выбор количества скрытых слоев (0, 1 или 2), затем, если результат предыдущего этапа не 0, грубо подбирается размер скрытых слоев методом *золотого сечения*, причем для 2 скрытых слоев количество нейронов на данном этапе делается одинаковым.
   * Структура подбирается сразу по всем трем параметрам (число слоев, число нейронов) методом *схождения к вершине* из заданной либо подобранной начальной точки.
* If autofit of structure and decay is required:
   * The structure is selected as in the previous clause. При этом, если начальное значение регуляризации задано, то используется оно, в противном случае — регуляризация отключена.
   * Если начальное значение регуляризации не было задано, оно подбирается методом *золотого сечения*.
   * Финальный этап автоподбора производится методом *схождения к вершине* по всем четырем параметрам.

   Блок-схема (граф переходов) реализованной стратегии автоподбора указана на рисунке:

![Алгоритм автоподбора](./autofit-neural-network-1.svg)
*Рисунок 1. Алгоритм автоподбора*
