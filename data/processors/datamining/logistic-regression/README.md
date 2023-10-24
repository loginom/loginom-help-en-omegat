---
description: Компонент Логистическая регрессия в Loginom. Общие понятия. Мастер настройки узла. Методы валидации. Отбор факторов и защита от переобучения. Критерий отбора факторов. Разбиение на множества.
---
# ![ ](./../../../images/icons/components/logregression_default.svg) Logistic Regression

## Description

[Logistic regression](https://wiki.loginom.ru/articles/logistic-regression.html) is a kind of multiple regression general purpose of which is to analyze relations between several [independent variables](https://wiki.loginom.ru/articles/input-variable.html) and [dependent variable](https://wiki.loginom.ru/articles/output-variable.html).

The logistic regression enables to estimate possibility of the event occurrence for a particular test person (sick/healthy person, credit repayment/default, etc).

> **Important:** Input data must never contain missing values, output data must not contain missing values during training.

## Ports

### Input

* ![](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) — Input data source (data table) — required port.
* ![ ](./../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) —  [Управляющие переменные](./../../../workflow/variables/control-variables.md) (переменные) — необязательный порт, переменными можно задать значения параметров мастера настройки.

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

## Взвешивание записей
Для логистической регрессии предусмотрена возможность задать весовые коэффициенты для каждой записи (строки) обучающих данных.<br>
Весовой вектор (столбец из входной таблицы для узла "Логистическая регрессия", используемый для определения «весов») выбирается на этапе «Настройка входных столбцов». Для этого выбирается свойство «Назначение» &#8212; «Вес».<br>

![Взвешивание записей](./weight.png)

«Веса» должны быть вещественным положительным числом с типом данных «Непрерывный».<br>
Записи с нулевыми «весами» и пустыми значениями не участвуют при построении модели.<br>
Если при построении логистической регрессии не назначить «Вес», весовые коэффициенты принимаются равными 1 для каждой записи.

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
* Method of partition to training and test sets. Существует три метода разбиения:
   * Random method provides partitioning of records set to training and test sets.
   * Sequence: groups of sets rows (training, unused, test) are selected in a sequential order, namely, only the records that are included into the first set are selected first, then it is required to select the records that are included into the second set, etc. It is posssible to change the order of sets (*Move up*, *Move down* buttons).
   * По столбцу — разбиение на обучающее и тестовое множества задаётся при помощи параметра. Параметром выступает столбец с логическим типом данных, где значение &laquo;ИСТИНА&raquo; указывает на то, что запись относится к тестовому набору, а значение &laquo;ЛОЖЬ&raquo; — на то, что запись принадлежит обучающему набору (т.е. можно разбить множество на обучающее и тестовое в узле [Разбиение на множества](../../preprocessing/partitioning.md) и подать данные из порта *Общий выходной набор* на вход узла *Логистическая регрессия*, выбрав в качестве параметра разбиения по столбцу колонку "Тестовое множество"). При выборе данного метода таблица выбора соотношения обучающего и тестового множеств становится неактивной.
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

   При использовании автоматической настройки коэффициенты регуляризации определяются автоматически. Критерием для отбора является логарифм функции правдоподобия. При построении модели алгоритм подбирает такие коэффициенты регуляризации, которые обеспечивают наибольшее значение критерия для отбора.
   В зависимости от установленного приоритета применяются определенные параметры. Их значения приведены в таблице ниже.

| **Приоритет** | **Регуляризатор** | **Критерий остановки градиентного спуска &epsilon;** |
| :------------ | :------------: | :------------: |
| Максимальная точность | Эластичная сеть (Elastic-net) | 10<sup><small>-7</small></sup> |
| Повышенная точность | Эластичная сеть (Elastic-net) | 10<sup><small>-6</small></sup> |
| Средняя скорость | Гребневая регрессия (Ridge) | 10<sup><small>-5</small></sup> |
| Повышенная скорость | Гребневая регрессия (Ridge) | 10<sup><small>-4</small></sup> |
| Максимальная скорость | Гребневая регрессия (Ridge) | 10<sup><small>-3<small></sup> |

Чем меньше значение критерия остановки градиентного спуска &epsilon; (f(x<sub>k+1</sub>) — f(x<sub>k</sub>) &le; &epsilon;), тем точнее рассчитываются коэффициенты для регрессионной модели.

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
   * **Ridge** (Гребневая регрессия) — процедура регуляризации L2, предназначена для защиты от переобучения (снижения степени переобучения обучаемой модели), что обеспечивает более качественное прогнозирование. Подразумевает введение "штрафов" для уменьшения значений коэффициентов регрессии. Величина "штрафов" вычисляется как сумма квадратов коэффициентов переменных, умноженная на коэффициент регуляризации.
   * **LASSO** (регрессия Лассо) — так же как и *Ridge*, применяется для регуляризации (защиты от переобучения) обучаемой модели. Подразумевает введение "штрафов" (вычисляется как сумма модулей коэффициентов переменных, умноженная на коэффициент регуляризации) для уменьшения значений коэффициентов регрессии. Регуляризация Lasso (L1) позволяет снизить размерность и упростить регрессионную модель за счёт зануления коэффициентов некоторых признаков.
   * **Elastic-Net** (регрессия "Эластичная сеть") — модель регрессии с двумя регуляризаторами  *L1*, *L2*. *LASSO* *L1 = 0* and *Ridge* of *L2 = 0* regression are the models that represent special cases. Данный тип регуляризации учитывает эффективность обоих методов регуляризации и применяется в тех случаях, когда важно сохранить корреляционную связь переменных и не допустить зануление коэффициентов регрессионной модели (как в случае с LASSO).
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

### Поправка на долю событий

Данная опция используется в качестве способа введения поправки на априорную (заранее известную) вероятность. Поправка осуществляется корректировкой константы финальной модели.

Введение поправки на априорную вероятность влияет на результаты отчётов:
* в отчёте по логистической регрессии будет изменена константа финальной модели узла;
* в визуализаторе «Качество бинарной классификации» изменится количество верно классифицированных событий и не-событий, а также показатели качества классификации в таблицах.

Поправка на долю событий может осуществляться:
* на основе обучающего множества (используется по умолчанию);
* на основе тестового множества;
* вручную.

Если на момент построения модели априорная вероятность точно не определена, лучше использовать опцию по умолчанию.

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