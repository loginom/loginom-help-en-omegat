# ![ ](../../../images/icons/components/logregression_default.svg) Логистическая регрессия

## Description

[Логистическая регрессия](https://wiki.loginom.ru/articles/logistic-regression.html) — это разновидность множественной регрессии, общее назначение которой состоит в анализе связи между несколькими [независимыми переменными](https://wiki.loginom.ru/articles/input-variable.html) и [зависимой переменной](https://wiki.loginom.ru/articles/output-variable.html).

С помощью логистической регрессии можно оценивать вероятность того, что событие наступит для конкретного испытуемого (больной/здоровый, возврат кредита/дефолт и т.д.).

> **Important:** Input data must never contain missing values, output data must not contain missing values during training.

## Ports

### Input

* ![](../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Input data source (data table) — required port.
* ![](../../../images/icons/app/node/ports/inputs/variable_inactive.svg) —  [Control variables](../../../scenario/variables/control-variables.md) (variables) — optional port. It is possible to set values of wizard parameters using variables.

### Outputs
* ![](../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Выход регрессии.
   The table that consists of the following fields:
   * Событие|Прогноз.
   * Вероятность события|Прогноз.
   * Событие|Факт.
   * Поле выходных данных|Прогноз.
   * Все поля исходного набора данных.
* ![](../../../images/icons/app/node/ports/inputs/table_inactive.svg) —  [Коэффициенты регрессионной модели](./coef-regression.md) (таблица данных).
* ![](../../../images/icons/app/node/ports/outputs/variable_inactive.svg) —  [Сводка](./report.md) (переменные).

## Node wizard

includes the follwing groups of parameters:

* [Normalization](../../normalization/README.md) Settings;
* [Partitioning](#razbienie-na-mnozhestva);
* [Настройка логистической регрессии](#nastroyka-logisticheskoy-regressii);
* [Detailed settings](#detalnye-nastroyki).

### Partitioning

The *Partitioning* page of the wizard enables to divide a set into the training and test ones:

* [Train](https://wiki.loginom.ru/articles/training-set.html) denotes the structured data set used for training of [analytical models](https://wiki.loginom.ru/articles/taught-model.html). Each record of the training set is a training example with the set input effect and correct output (target) result that corresponds to it.
* [Test](https://wiki.loginom.ru/articles/test-set.html) denotes the training sample subset that contains test examples, namely, the examples used not to train the model but to check its results.

Available Parameters:

* Size of training and test set in percentage terms or in rows. It can be set by means of variables.
* Method of partition to training and test sets. There are two partition methods:
   * Random method provides partitioning of records set to training and test sets.
   * Sequence: groups of sets rows (training, unused, test) are selected in a sequential order, namely, only the records that are included into the first set are selected first, then it is required to select the records that are included into the second set, etc. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
* Метод [валидации](../../validation.md), который может принимать следующие значения:
   * Без валидации.
   * [K-fold cross validation](https://wiki.loginom.ru/articles/cross-validation.html) enables to select the*Method of[sampling](https://wiki.loginom.ru/articles/sampling.html)* and number of *Cross validation fold*.
   * [Monte Carlo](https://wiki.loginom.ru/articles/monte-carlo-technique.html?q=) enables to select *Resampling iteration count* and set the size of training and [validation set](https://wiki.loginom.ru/articles/validation-set.html).


### Настройка логистической регрессии

Набор параметров для настройки логистической регрессии можно сгруппировать в следующие блоки:

#### Configure method

* Auto setup:
   * Boolean value. Enabled by default.
   * It has an impact on usage of the following packs of parameters: if it is enabled, it is possible to configure *Auto setup priority* pack, if it is disabled, it is possible to select the algorithm of [factors](https://wiki.loginom.ru/articles/factor.html) selection and protection from overfitting, and it is also possible to set priorities.
* Auto setup priority:
   * It has an impact on selection of the particular method and its settings according to the Accuracy - Speed scale.
   * Целочисленный тип в диапазоне от 0 до 4 включительно:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.
* **Denormalize model coefficients**: denormalization is required for interpretation of results. As the model can work only with the normalized data, first, it is required to normalize data that has been sent to the model for its usage, and then denormalization must be performed to make data return the same kind it has had before normalization. It is a boolean value, enabled by default.

#### Настройка событий

* Тип события. It can take the following values:
   * Первое в списке.
   * Последнее в списке.
   * Более редкое.
   * Более частое.
   * Задано явно.
* Индекс заданного события.
   * Доступно для типа события *Задано явно*.
   * Значение целого типа, выбираемое согласно списку уникальных значений.

#### Configure Parameters

It is used if *Auto setup* flag is not selected, or it is set by means of variable.

* **Factor selection and protection against overfitting** - value of enumeration:
   * **Enter**: enter all set indicators into the regression model irrespective of the fact whether they have meaningful influence or not.
   * **Forward**: this method is based on the following principle: it is required to start from absence of indicators and gradually find the "best" ones that will be added to the subset.
   * **Backward**: this method is based on the following principle: it is required to start from all available indicators and exclude the "worst" ones by means of successive iterations.
   * **Пошаговое включение/исключение (Stepwise)** — модификация метода *Forward*, однако на каждом шаге после включения новой переменной в модель осуществляется проверка на значимость остальных переменных, которые уже были введены в нее ранее.
   * **Ridge** is one of the methods used for [dimension decrease](https://wiki.loginom.ru/articles/data-reduction.html). It is used to avoid data redundancy when independent variables [correlate](https://wiki.loginom.ru/articles/correlation.html) with each other [(multicollinearity)](https://wiki.loginom.ru/articles/multicollinearity.html) that causes instability of estimates of linear regression coefficient.
   * **LASSO** is used to avoid data redundancy as *Ridge*.
   * **Elastic-Net**: regression model with two regularizers - *L1*, *L2*. *LASSO* *L1 = 0* and *Ridge* of *L2 = 0* regression are the models that represent special cases. Both regularizers help to improve generalization and errors of test as they protect the model against overfitting in connection with data noise:
      * **L1** implements it by selecting the most important factors that have the highest impact on the result.
      * **L2** prevents from the model overfitting by forbidding disproportionately large weighted coefficients.
* Accuracy/speed priority.
   * Целочисленный тип в диапазоне от 0 до 4 включительно:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.
* Exact/inexact data priority.
   * Целочисленный тип в диапазоне от 0 до 4 включительно:
      * Accurate data.
      * Increased accuracy.
      * Average accuracy.
      * Reduced accuracy.
      * Unreliable data.
* Less/more factors priority.
   * Целочисленный тип в диапазоне от 0 до 4 включительно:
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

* **Использовать детальные настройки** — позволяет более развернуто настроить логистическую регрессию (появляется дополнительная страница мастера — блок детальных настроек). It is a boolean value, disabled by default.

> **Примечание:** все доступные параметры настройки логистической регрессии можно задавать с помощью переменных.

### Detailed Settings

They are used if the parameters configuration pack is enabled, and *Use detailed settings* flag is selected in it, or it can be set by means of variable.

Detailed settings are joined into the following packs of parameters:

#### Method Settings

Available Parameters:
* **Solution accuracy** is a criterion of iterations stop. This setting enables to define the accuracy of definition of the error function minimum. It is a real value from 0 to 1. It is an editor with value change interval equal to 0.000001.
* **Порог отсечения** — определяет расчетное значение уравнения регрессии. It is a real value from 0 to 1. Представляет собой редактор с шагом изменения значения 0,1.
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

* **Установка коэффициента L1-регуляции** — настройка данного параметра возможна только для алгоритмов *LASSO*, *Elastic-Net*;
* **Установка коэффициента L2-регуляции** — настройка данного параметра возможна только для алгоритмов *Ridge*, *Elastic-Net*.

It is possible either to select auto setup of value for each of parameters, or to enter the required value in the manual way.

#### Factor Selection Settings

Available Parameters:

* **Factor selection criterion** enables to select one of the following information criteria:
   * [Отношение правдоподобия](https://wiki.loginom.ru/articles/likelihood-ratio.html).
   * [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html).
   * [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html).
   * [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html).
   * [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html).
* [Significance threshold](https://wiki.loginom.ru/articles/significance-regr.html) in case of factor addition.
* Significance threshold in case of factor exception.

> **Note:** all available parameters of the detailed settings can be set by means of variables.
