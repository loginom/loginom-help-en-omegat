# ![ ](../../images/icons/components/classifierneuralnet_default.svg) Neural Network (Classification)

It handles the task of [classification](https://wiki.loginom.ru/articles/classification.html): the [neural network](https://basegroup.ru/deductor/function/algorithm/neuronet) in the output data set correlates a set of input parameters (independent variables) with one of the classes known in advance:

**{** P(1), P(2), P(3) ... P(n) **}** => Class(i) where P(n) — input parameter, Class(i) — one of the classes known in advance.

Before classification, it is required to train the algorithm using the training data set, namely, the training sample. Each row of such sample contains the following data:

* a set of input parameters in the fields marked as the **input** ones;
* class identification mapping this set in the only **output** field.

Thus, the list of classes is set by the training data set in the process of the neural network training, and it cannot be changed/reconsidered in the classification process.

Technically, the training consists in determination of *weights — coefficients of links between neurons*. In the process of training, the neural network enables to detect complex dependences between input and output parameters, and also to perform generalization. It means that on condition of the successful training, the network can return the correct result based on the data that was absent in the training sample, and also incomplete and/or "noisy", partially distorted data. Quasi-Newton [Broyden — Fletcher — Goldfarb — Shanno method](https://ru.wikipedia.org/wiki/Алгоритм_Бройдена_—_Флетчера_—_Гольдфарба_—_Шанно) is used for training with limited use of L-BFGS memory.

Only the field with discrete [data kind](../../data/datatype.md) can be the **output** one in the classification task (as opposed to the [regression task](../../processors/datamining/neural-network-regression.md)). Data kind of input fields are not regulated, they can be both continuous and discrete.

----

**Note:** One input will be created for each continuous parameter in the neural network structure, whereas each discrete one will be provided with the inputs the number of which will comply with the number of different unique values of this parameter.

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

### Step 2. Configure Neural Network Parameters

#### Neural Network Structure

* Number of hidden layers is selected from the list:
   * No hidden layers;
   * One hidden layer (used by default);
   * Two hidden layers.
* Number of neurons in the first hidden layer — integer >= 1 (by default = 10);
* Number of neurons in the second hidden layer — integer >= 1 (by default = 10).

#### Training Parameters

* Number of restarts: number of attempts of the neural network training (using one and the same set) based on the random initial values of the neural network weights. Upon completion of all restarts, it is required to select the network that provides the least root-mean-square error of the training set. Integer >= 1 (by default = 10);
* Decay parameter means the degree of the network weights dependence from each other. The higher this dependence, the stronger impact exerts one input parameter on the other ones. The decay enables to decrease the effective number of the model degrees of freedom, thereby avoiding overfitting. The following options are available:
   * None (0);
   * Very weak (0.00001);
   * Weak (0.001). It is used by default.
   * Mean (0.1);
   * Strong (100);
   * Very strong (10000).
* Continue training: selection of this flag enables to start the model overfitting not from the random values of the neural network weights, but from the ones obtained during the last training. In this case, the "Number of restarts" parameter is ignored.

#### Stop Criteria

The network is trained in the iterative manner. При каждой итерации считывается весь обучающий набор данных и изменяются веса нейросети. Этот процесс продолжается пока относительные изменения весов не станут меньше заданного порога или количество итераций не превысит заданной величины.

* Порог минимального изменения весов - если на очередном шаге обучения относительное изменение нормы вектора весов становится меньше порога, то обучение останавливается. By default = 0.01;
* Максимальное количество эпох - максимальное количество итераций обучения алгоритма. Этот параметр по умолчанию отключен. Если процесс обучения необходимо ограничить по времени, в этом случае он остановится после заданного количества эпох, даже если обучение еще не пришло к оптимальной точке, т.е. не достигнут порог минимального изменения весов.

### Step 3. Configure Auto Selection of Neural Network Parameters

Three structure related parameters can be selected for the neural network:

* Number of hidden layers (0, 1 or 2);
* Number of neurons in each hidden layer;
* Decay degree enables to adjust the model stiffness.

#### Common Parameters

* **Structure autofit** provides the auto selection of the Neural Network structure:
   * **Начать с указанной структуры** — использование в качестве начальных параметров значений, заданных на странице настройки параметров Нейросети (см. Step 2).
* **Подобрать степень регуляризации** — автоматический подбор степени регуляризации Нейросети:
   * **Начать с указанной степени регуляризации** — использование в качестве начальной *Степени регуляризации* значения, заданного на странице настройки параметров Нейросети.

> **Примечание:** если необходимо осуществлять подбор параметров для больших входных объемов или сложных моделей, можно включить только подбор структуры либо только степени регуляризации, сократив время на обучение.

#### Sampling Parameters

Для ускорения процесса автоподбора предусмотрено задание подвыборки, на которой он будет производиться:

* **Использовать подмножество обучающего набора** — использование подвыборки [обучающего множества](https://wiki.loginom.ru/articles/training-set.html) для автоподбора;
   * **Percent sample size** means the size of the training set subsample.
   * **Maximum sample size** means the maximum size of the training set subsample.

#### Auto Stop Criteria

По умолчанию процесс автоматического подбора останавливается при невозможности найти лучшие параметры, чем уже найденные. Для ограничения времени работы предусмотрена возможность ограничить, в том числе одновременно: количество шагов автоподбора и время автоподбора.

* **Autofit stages not more** means the maximum number of the algorithm steps (0 — restrictions are disabled);
* **Время автоподбора не более (сек.)** — максимальное время работы алгоритма (0 — отключение ограничения).

> **Примечание:** при работе следует учитывать, что фактически оба ограничения могут быть незначительно превышены при использовании подвыборки для автоподбора, так как последним этапом, который не учитывается ограничениями, будет осуществлено обучение лучшей Нейросети на полном наборе.

Отдельный случай останова оптимизатора — если достигнут теоретически наилучший результат. Как для регрессионных сетей, так и для классификатора это равная 0 среднеквадратическая ошибка на обучающем множестве.

Для классификатора также по умолчанию включен *Останов при нулевой ошибки классификации*:

* **Останов при нулевой ошибки классификации** — прекращение автоподбора при достижении нулевой ошибки классификации.

> **Примечание:** опцию *Останов при нулевой ошибки классификации* можно отключить,
> т.к. правильная классификация всех примеров не всегда означает наилучшую структуру Нейросети: оптимизатору можно дать возможность подобрать сеть с лучшей обобщающей способностью (например, с меньшим числом нейронов или сильнее регуляризованную), но при этом не обязательно с нулевой ошибкой классификации.

#### Стратегия оптимизации

Целевой функцией для оптимизатора является среднеквадратическая ошибка на обучающем наборе. При этом для учета случаев, когда несколько сетей показывают сравнимые по точности результаты, в целях выбора сети с самой простой структурой значение целевой функции дополнительно штрафуется на слабо отличающийся от единицы множитель (1+1e-8) за каждый скрытый нейрон.

Стратегия оптимизации следующая:

* Если необходимо подобрать только степень регуляризации для заданной структуры:
   1. Если начальная точка не задана, то степень регуляризации подбирается методом "золотого сечения", в противном случае - методом "схождения к вершине".
* Если необходимо подобрать только структуру, не изменяя степень регуляризации
   1. Если не задана начальная структура, то она подбирается в два этапа: сначала происходит выбор количества скрытых слоев (0, 1 или 2), затем, если результат предыдущего этапа не 0, грубо подбирается размер скрытых слоев методом "золотого сечения", причем для 2 скрытых слоев количество нейронов на данном этапе делается одинаковым;
   2. Структура подбирается сразу по всем трем параметрам (число слоев, число нейронов) методом "схождения к вершине" из заданной либо подобранной начальной точки.
* Если необходим автоподбор структуры и регуляризации:
   1. Подбирается структура так же, как и в предыдущем пункте. При этом, если начальное значение регуляризации задано, то используется оно, в противном случае регуляризация отключена.
   2. Если начальное значение регуляризации не было задано, оно подбирается методом "золотого сечения".
   3. Финальный этап автоподбора производится методом "схождения к вершине" по всем четырем параметрам.

Блок-схема (граф переходов) реализованной стратегии автоподбора указана на рисунке ниже.

![Auto Selection Algorithm](./autofit-neural-network-1.svg)