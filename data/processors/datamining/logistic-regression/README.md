---
description: Компонент Логистическая регрессия в Loginom. Общие понятия. Мастер настройки узла. Методы валидации. Отбор факторов и защита от переобучения. Критерий отбора факторов. Разбиение на множества.
---
# ![ ](./../../../images/icons/components/logregression_default.svg) Logistic Regression

## Description

[Logistic regression](https://wiki.loginom.ru/articles/logistic-regression.html) is a kind of multiple regression general purpose of which is to analyse relations between several [independent variables](https://wiki.loginom.ru/articles/input-variable.html) and [dependent variable](https://wiki.loginom.ru/articles/output-variable.html).

The logistic regression enables to estimate possibility of the event occurrence for a particular test person (sick/healthy person, credit repayment/default, etc).

> **Important:** Input data must never contain missing values, output data must not contain missing values during training.

## Ports

### Input

* ![](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Input data source (data table) — required port.
* ![](./../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) —  [Control variables](./../../../workflow/variables/control-variables.md) (variables) — optional port. It is possible to set values of the wizard parameters as variables.

### Outputs
* ![](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Regression output.
   The table that consists of the following fields:
   * Event|Prediction.
   * Event probabillity|Prediction.
   * Event|Actual.
   * Output data field|Prediction.
   * All fields of the source data set.
* ![](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) —  [Regression model coefficients](./coef-regression.md) (data table).
* ![](./../../../images/icons/app/node/ports/outputs/variable_inactive.svg) —  [Summary](./report.md) (variables).

## Record Weighing
It is possible to set weighted coefficients for each record (string) of training data for the logistic regression.<br> Weight vector (the column from the input table for the "Logistic regression" node used for "weight" determination) is selected at "Configure input column" stage. "Usage type" &#8212; "Weight"<br> property is selected for this purpose.

![Record Weighing](./weight.png)

"Weights" must be the real positive number with the "Continuous" data type.<br>
Records with the null "weights" and null values do not take part in the model training process.<br>
If "Weight" is not set when constructing the logistic regression, the weight coefficients are taken equal to 1 for each record.

## Node Wizard

It includes the following groups of parameters:

* [Normalization](./../../normalization/README.md) settings.
* [Partitioning](#razbienie-na-mnozhestva).
* [Logistic regression configuring](#nastroyka-logisticheskoy-regressii);
* [Detailed settings](#detalnye-nastroyki).

### Partitioning

The *Partitioning* page of the wizard enables to divide a set into the training and test ones:

* [Train](https://wiki.loginom.ru/articles/training-set.html): the structured data set used for training of [analytical models](https://wiki.loginom.ru/articles/taught-model.html). Each record of the training set is a training example with the set input effect and correct output (target) result that corresponds to it.
* [Test](https://wiki.loginom.ru/articles/test-set.html): the training sample subset that contains test examples, namely, the examples used not to train the model but to check its results.

Available Parameters:

* Size of training and test set in percentage terms or in rows. It can be set by means of variables.
* Method of partition to training and test sets. There are three partition methods:
   * Random method provides partitioning of records set to training and test sets.
   * Sequence: groups of sets rows (training, unused, test) are selected in a sequential order, namely, only the records that are included into the first set are selected first, then it is required to select the records that are included into the second set, etc. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
   * By column: partitioning to training and test sets is set using the parameter. Parameter is a column with the logical data type where &laquo;TRUE&raquo; value indicates that the record relates to the test set, and &laquo;FALSE&raquo; value indicates that the record relates to the training set (namely, it is possible to partition the set to training and test sets in the [Partitioning](../../preprocessing/partitioning.md) node, and submit data from *Common output data set* port to the input of the *Logistic regression* node having selected the "Test set" column as partitioning by column parameter). When selecting this method, the training and test set correlation selection table becomes inactive.
* [Validation](./../../validation.md) method that can take the following values:
   * No validation.
   * [K-fold cross validation](https://wiki.loginom.ru/articles/cross-validation.html) enables to select the *Method of [sampling](https://wiki.loginom.ru/articles/sampling.html)* and number of *Cross validation fold*.
   * [Monte Carlo](https://wiki.loginom.ru/articles/monte-carlo-technique.html?q=) enables to select *Resampling iteration count* and set the size of training and [validation set](https://wiki.loginom.ru/articles/validation-set.html).

**Random seed** is a starting seed (integer, positive ) that is used for initialization of pseudo-random number generator. Sequence of generator numbers is fully determined by the starting seed. If the generator is repeatedly initialized with the same starting seed, it will provide the same sequence of numbers.

The parameter affects the order of random partitioning to the test and training sets and training result reproducibility. It is possible to reproduce the node training result if the same data is provided and the same random seed is set.

The following commands are available for the parameter:

* Always randomly: the starting seed will always be random.
* Generate: the new starting seed will be generated.
* Copy: the specified value will be copied to the clipboard.

### Logistic Regression Configuring

A set of parameters to configure the logistic regression can be grouped in the following packs:

#### Configure Method

* Auto setup:
   * Boolean value. Enabled by default.
   * It has an impact on usage of the following packs of parameters: if it is enabled, it is possible to configure *Auto setup priority* pack, if it is disabled, it is possible to select the algorithm of [factors](https://wiki.loginom.ru/articles/factor.html) selection and protection against overfitting, and it is also possible to set priorities.
* Auto setup priority:
   * It has an impact on selection of the particular method and its settings according to the Accuracy - Speed scale.
   * Integer type in the range from 0 to 4 inclusive:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.

   When auto setup is used, regularization сoefficients are automatically defined. Log likelihood function is a selection criterion. When training the model, the algorithm selects such regularization сoefficients that provide the highest value of selection criterion.
   Particular parameters are applied according to the set priority. Their values are provided in the table below.

| **Priority** | **Regularizer** | **Stopping criterion for gradient descent &epsilon;** |
| :------------ | :------------: | :------------: |
| Maximum accuracy | Elastic-net | 10<sup><small>-7</small></sup> |
| Increased accuracy | Elastic-net | 10<sup><small>-6</small></sup> |
| Average speed | Ridge | 10<sup><small>-5</small></sup> |
| Increased speed | Ridge | 10<sup><small>-4</small></sup> |
| Maximum speed | Ridge | 10<sup><small>-3<small></sup> |

The lower the value of stopping criterion for gradient descent &epsilon; (f(x<sub>k+1</sub>) — f(x<sub>k</sub>) &le; &epsilon;), the more accurate coefficicents for regression model are calculated.

* **Denormalize model coefficients**: denormalization is required for interpretation of results. As the model can work only with the normalized data, first, it is required to normalize data that has been sent to the model for its usage, and then denormalization must be performed to make data return the same kind it has had before normalization. It is a boolean value, enabled by default.

#### Configure Events

* Event type. It can take the following values:
   * First listed.
   * Last listed.
   * Rarer.
   * More frequent.
   * Explicitly set.
* Specified event index.
   * It is available for the event of *Explicitly set* type.
   * The integer value selected according to the list of unique values.

#### Configure Parameters

It is used if *Auto setup* checkbox is not selected, or it is set by means of variable.

* **Factor selection and protection against overfitting** - value of enumeration:
   * **Enter**: enter all set indicators into the regression model irrespective of the fact whether they have meaningful influence or not.
   * **Forward**: this method is based on the following principle: it is required to start from absence of indicators and gradually find the "best" ones that will be added to the subset.
   * **Backward**: this method is based on the following principle: it is required to start from all available indicators and exclude the "worst" ones by means of successive iterations.
   * **Stepwise**: modification of the *Forward* method, however, at each step upon entering of the new variable into the model, other variables that have already been entered into it earlier are tested for significance.
   * **Ridge** (Ridge): L2 regularization procedure that is designated for protection from overfitting (reduction of overfitting level of the trained model) that secures better prediction. It implies the introduction of "fines" to decrease the regression coefficient values. The "fine" size is calculated as the sum of squares of variables сoefficients multiplied by regularization сoefficient.
   * **LASSO** (LASSO regression): just like *Ridge* it is applied for regularization (protection from overfitting) of the trained model. It implies the introduction of "fines" (it is calculated as the sum of modules of variables сoefficients multiplied by regularization сoefficient) to decrease the regression coefficient values. Lasso (L1) enables to decrease dimension and simplify regression model due to сoefficient nulling of some indicators.
   * **Elastic-Net** ("Elastic Net" regression): regression model with two regularizers -  *L1*, *L2*. *LASSO* *L1 = 0* and *Ridge* of *L2 = 0* regression are the models that represent special cases. This type of regularization enables to take into account efficiency of both regularization methods, and it is applied in the cases when it is important to keep correlation relationship of variables and not to allow nulling of regression model coefficients (as with LASSO).
* Accuracy/speed priority.
   * Integer type in the range from 0 to 4 inclusive:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.
* Exact/inexact data priority.
   * Integer type in the range from 0 to 4 inclusive:
      * Accurate data.
      * Increased accuracy.
      * Average accuracy.
      * Reduced accuracy.
      * Unreliable data.
* Less/more factors priority.
   * Integer type in the range from 0 to 4 inclusive:
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

* **Use detailed settings** provides more detailed configuration of logistic regression (additional wizard page appears - pack of detailed settings). It is a boolean value, disabled by default.

> **Note:** All available parameters of the logistic regression configuration can be set by means of variables.

### Correction for Event Rate

This option is used as a method of prior (known beforehand) probability correction introduction. The correction is implemented by adjustment of the final model intercept.

Introduction of prior probability correction affects the report results:
* the final model intercept will be changed in the logistic regression report;
* the number of correctly classified events and non-events and also parameters of classification quality in tables will be changed in the "Binary classification assessment" visualizer.

Correction for event rate can be implemented as follows:
* based on the training set (used by default);
* based on the test set;
* manually.

If the prior probability is not precisely defined at the moment of model training, it's better to use the default option.

### Detailed Settings

They are used if the parameters configuration pack is enabled, and *Use detailed settings* checkbox is selected in it, or it can be set by means of variable.

Detailed settings are joined into the following packs of parameters:

#### Method Settings

Available Parameters:
* **Solution accuracy**: criterion of iterations stop. This setting enables to define the accuracy of definition of the error function minimum. It is a real value from 0 to 1. It is an editor with value change interval equal to 0.000001.
* **Cutoff** enables to define the calculated value of the regression equation. It is a real value from 0 to 1. It is an editor with value change interval equal to 0.1.
* **Include intercept into the model** adds the dependent variable to the model.

#### Statistics Calculation Settings

Available Parameters:

* Calculate [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html).
* % confidence interval.
* Statistics calculation mode:
   * Do not calculate.
   * For all models.
   * For the final model.

#### Regularization Settings

Available Parameters:

* **L1-regularization coefficient setup**: configuration of this parameter is possible only for *LASSO*, *Elastic-Net* algorithms.
* **L2-regularization coefficient setup**: configuration of this parameter is possible only for *Ridge*, *Elastic-Net* algorithms.

It is possible either to select auto setup of value for each of parameters, or to enter the required value in the manual way.

#### Factor Selection Settings

Available Parameters:

* **Factor selection criterion** enables to select one of the following information criteria:
   * [Likelihood ratio](https://wiki.loginom.ru/articles/likelihood-ratio.html).
   * [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html).
   * [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html).
   * [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html).
   * [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html).
* [Significance threshold](https://wiki.loginom.ru/articles/significance-regr.html) in the case of factor addition.
* Significance threshold in the case of factor exception.

> **Note:** All available parameters of the detailed settings can be set by means of variables.