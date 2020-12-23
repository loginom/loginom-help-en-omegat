# ![ ](../../images/icons/components/regressionneuralnet_default.svg) Neural network (regression)

It handles the task of [regression](https://wiki.loginom.ru/articles/regression-line.html): the [*Neural Network*](https://basegroup.ru/deductor/function/algorithm/neuronet) in the output data set will provide the forecast value for one or several variables that depend on the input parameters set.

Перед тем, как производить прогноз, алгоритм обучается на тренировочном наборе данных — обучающей выборке. Each row of such sample contains the following data:

* a set of input parameters in the fields marked as the **input** ones;
* в полях, обозначаемых как **выходные** — соответствующие входным параметрам значения зависимых переменных.

Technically, the training consists in determination of *weights* — coefficients of links between neurons. In the process of training, the neural network enables to detect complex dependences between input and output parameters, and also to perform generalization. Это значит, что в случае успешного обучения *Нейросеть* способна выдать верный результат на основании данных, которые отсутствовали в обучающей выборке, а также на неполных и/или «зашумленных», частично искажённых данных. Quasi-Newton [Broyden — Fletcher — Goldfarb — Shanno method](https://ru.wikipedia.org/wiki/Алгоритм_Бройдена_—_Флетчера_—_Гольдфарба_—_Шанно) is used for training with limited use of L-BFGS memory.

В задаче регрессии (в отличии от [задачи классификации](../../processors/datamining/neural-network-classification.md)) **выходными** могут быть только поля с непрерывным [видом данных](../../data/datatype.md). Data kind of input fields is not regulated.

----

**Note:** One input will be created for each continuous parameter in the *Neural Network* structure, whereas each discrete one will be provided with the inputs the number of which will comply with the number of different unique values of this parameter.

----

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) — **Input data source** (data table).

#### Requirements to the Received Data

The input data set fields that will be used as the **input** or **output** ones, must not contain null values. If this requirement is not met, error message will appear when node activating.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — **Neural network output** (data table). Also refer to [output data set structure](./neural-network-classification/output-set.md).
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) — **Model quality indicators**.

## Wizard

### Step 1. Usage Type of Input Columns

It is required to set the [usage type](../../data/datasetfieldoptions.md) of the input data set fields at the first stage.
It is required to select one of the following usage types for each of the fields:

* ![ ](../../images/icons/usage-types/active_default.svg) **Input**: the field contains the values of one of the input parameters.
* ![ ](../../images/icons/usage-types/predicted_default.svg) **Output**: the field contains the class values.
* ![ ](../../images/icons/usage-types/unspecified_default.svg) **Unused**: the field is not included into processing. It is set for other fields by default.

### Step 2. Configuration of normalization

На этом этапе входные данные приводятся к [нормальному виду](../normalization/README.md) - преобразуются из натуральных значений в безразмерные для того, чтобы данные, имеющие большой разброс значений, не превалировали над данными с меньшим разбросом значений. Usage of [normalization](https://wiki.loginom.ru/articles/normalization.html) increases the quality and speed of the *Neural Network* training.

### Step 3. Partitioning

На этом этапе входные данные можно разделить на [тестовое](https://wiki.loginom.ru/articles/test-set.html), [обучающее](https://wiki.loginom.ru/articles/training-set.html) и [валидационное](https://wiki.loginom.ru/articles/validation-set.html) множества (выборки).

#### Partition method

* Случайный - данные для тестового и обучающего множеств формируется из всего объема входных данных в случайном порядке и случайной пропорции.

* Последовательный - соотношение данных для тестового и обучающего множеств задается вручную. При этом есть возможность выбрать очередность, по которой сперва выбираются данные для тестового множества, потом для обучающего, или наоборот.

#### Validation Method

* No validation: [validation](../validation.md) of the Neural Network training is not performed.

* K-fold [кросс-валидация](https://wiki.loginom.ru/articles/cross-validation.html) - входные данные разбиваются на К колод (частей). Нейросеть обучается на основе всех колод кроме одной, которая  используется для валидации. Обучение повторяется K раз, при этом на каждой итерации для валидации используется новая колода.

* [Монте-Карло](https://wiki.loginom.ru/articles/monte-carlo-technique.html) - входные данные случайным образом разделяются на обучающее и валидационное множество в соответствии с заданной пропорцией. Обучение повторяется в соответствии с заданным количеством итераций ресемплинга, при этом для каждой итерации формируется новое валидационное множество (ресемпл).

### Step 4. Configure Neural Network Parameters

#### Neural Network Structure

* Number of hidden layers is selected from the list:
   * No hidden layers.
   * One hidden layer (used by default).
   * Two hidden layers.
* Number of neurons in the first hidden layer — integer >= 1 (by default = 10).
* Number of neurons in the second hidden layer — integer >= 1 (by default = 10).

#### Output Value Limit

Тип ограничения определяет форму [активационной функции](https://wiki.loginom.ru/articles/activation-function.html) выходного слоя Нейросети:

* No - linear.
* Интервал — гиперболический тангенс.
* Только снизу — усеченная снизу экспонента.
* Только сверху — усеченная сверху экспонента.

Также возможно задать верхнюю и нижнюю границу ограничения формы активационной функции. Как правило, этот параметр напрямую коррелирует от параметра нормализации входных данных.

#### Training Parameters

* Количество рестартов — число попыток обучения *Нейросети* (на одном и том же наборе), выполняемых из случайных начальных значений весов сети. Upon completion of all restarts, it is required to select the network that provides the least root-mean-square error of the training set. Должно быть целым числом >= 1 (по умолчанию = 10).
* Степень регуляризации — степень зависимости весов сети друг от друга. The higher this dependence, the stronger impact exerts one input parameter on the other ones. The decay enables to decrease the effective number of the model degrees of freedom, thereby avoiding overfitting. The following options are available:
   * None (0).
   * Very weak (20).
   * Weak (40).
   * Mean (60).
   * Strong (80).
   * Very strong (100).
* Продолжить обучение — установление данного флага позволяет начать переобучение модели не со случайных значений весов Нейросети, а с полученных при последнем обучении. In this case, the "Number of restarts" parameter is ignored.

#### Stop Criteria

The network is trained in the iterative manner. При каждой итерации считывается весь обучающий набор данных и изменяются веса *Нейросети*. This process continues until the relative weights changes are less than the set threshold, or iteration count exceeds the set value.

* Порог минимального изменения весов — если на очередном шаге обучения относительное изменение нормы вектора весов становится меньше порога, то обучение останавливается. By default = 0.01.
* Максимальное количество эпох — максимальное количество итераций обучения алгоритма. This parameter is disabled by default. If it is required to limit the training process in time, in this case, it will stop upon the set number of epochs even if the training has not reached the optimal point, namely, the minimum weight change threshold has not been reached yet.

### Step 3. Configure Auto Selection of Neural Network Parameters

Three structure related parameters can be selected for the neural network:

* Number of hidden layers (0, 1 or 2);
* Number of neurons in each hidden layer;
* Decay degree enables to adjust the model stiffness.

#### Common Parameters

* **Structure autofit** provides the auto selection of the Neural Network structure:
   * **Start with the specified structure**: usage of the values set on the page of the Neural Network parameters configuration as the initial parameters (refer to Step 2).
* **Decay degree autofit** provides the auto selection of the Neural Network decay degree.
   * **Start with the specified decay degree**: usage of the value set on the page of the Neural Network parameters configuration as the initial *Decay degree*.

> **Note:** if it is required to select parameters for the large input volumes or complex models, it is possible to enable only the structure selection, or only decay degree reducing the time spent on training.

#### Sampling Parameters

To speed up the autofit process, it is required to set the subsample in which it will be performed:

* **Use a subset of the training set** enables to use a subsample of the [training set](https://wiki.loginom.ru/articles/training-set.html) for autofit.
   * **Percent sample size** means the size of the training set subsample.
   * **Maximum sample size** means the maximum size of the training set subsample.

#### Auto Stop Criteria

The auto selection process stops by default if it is not possible to find better parameters as compared with the detected ones. To limit the operation time, at the same time it is possible to limit also the number of autofit stages and autofit time.

* **Autofit stages not more** means the maximum number of the algorithm steps (0 — restrictions are disabled);
* **Autofit time not more (s)** means the maximum algorithm operation time (0 — restriction is disabled).

> **Note:** In the course of the work it is required to take into account that practically both restrictions can be insignificantly exceeded when using subsample for autofit, as the best full set Neural Network will be trained at the last unrestricted stage.

The optimizer is stopped in some specific cases if, from a theoretical standpoint, the best result is reached. It is the root-mean-square error of the training set equal to 0 both for regression networks, and for the classifier.

By default, *Stop at zero classification error* is also enabled for the classifier:

* **Stop at zero classification error** enables to stop autofit when reaching zero classification error.

> **Примечание:** опцию *Останов при нулевой ошибки классификации* можно отключить,
> т.к. правильная классификация всех примеров не всегда означает наилучшую структуру Нейросети: оптимизатору можно дать возможность подобрать сеть с лучшей обобщающей способностью (например, с меньшим числом нейронов или сильнее регуляризованную), но при этом не обязательно с нулевой ошибкой классификации.

#### Optimization Strategy

The root-mean-square error of the training set is a target function for the optimizer. При этом для учета случаев, когда несколько сетей показывают сравнимые по точности результаты, в целях выбора сети с самой простой структурой значение целевой функции дополнительно штрафуется на слабо отличающийся от единицы множитель (1+1e-8) за каждый скрытый нейрон.

The following optimization strategy is used:

* If it is required to select only the decay degree for the set structure:
   1. Если начальная точка не задана, то степень регуляризации подбирается методом "золотого сечения", в противном случае - методом "схождения к вершине".
* If it is required to select only the structure without changing the decay degree.
   1. Если не задана начальная структура, то она подбирается в два этапа: сначала происходит выбор количества скрытых слоев (0, 1 или 2), затем, если результат предыдущего этапа не 0, грубо подбирается размер скрытых слоев методом "золотого сечения", причем для 2 скрытых слоев количество нейронов на данном этапе делается одинаковым;
   2. Структура подбирается сразу по всем трем параметрам (число слоев, число нейронов) методом "схождения к вершине" из заданной либо подобранной начальной точки.
* If autofit of structure and decay is required:
   1. The structure is selected as in the previous clause. При этом, если начальное значение регуляризации задано, то используется оно, в противном случае регуляризация отключена.
   2. Если начальное значение регуляризации не было задано, оно подбирается методом "золотого сечения".
   3. Финальный этап автоподбора производится методом "схождения к вершине" по всем четырем параметрам.

Блок-схема (граф переходов) реализованной стратегии автоподбора указана на рисунке ниже.

![Auto Selection Algorithm](./autofit-neural-network-1.svg)