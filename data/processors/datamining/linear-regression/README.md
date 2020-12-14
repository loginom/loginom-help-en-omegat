# ![](../../../images/icons/components/linear-regress_default.svg) Linear Regression

## Description

[Linear regression](https://wiki.loginom.ru/articles/linear-regression.html) is a model of dependence between [input](https://wiki.loginom.ru/articles/input-variable.html) and [output variables](https://wiki.loginom.ru/articles/output-variable.html) with the linear link function.

Linear regression is one of the most frequently used algorithms in [machine learning](https://wiki.loginom.ru/articles/machine-learning.html). This algorithm frequently produces good results even for small data sets.

Wide use of linear regression is explained by the fact that many real processes in science, econimics and business can be described in terms of linear models. For example, linear regression enables to estimate anticipated sales volume depending on the established price.

The handler can be used to accomplish different [Data Mining](https://wiki.loginom.ru/articles/data-mining.html?q=) tasks, for example, such as [forecasting](https://wiki.loginom.ru/articles/forecasting.html) and numerical prediction.

To get resulting data sets, it is required to provide preliminary [training of the handler](../../../scenario/training-processors.md).

> **Important:** Input data must never contain missing values, output data must not contain missing values during training.

## Ports

### Input

* ![](../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Input data source (data table) — required port.
* ![](../../../images/icons/app/node/ports/inputs/variable_inactive.svg) —  [Control variables](../../../scenario/variables/control-variables.md) (variables) — optional port. It is possible to set values of wizard parameters using variables.

### Outputs
* ![](../../../images/icons/app/node/ports/outputs/table_inactive.svg) — Regression output is a table that consists of the following fields: field regression of output data, source data set.
* ![](../../../images/icons/app/node/ports/outputs/table_inactive.svg) — [Regression model coefficients](./coef-regression.md) denote a data table.
* ![](../../../images/icons/app/node/ports/outputs/variable_inactive.svg) — [Summary](./report.md) denotes variables.

## Node wizard

The wizard includes the following groups of parameters:

* [Normalization](../../normalization/README.md) Settings;
* [Partitioning](#razbienie-na-mnozhestva);
* [Linear regression configuring](#nastroyka-lineynoy-regressii);
* [Detailed settings](#detalnye-nastroyki).

### Partitioning

The *Partitioning* page of the wizard enables to divide a set into the training and test ones:
* [Train](https://wiki.loginom.ru/articles/training-set.html) denotes the structured data set used for training of [analytical models](https://wiki.loginom.ru/articles/taught-model.html). Each record of the training set is a training example with the set input effect and correct output (target) result that corresponds to it.
* [Test](https://wiki.loginom.ru/articles/test-set.html) denotes the training sample subset that contains test examples, namely, the examples used not to train the model but to check its results.

Available Parameters:
* Size of training and test set in percentage terms or in rows. It can be set by means of variables.
* Method of partition to training and test sets. There are two partition methods:
   * Random method provides partitioning of records set to training and test sets.
   * Последовательный — группы строк множеств (обучающее, неиспользуемое, тестовое) выбираются последовательно, т.е. сначала выбираются те записи, которые входят в первое множество, затем — во второе и т.д. Порядок множеств можно менять (кнопки *Сдвинуть вверх*, *Сдвинуть вниз*).
* Метод [валидации](../../validation.md), который может принимать   следующие значения:
   * Без  валидации.
   * [K-fold кросс-валидация](https://wiki.loginom.ru/articles/cross-validation.html) — позволяет выбрать *Метод [сэмплинга](https://wiki.loginom.ru/articles/sampling.html)* и количество *Колод кросс-валидации*.
   * [Монте-Карло](https://wiki.loginom.ru/articles/monte-carlo-technique.html?q=) — позволяет выбрать *Количество итераций ресемплинга* и задать размер обучающего и [валидационного множества](https://wiki.loginom.ru/articles/validation-set.html).

### Настройка линейной регрессии

Набор параметров для настройки линейной регрессии можно сгруппировать в следующие блоки:

#### Настройка метода

* Автоматическая настройка:
   * Значение логического типа. Enabled by default.
   * Влияет на использование следующих блоков параметров: если включена, то можно настраивать блок *Приоритет автоматической настройки*, если выключена, то можно выбирать алгоритм отбора [факторов](https://wiki.loginom.ru/articles/factor.html) и защиту от переобучения и настраивать приоритеты.
* Приоритет автоматической настройки:
   * Влияет на выбор конкретного метода и его настроек по шкале Точность — Скорость.
   * Integer type. It can take the following values:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.
* **Денормализировать коэффициенты модели** — денормализация необходима для интерпретации результатов. Т.к. модель может работать только с нормализированными данными, то для ее работы необходимо сначала нормализовать данные, которые поступили в модель, а затем провести денормализацию для того, чтобы данные приняли вид, который был до нормализации. Является значением логического типа, по умолчанию включено.

#### Configure Parameters

Используется, если не выбран флаг *Автоматическая настройка* или же он задан с помощью переменной.

* **Отбор факторов и защита от переобучения** — значение перечисления:
   * **Принудительное включение (Enter)** — включение в регрессионную модель всех заданных признаков независимо от того, оказывают ли они значимое влияние или нет.
   * **Пошаговое включение (Forward)** — метод, который базируется на принципе: начать с отсутствия признаков и постепенно найти самые "лучшие", которые будут добавлены в подмножество.
   * **Пошаговое исключение (Backward)** — метод основан на следующем: начать со всех доступных признаков и последовательными итерациями исключить самые "худшие".
   * **Пошаговое включение/исключение (Stepwise)** — модификация метода *Forward* с тем отличием, что на каждом шаге после включения новой переменной в модель осуществляется проверка на значимость остальных переменных, которые уже были введены в нее ранее.
   * **Ridge** — один из методов [понижения размерности](https://wiki.loginom.ru/articles/data-reduction.html). Применяется для борьбы с переизбыточностью данных, когда независимые переменные [коррелируют](https://wiki.loginom.ru/articles/correlation.html) друг с другом [(мультиколлинеарность)](https://wiki.loginom.ru/articles/multicollinearity.html), вследствие чего проявляется неустойчивость оценок коэффициентов линейной регрессии.
   * **LASSO** — также как и *Ridge*, применяется для борьбы с переизбыточностью данных.
   * **Elastic-Net** — модель регрессии с двумя регуляризаторами *L1*, *L2*. Частными случаями являются модели *LASSO* *L1 = 0* и *Ridge* регрессии *L2 = 0*. Оба регуляризатора помогают улучшить обобщение и ошибки теста, поскольку не допускают переобучения модели из-за шума в данных:
      * **L1** — реализует это путём отбора наиболее важных факторов, которые сильнее всего влияют на результат.
      * **L2** — предотвращает переобучения модели путём запрета на непропорционально большие весовые коэффициенты.
* Accuracy/speed priority.
   * Integer type. It can take the following values:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.
* Exact/inexact data priority.
   * Integer type. It can take the following values:
      * Accurate data.
      * Increased accuracy.
      * Average accuracy.
      * Reduced accuracy.
      * Unreliable data.
* Less/more factors priority.
   * Integer type. It can take the following values:
      * Minimum factors.
      * Less factors.
      * Average number of factors.
      * More factors.
      * Maximum factors.

The following options are available for different methods:

| **Method** | **Accuracy/speed priority** | **Exact/inexact data priority** | **Less/more factors priority** |
| :------------ | :------------: | :------------: | :------------: |
| Enter | • |   |   |
| Forward | • |   | • |
| Backward | • |   | • |
| Stepwise | • |   | • |
| Ridge | • | • |   |
| LASSO | • |   | • |
| Elastic-Net | • | • | • |

* **Use detailed settings** provides more detailed configuration of linear regression (additional wizard page appears - pack of detailed settings). It is a boolean value, disabled by default.

> **Note:** All available parameters of the linear regression configuration can be set by means of variables.

### Detailed Settings

They are used if the parameters configuration pack is enabled, and *Use detailed settings* flag is selected in it, or it can be set by means of variable.

Detailed settings are joined into the following packs of parameters:

#### Method Settings

Available Parameters:
* **Solution accuracy** is a criterion of iterations stop. This setting enables to define the accuracy of definition of the error function minimum. It is a real value from 0 to 1. It is an editor with value change interval equal to 0.000001.
* **Include intercept into the model** adds the dependent variable to the model.

#### Statistics Calculation Settings

Available Parameters:

* Calculate [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html).
* % confidence interval.
* Statistics calculation mode:
   * Do not calculate.
   * For all models.
   * For the final model.

#### Regularization settings

Available Parameters:

* **Установка коэффициента L1-регуляризации** — настройка данного параметра возможна только для алгоритмов *LASSO*, *Elastic-Net*;
* **Установка коэффициента L2-регуляризации** — настройка данного параметра возможна только для алгоритмов *Ridge*, *Elastic-Net*.

Для каждого из параметров можно задать либо автоматическую установку значения, либо ввести необходимое значение вручную.

#### Настройки отбора факторов

Available Parameters:

* **Критерий отбора факторов** — позволяет выбрать один из следующих информационных критериев:
   * [F-test](https://wiki.loginom.ru/articles/partial-f-test.html).
   * [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html).
   * [Adjusted determination coefficient](https://wiki.loginom.ru/articles/coefficient-determ-adj.html).
   * [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html).
   * [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html).
   * [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html).
   * [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html).
* [Significance threshold](https://wiki.loginom.ru/articles/significance-regr.html) in case of factor addition.
* Significance threshold in case of factor exception.

> **Note:** all available parameters of the detailed settings can be set by means of variables.