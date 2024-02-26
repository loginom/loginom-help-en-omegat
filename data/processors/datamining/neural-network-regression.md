---
description: Компонент Нейросеть (регрессия) в Loginom. Решение задачи регрессии. Обучающая выборка. Зависимая переменная. Нахождение весов. Метод Бройдена-Флетчера-Гольдфарба-Шанно. K-fold кросс-валидация. Монте-Карло.
---
# ![ ](./../../images/icons/components/regressionneuralnet_default.svg) Neural Network (Regression)

It handles the task of [regression](https://wiki.loginom.ru/articles/regression-line.html): in the *Neural Network* output data set it will provide the predicted variable value dependent on a set of input parameters.

Before forecasting, it is required to train the algorithm using the training data set, namely, the [training sample](https://wiki.loginom.ru/articles/training-set.html). Each row of such sample contains the following data:

* a set of input parameters in the fields marked as the *input* ones;
* in the field marked as the *output* one — matching the input parameters of the [dependent variable](https://wiki.loginom.ru/articles/output-variable.html) value.

Technically, the training consists in determination of *weights* — coefficients of links between neurons. In the process of training, the neural network enables to detect complex dependences between input and output parameters, and also to perform generalization. It means that on condition of the successful training, the *Neural Network* can return the correct result based on the data that was absent in the training sample, and also incomplete and/or "noisy", partially distorted data. The Quasi-Newton [Broyden — Fletcher — Goldfarb — Shanno method](https://ru.wikipedia.org/wiki/Алгоритм_Бройдена_—_Флетчера_—_Гольдфарба_—_Шанно) is used for training with limited use of L-BFGS memory.

Only the fields with continuous [data kind](./../../data/datakind.md) can be the *output* ones in the regression task (as opposed to the [classification task](./../../processors/datamining/neural-network-classification.md)). Data kind of *input* fields is not regulated.

> **Note:** One input will be created for each continuous parameter in the *Neural Network* structure, whereas each discrete one will be provided with the inputs the number of which will comply with the number of different unique values of this parameter.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

#### Requirements to the Received Data

The input data set fields that will be used as the *input* or *output* ones, must not contain null values. If this requirement is not met, error message will appear when node activating.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Neural network output (data table): the field with predicted value Field_name|Forecast is added to the input data set.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) [Summary](./neural-network-regression/report.md) (variables) – model quality indicators.

## Wizard

### Step 1. Configure input columns

It is required to set the [usage type](./../../data/datasetfieldfeatures.md) of the input data set fields at the first stage.
It is required to select one of the following usage types for each of the fields:

* ![ ](./../../images/icons/common/usage-types/active_default.svg) **Input**: the field contains the values of one of the input parameters.
* ![ ](./../../images/icons/common/usage-types/predicted_default.svg) **Output**: the field contains the target values. Only one data set field must be set as the output one.
* ![ ](./../../images/icons/common/usage-types/unspecified_default.svg) **Not defined**: the field is not included into processing. It is set for other fields by default.

### Step 2. Configuration of Normalization

At this stage, the input data is set to defined ranges according to the selected [normalization](./../normalization/README.md) algorythm. Normalization use increases the quality and speed of the *Neural Network* training.

### Step 3. Partitioning

At this stage, the input data can be divided into the [training](https://wiki.loginom.ru/articles/training-set.html) and [test](https://wiki.loginom.ru/articles/test-set.html) and sets (samples).

#### Partition Method

* **Random**: the data for the test and training sets is formed from the whole volume of the input data in random order and proportion.
* **Consequent**: data ratio for the test and training sets is customized. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
* **By column**: partitioning to training and test sets is set using the parameter. Parameter is a column with the logical data type where &laquo;TRUE&raquo; value indicates that the record relates to the test set, and &laquo;FALSE&raquo; value indicates that the record relates to the training set (namely, it is possible to partition the set to training and test sets in the [Partitioning](../preprocessing/partitioning.md) node, and submit data from *Common output data set* port to the input of the *Neural network (regression)* node having selected the "Test set" column as partitioning by column parameter). When selecting this method, the training and test set correlation selection table becomes inactive.

#### Validation Method

* No validation: [validation](./../validation.md) of the *Neural Network* training is not performed.
* [K-fold cross validation](https://wiki.loginom.ru/articles/cross-validation.html): the input data is divided into *К* folds (parts). The *Neural Network* is trained on the basis of all folds, with the exception of one that is used for validation. The training process is repeated *K* times, and a new fold is used for the validation purposes for each iteration.
* [Monte Carlo](https://wiki.loginom.ru/articles/monte-carlo-technique.html): the input data is randomly divided into the training and validation set according to the set proportion. The training process is repeated according to the set *Count of resampling iterations*, and a new validation set (resample) is generated for each iteration.

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

The limit type defines the form of [activation function](https://wiki.loginom.ru/articles/activation-function.html) of the output *Neural Network* layer:

* **No** — linear.
* **Interval** — hyperbolic tangent.
* **Bottom only** — exponent truncated from below.
* **Top only** — exponent truncated from above.

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
* **Continue training**:  selection of this checkbox enables to start the model overfitting not from the random values of the * Neural Network* weights, but from the ones obtained during the last training. In this case, the *Number of restarts* parameter is ignored.

#### Stop Criteria

The network is trained in the iterative manner. The whole training data set is read for each iteration, and the *Neural Network* weights are changed. This process continues until the relative weights changes are less than the set threshold, or iteration count exceeds the set value.

* **Minimum weight change threshold**: if the relative change of the weights vector norm is less than the threshold at another training step, the training stops. By default = 0.01.
* **Maximum number of epochs** means the maximum count of the algorithm training iterations. This parameter is disabled by default. If it is required to limit the training process in time, in this case, it will be stopped upon the set number of epochs even if the training has not reached the optimal point, namely, the minimum weight change threshold has not been reached yet.

### Step 5. Configure Auto Selection of Neural Network Parameters

Three structure related parameters can be selected for the *Neural Network*:

* Number of hidden layers (0, 1 or 2).
* Number of neurons in each hidden layer.
* **Decay degree** enables to adjust the model stiffness.

#### Common Parameters

* **Structure autofit** provides the auto selection of the * Neural Тetwork* structure:
   * **Start with the specified structure**: usage of the values set on the page of the *Neural Network* parameters configuration as the initial parameters.
* **Decay degree autofit** provides the auto selection of the *Neural Network* decay degree:
   * **Start with the specified decay degree**: usage of the value as the initial *Decay degree* that is set on the page of the *Neural Network* parameters configuration.

> **Note:** If it is required to select parameters for the large input volumes or complex models, it is possible to enable only the structure selection, or only decay degree reducing the time spent on training.

#### Sampling Parameters

To speed up the autofit process, it is required to set the subsample in which it will be performed:

* **Use a subset of the training set** enables to use a subsample of the [training set](https://wiki.loginom.ru/articles/training-set.html) for autofit.
   * **Percent sample size**: the size of the training set subsample.
   * **Maximum sample size**: the maximum size of the training set subsample.

#### Auto Stop Criteria

The auto selection process is stopped by default if it is not possible to find better parameters as compared with the detected ones. To limit the operation time, at the same time it is possible to limit also the number of autofit stages and autofit time:

* **Autofit stages not more**: the maximum number of the algorithm steps (0 — restrictions are disabled).
* **Autofit time not more (s)**: the maximum algorithm operation time (0 — restriction is disabled).

> **Note:** In the course of the work it is required to take into account that practically both restrictions can be insignificantly exceeded when using subsample for autofit, as the best full set *Neural Network* will be trained at the last unrestricted stage.

#### Optimization Strategy

The root-mean-square error of the training set is a target function for the optimizer. Under these circumstances, to take into account the cases when several networks provide the results comparable in accuracy, in order to select the network with the simplest structure, the target function value is additionally fined by the multiplier (1+1e-8) slightly different from 1 for each hidden neuron.

The following optimization strategy is used:

* If it is required to select only the decay degree for the set structure:
   * If the starting point is not set, the decay degree is selected using the *golden section search* method, otherwise, the *hill climbing* method is used.
* If it is required to select only the structure without changing the decay degree:
   * If the initial structure is not set, it is selected in two stages. First, the number of hidden layers is selected (0, 1 or 2), then, the size of hidden layers is approximately selected using the *golden section search* method if the previous stage result is not equal to 0. In this case, the number of neurons for 2 hidden layers becomes the same at this stage.
   * The structure is selected for all three parameters at once (number of layers, number of neurons) using the *hill climbing* method from the set or selected starting point.
* If autofit of structure and decay is required:
   * The structure is selected as in the previous clause.  In this case, if the initial decay value is set, it can be used, otherwise, the decay option is disabled.
   * If the initial decay value is not set, it is selected using the *golden section search* method.
   * The final autofit stage is implemented using the *hill climbing* method for all four parameters.

The flowgraph (transition graph) of the implemented autofit strategy is shown on the figure below.

![Auto Selection Algorithm](./autofit-neural-network-1.svg)