---
description: Компонент Линейная регрессия в Loginom. Общие сведения. Алгоритм машинного обучения. Решение задач прогнозирования. Мастер настройки узла. Коэффициенты регрессии. Отбор факторов и защита от переобучения. Метод валидации. Разбиение на множества.
---
# ![](./../../../images/icons/components/linear-regress_default.svg) Linear Regression

## Description

[Linear regression](https://wiki.loginom.ru/articles/linear-regression.html) is a model of dependence between [input](https://wiki.loginom.ru/articles/input-variable.html) and [output variables](https://wiki.loginom.ru/articles/output-variable.html) with the linear link function.

Linear regression is one of the most frequently used algorithms in [machine learning](https://wiki.loginom.ru/articles/machine-learning.html). This algorithm frequently produces good results even for small data sets.

Wide use of linear regression is explained by the fact that many real processes in science, economics and business can be described in terms of linear models. For example, linear regression enables to estimate anticipated sales volume depending on the established price.

Компонент может использоваться для решения различных задач [Data Mining](https://wiki.loginom.ru/articles/data-mining.html?q=), например, таких, как [прогнозирование](https://wiki.loginom.ru/articles/forecasting.html) и численное предсказание.

Для получения результирующих наборов требуется предварительное [обучение узла](./../../../workflow/training-processors.md).

> **Important:** Input data must never contain missing values, output data must not contain missing values during training.

## Ports

### Input

* ![](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Входной источник данных (таблица данных) — обязательный порт.
* ![ ](./../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) —  [Управляющие переменные](./../../../workflow/variables/control-variables.md) (переменные) — необязательный порт, переменными можно задать значения параметров мастера настройки.

### Outputs
* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) — Выход регрессии — таблица, состоящая из полей: регрессия поля выходных данных, поля исходного набора данных.
* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) — [Коэффициенты регрессионной модели](./coef-regression.md) — таблица данных.
* ![](./../../../images/icons/app/node/ports/outputs/variable_inactive.svg) — [Summary](./report.md): variables.

## Node Wizard

The wizard includes the following groups of parameters:

* [Normalization](./../../normalization/README.md) settings.
* [Разбиение на множества](#razbienie-na-mnozhestva).
* [Настройка линейной регрессии](#nastroyka-lineynoy-regressii).
* [Detailed settings](#detalnye-nastroyki).

### Partitioning

The *Partitioning* page of the wizard enables to divide a set into the training and test ones:
* [Обучающее](https://wiki.loginom.ru/articles/training-set.html) — структурированный набор данных, применяемый для обучения [аналитических моделей](https://wiki.loginom.ru/articles/taught-model.html). Each record of the training set is a training example with the set input effect and correct output (target) result that corresponds to it.
* [Test](https://wiki.loginom.ru/articles/test-set.html): the training sample subset that contains test examples, namely, the examples used not to train the model but to check its results.

Available Parameters:
* Size of training and test set in percentage terms or in rows. It can be set by means of variables.
* Method of partition to training and test sets. Существует три метода разбиения:
   * Random method provides partitioning of records set to training and test sets.
   * Sequence: groups of sets rows (training, unused, test) are selected in a sequential order, namely, only the records that are included into the first set are selected first, then it is required to select the records that are included into the second set, etc. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
   * По столбцу — разбиение на обучающее и тестовое множества задаётся при помощи параметра. Параметром выступает столбец с логическим типом данных, где значение &laquo;ИСТИНА&raquo; указывает на то, что запись относится к тестовому набору, а значение &laquo;ЛОЖЬ&raquo; — на то, что запись принадлежит обучающему набору (т.е. можно разбить множество на обучающее и тестовое в узле [Разбиение на множества](https://help.loginom.ru/userguide/processors/preprocessing/partitioning.html) и подать данные из порта *Общий выходной набор* на вход узла *Линейная регрессия*, выбрав в качестве параметра разбиения по столбцу колонку "Тестовое множество"). При выборе данного метода таблица выбора соотношения обучающего и тестового множеств становится неактивной.
* [Validation](./../../validation.md) method that can take the following values:
   * No validation.
   * [K-fold cross validation](https://wiki.loginom.ru/articles/cross-validation.html) enables to select the *Method of [sampling](https://wiki.loginom.ru/articles/sampling.html)* and number of *Cross validation fold*.
   * [Monte Carlo](https://wiki.loginom.ru/articles/monte-carlo-technique.html?q=) enables to select *Resampling iteration count* and set the size of training and [validation set](https://wiki.loginom.ru/articles/validation-set.html).

**Random seed** — начальное число (целое, положительное), которое используется для инициализации генератора псевдослучайных чисел. Последовательность чисел генератора полностью определяется начальным числом. Если генератор повторно инициализируется с тем же начальным числом, он выдаст ту же последовательность чисел.

Параметр влияет на порядок случайного разбиения на тестовое и обучающее множество и на воспроизводимость результата обучения. Можно повторить результат обучения узла, если подать те же данные и выставить тот же random seed.

Для параметра доступны следующие команды:

* Всегда случайно — начальное число всегда будет случайным.
* Генерировать — сгенерируется новое начальное число.
* Копировать — в буфер обмена будет скопировано указанное значение.

### Linear Regression Configuring

A set of parameters to configure the linear regression can be grouped in the following packs:

#### Configure Method

* Auto setup:
   * Boolean value. Enabled by default.
   * It has an impact on usage of the following packs of parameters: if it is enabled, it is possible to configure *Auto setup priority* pack, if it is disabled, it is possible to select the algorithm of [factors](https://wiki.loginom.ru/articles/factor.html) selection and protection against overfitting, and it is also possible to set priorities.
* Auto setup priority:
   * It has an impact on selection of the particular method and its settings according to the Accuracy - Speed scale.
   * Integer type. It can take the following values:
      * Maximum accuracy.
      * Increased accuracy.
      * Average speed.
      * Increased speed.
      * Maximum speed.

#### Configure Parameters

It is used if *Auto setup* checkbox is not selected, or it is set by means of variable.

* **Factor selection and protection against overfitting** - value of enumeration:
   * **Enter**: enter all set indicators into the regression model irrespective of the fact whether they have meaningful influence or not.
   * **Forward**: this method is based on the following principle: it is required to start from absence of indicators and gradually find the "best" ones that will be added to the subset.
   * **Backward**: this method is based on the following principle: it is required to start from all available indicators and exclude the "worst" ones by means of successive iterations.
   * **Stepwise**: modification of the *Forward* method except that at each step upon entering of the new variable into the model, other variables that have already been entered into it earlier are tested for significance.
   * **Ridge** (Гребневая регрессия) — процедура регуляризации L2, предназначена для защиты от переобучения (снижения степени переобучения обучаемой модели), что обеспечивает более качественное прогнозирование. Подразумевает введение "штрафов" для уменьшения значений коэффициентов регрессии. Величина "штрафов" вычисляется как сумма квадратов коэффициентов переменных умноженная на коэффициент регуляризации.
   * **LASSO** (регрессия Лассо) — также как и *Ridge*, применяется для регуляризации (защиты от переобучения) обучаемой модели. Подразумевает введение "штрафов" (вычисляются как сумма модулей коэффициентов переменных умноженные на коэффициент регуляризации) для уменьшения значений коэффициентов регрессии. Регуляризация Lasso (L1) позволяет снизить размерность и упростить регрессионную модель, за счёт зануления коэффициентов некоторых признаков.
   * **Elastic-Net** (регрессия "Эластичная сеть") — модель регрессии с двумя регуляризаторами  *L1*, *L2*. *LASSO* *L1 = 0* and *Ridge* of *L2 = 0* regression are the models that represent special cases. Данный тип регуляризации учитывает эффективность обоих методов регуляризации и применяется в тех случаях, когда важно сохранить корреляционную связь переменных и не допустить зануление коэффициентов регрессионной модели (как в случае с LASSO).
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

* **Denormalize model coefficients**: denormalization is required for interpretation of results. As the model can work only with the normalized data, first, it is required to normalize data that has been sent to the model for its usage, and then denormalization must be performed to make data return the same kind it has had before normalization. It is a boolean value, enabled by default.
* **Use detailed settings** provides more detailed configuration of linear regression (additional wizard page appears - pack of detailed settings). It is a boolean value, disabled by default. Доступен для редактирования, если снят флаг *Автоматическая настройка*.

> **Note:** All available parameters of the linear regression configuration can be set by means of variables.

### Detailed Settings

They are used if the parameters configuration pack is enabled, and *Use detailed settings* checkbox is selected in it, or it can be set by means of variable.

Detailed settings are joined into the following packs of parameters:

#### Method Settings

Available Parameters:
* **Solution accuracy**: criterion of iterations stop. This setting enables to define the accuracy of definition of the error function minimum. It is a real value from 0 to 1. It is an editor with value change interval equal to 0.000001.
* **Include intercept into the model** adds the dependent variable to the model. Параметр доступен для редактирования, если не установлен флаг *Денормализировать коэффициенты модели*.

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
   * [F-test](https://wiki.loginom.ru/articles/partial-f-test.html).
   * [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html).
   * [Adjusted determination coefficient](https://wiki.loginom.ru/articles/coefficient-determ-adj.html).
   * [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html).
   * [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html).
   * [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html).
   * [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html).
* [Significance threshold](https://wiki.loginom.ru/articles/significance-regr.html) in the case of factor addition.
* Significance threshold in the case of factor exception.

> **Note:** All available parameters of the detailed settings can be set by means of variables.