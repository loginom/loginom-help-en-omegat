---
description: Компонент Нейросеть (регрессия) в Loginom. Решение задачи регрессии. Обучающая выборка. Зависимая переменная. Нахождение весов. Метод Бройдена-Флетчера-Гольдфарба-Шанно. K-fold кросс-валидация. Монте-Карло.
---
# ![ ](./../../images/icons/components/regressionneuralnet_default.svg) Neural Network (Regression)

Решает задачу [регрессии](https://wiki.loginom.ru/articles/regression-line.html) — в выходном наборе *Нейросеть* выдаст прогнозируемое значение переменной, зависимое от множества входных параметров.

Перед тем, как производить прогноз, алгоритм обучается на тренировочном наборе данных — [обучающей выборке](https://wiki.loginom.ru/articles/training-set.html). Each row of such sample contains the following data:

* в полях, обозначенных как *входные* — множество входных параметров;
* в поле, обозначенном как *выходное* — соответствующее входным параметрам значение [зависимой переменной](https://wiki.loginom.ru/articles/output-variable.html).

Technically, the training consists in determination of *weights* — coefficients of links between neurons. In the process of training, the neural network enables to detect complex dependences between input and output parameters, and also to perform generalization. It means that on condition of the successful training, the *Neural Network* can return the correct result based on the data that was absent in the training sample, and also incomplete and/or "noisy", partially distorted data. The Quasi-Newton [Broyden — Fletcher — Goldfarb — Shanno method](https://ru.wikipedia.org/wiki/Алгоритм_Бройдена_—_Флетчера_—_Гольдфарба_—_Шанно) is used for training with limited use of L-BFGS memory.

Only the fields with continuous [data kind](./../../data/datakind.md) can be the *output* ones in the regression task (as opposed to the [classification task](./../../processors/datamining/neural-network-classification.md)). Вид данных *входных* полей не регламентируется.

> **Примечание:** для каждого непрерывного параметра в структуре *Нейросети* будет создан один вход, в то время, как для каждого дискретного – столько входов, сколько у данного параметра имеется различных уникальных значений.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

#### Requirements to the Received Data

The input data set fields that will be used as the *input* or *output* ones, must not contain null values. If this requirement is not met, error message will appear when node activating.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Выход нейросети (таблица данных) – к входному набору данных добавляется поле с прогнозируемым значением Имя_поля|Прогноз.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) [Сводка](./neural-network-regression/report.md) (переменные) – показатели качества модели.

## Wizard

### Step 1. Configure input columns

It is required to set the [usage type](./../../data/datasetfieldfeatures.md) of the input data set fields at the first stage.
It is required to select one of the following usage types for each of the fields:

* ![ ](./../../images/icons/common/usage-types/active_default.svg) **Input**: the field contains the values of one of the input parameters.
* ![ ](./../../images/icons/common/usage-types/predicted_default.svg) **Выходное** — поле содержит целевые значения. В качестве выходного должно быть задано только одно поле набора данных.
* ![ ](./../../images/icons/common/usage-types/unspecified_default.svg) **Not defined**: the field is not included into processing. It is set for other fields by default.

### Step 2. Configuration of Normalization

На этом этапе входные данные приводятся к определенным диапазонам в соответствии с выбранным алгоритмом [нормализации](./../normalization/README.md). Использование нормализации увеличивает качество и скорость обучения *Нейросети*.

### Step 3. Partitioning

На этом этапе входные данные можно разделить на [обучающее](https://wiki.loginom.ru/articles/training-set.html) и [тестовое](https://wiki.loginom.ru/articles/test-set.html)  и множества (выборки).

#### Partition Method

* **Случайный** — данные для тестового и обучающего множеств формируется из всего объема входных данных в случайном порядке и случайной пропорции.
* **Последовательный** — соотношение данных для тестового и обучающего множеств задается вручную. Порядок множеств можно менять (кнопки *Сдвинуть вверх*, *Сдвинуть вниз*).
* **By column**: partitioning to training and test sets is set using the parameter. Parameter is a column with the logical data type where &laquo;TRUE&raquo; value indicates that the record relates to the test set, and &laquo;FALSE&raquo; value indicates that the record relates to the training set (namely, it is possible to partition the set to training and test sets in the [Partitioning](../preprocessing/partitioning.md) node, and submit data from *Common output data set* port to the input of the *Neural network (regression)* node having selected the "Test set" column as partitioning by column parameter). When selecting this method, the training and test set correlation selection table becomes inactive.

#### Validation Method

* Без валидации — [валидация](./../validation.md) обучения *Нейросети* не производится.
* [K-fold кросс-валидация](https://wiki.loginom.ru/articles/cross-validation.html) — входные данные разбиваются на *К* колод (частей). *Нейросеть* обучается на основе всех колод кроме одной, которая  используется для валидации. Обучение повторяется *K* раз, при этом на каждой итерации для валидации используется новая колода.
* [Монте-Карло](https://wiki.loginom.ru/articles/monte-carlo-technique.html) — входные данные случайным образом разделяются на обучающее и валидационное множество в соответствии с заданной пропорцией. Обучение повторяется в соответствии с заданным *Количеством итераций ресемплинга*, при этом для каждой итерации формируется новое валидационное множество (ресемпл).

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

#### Output Value Limit

Тип ограничения определяет форму [активационной функции](https://wiki.loginom.ru/articles/activation-function.html) выходного слоя *Нейросети*:

* **Нет** — линейная.
* **Интервал** — гиперболический тангенс.
* **Только снизу** — усеченная снизу экспонента.
* **Только сверху** — усеченная сверху экспонента.

It is also possible to set the upper and lower bounds of the activation function form limit. As a rule, this parameter directly correlates with the normalization parameter of the input data.

#### Training Parameters

* **Number of restarts**: number of attempts of the *Neural Network* training (using one and the same set) based on the random initial values of the neural network weights. Upon completion of all restarts, it is required to select the network that provides the least root-mean-square error of the training set. It must be integer>= 1 (by default = 10).
* **Decay degree**: the degree of the network weights dependence from each other. The higher this dependence, the stronger impact exerts one input parameter on the other ones. The decay enables to decrease the effective number of the model degrees of freedom, thereby avoiding overfitting. The following options are available:
   * None (0).
   * Very weak (20).
   * Weak (40).
   * Mean (60).
   * Strong (80).
   * Very strong (100).
* **Продолжить обучение** — установление данного флага позволяет начать переобучение модели не со случайных значений весов *Нейросети*, а с полученных при последнем обучении. При этом параметр *Количество рестартов* игнорируется.

#### Stop Criteria

The network is trained in the iterative manner. The whole training data set is read for each iteration, and the *Neural Network* weights are changed. Этот процесс продолжается до тех пор, пока относительные изменения весов не станут меньше заданного порога или количество итераций не превысит заданной величины.

* **Порог минимального изменения весов** — если на очередном шаге обучения относительное изменение нормы вектора весов становится меньше порога, то обучение останавливается. By default = 0.01.
* **Максимальное количество эпох** — максимальное количество итераций обучения алгоритма. This parameter is disabled by default. If it is required to limit the training process in time, in this case, it will be stopped upon the set number of epochs even if the training has not reached the optimal point, namely, the minimum weight change threshold has not been reached yet.

### Шаг 5. Configure Auto Selection of Neural Network Parameters

*Нейросеть* имеет три подбираемых параметра, относящихся к структуре:

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

* **Use a subset of the training set** enables to use a subsample of the [training set](https://wiki.loginom.ru/articles/training-set.html) for autofit.
   * **Percent sample size**: the size of the training set subsample.
   * **Maximum sample size**: the maximum size of the training set subsample.

#### Auto Stop Criteria

The auto selection process is stopped by default if it is not possible to find better parameters as compared with the detected ones. Для ограничения времени работы предусмотрена возможность ограничить, в том числе одновременно количество шагов автоподбора и время автоподбора:

* **Autofit stages not more**: the maximum number of the algorithm steps (0 — restrictions are disabled).
* **Autofit time not more (s)**: the maximum algorithm operation time (0 — restriction is disabled).

> **Примечание:** при работе следует учитывать, что фактически оба ограничения могут быть незначительно превышены при использовании подвыборки для автоподбора, так как последним этапом, который не учитывается ограничениями, будет осуществлено обучение лучшей *Нейросети* на полном наборе.

#### Optimization Strategy

The root-mean-square error of the training set is a target function for the optimizer. Under these circumstances, to take into account the cases when several networks provide the results comparable in accuracy, in order to select the network with the simplest structure, the target function value is additionally fined by the multiplier (1+1e-8) slightly different from 1 for each hidden neuron.

The following optimization strategy is used:

* If it is required to select only the decay degree for the set structure:
   * Если начальная точка не задана, то степень регуляризации подбирается методом *золотого сечения*, в противном случае — методом *схождения к вершине*.
* Если необходимо подобрать только структуру, не изменяя степень регуляризации:
   * Если не задана начальная структура, то она подбирается в два этапа: сначала происходит выбор количества скрытых слоев (0, 1 или 2), затем, если результат предыдущего этапа не 0, грубо подбирается размер скрытых слоев методом *золотого сечения*, причем для 2 скрытых слоев количество нейронов на данном этапе делается одинаковым;
   * Структура подбирается сразу по всем трем параметрам (число слоев, число нейронов) методом *схождения к вершине* из заданной, либо подобранной начальной точки.
* If autofit of structure and decay is required:
   * The structure is selected as in the previous clause. При этом, если начальное значение регуляризации задано, то используется оно, в противном случае — регуляризация отключена.
   * Если начальное значение регуляризации не было задано, оно подбирается методом *золотого сечения*.
   * Финальный этап автоподбора производится методом *схождения к вершине* по всем четырем параметрам.

The flowgraph (transition graph) of the implemented autofit strategy is shown on the figure below.

![Auto Selection Algorithm](./autofit-neural-network-1.svg)