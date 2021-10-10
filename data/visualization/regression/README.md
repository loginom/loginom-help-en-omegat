# ![Отчет по регрессии](../../images/icons/view_types/logregressreport_default.svg) Отчет по регрессии

Визуализатор *Отчет по регрессии* для компонента [*Логистическая регрессия*](../../processors/datamining/logistic-regression/README.md) отображает статистические параметры и результаты статистических тестов для анализа регрессионных моделей.

This visualizer consists of three areas:

* [Model Info](#informatsiya-o-modeli);
* [Regression coefficients](#koeffitsienty-regressii);
* [Model steps](#shagi-postroeniya).

More detailed infomation how to enable this visualizer is provided in the [article](../README.md).

## Interface

### Operations

#### Model info area

* ![](../../images/icons/toolbar-controls/info_default.svg) **Информация о модели** — отображение/скрытие информации о модели.

#### Regression Coefficients Area

* ![](../../images/icons/toolbar-controls/table-view_default.svg) **Table**: switch of representation of [regression coefficients](#koeffitsienty-regressii) to the *Table* form.
* ![](../../images/icons/toolbar-controls/tree_default.svg) **Tree**: switch of representation of [regression coefficients](#koeffitsienty-regressii) to the *Tree* form.
* ![](../../images/icons/toolbar-controls/zero_default.svg) **Нулевые значения** — отображение/скрытие нулевых значений;

#### Model Steps Area

* ![](../../images/icons/toolbar-controls/building-steps_default.svg) **Model steps**: show/hide [model steps](#shagi-postroeniya).

### Visualizer Areas

#### Model Info

Description of model indicators is represented in the table:

| Indicator | Description |
|:------------------------|:-----------------------------------------------|
| ![Logical](../../images/icons/data-types/boolean_default.svg) Constant | [Dependent variable](https://wiki.loginom.ru/articles/output-variable.html) |
| ![Real](../../images/icons/data-types/float_default.svg) -2 Log Likelihood | -2 Logarithm of the [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html) |
| ![Real](../../images/icons/data-types/float_default.svg) R2 | [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html) |
| ![Real](../../images/icons/data-types/float_default.svg) R2 adj. | [Determination coefficient adjusted](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) |
| ![Вещественный](../../images/icons/data-types/float_default.svg) [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html) | Критерий согласия для проверки гипотезы о законе распределения исследуемой случайной величины |
| ![Целый](../../images/icons/data-types/integer_default.svg) Число степеней свободы | Number of independently varied values of [indicator](https://wiki.loginom.ru/articles/attribute.html) |
| ![Real](../../images/icons/data-types/float_default.svg) [Significance](https://wiki.loginom.ru/articles/significance-regr.html) | Степень статистической связи между [входной](https://wiki.loginom.ru/articles/input-variable.html) (набором входных) и [выходной переменными](https://wiki.loginom.ru/articles/output-variable.html) регрессионной модели. |
| ![Real](../../images/icons/data-types/float_default.svg) AIC | [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html) |
| ![Real](../../images/icons/data-types/float_default.svg) AICc | [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html) |
| ![Real](../../images/icons/data-types/float_default.svg) BIC | [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html) |
| ![Real](../../images/icons/data-types/float_default.svg) HQC | [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html) |

#### Regression Coefficients

Description of coefficients is provided in the table:

| Coefficient | Description |
|:--------------------|:----------|
| Coefficient | Characteristics of relation between dependent *y* and [independent variable](https://wiki.loginom.ru/articles/input-variable.html) *x* |
| [Standard error](https://wiki.loginom.ru/articles/standard-estimation-error.html) | Мера разброса данных наблюдений от смоделированных значений |
| [Коэффициент Вальда](https://wiki.loginom.ru/articles/wald-test.html) | Оценка значимости коэффициента при независимой переменной модели |
| [Significance](https://wiki.loginom.ru/articles/significance-regr.html) | Degree of statistic link of the input (set of the input ones) and output variables of regression model |
| [Odds ratio](https://wiki.loginom.ru/articles/odds-ratio.html) | Отношение вероятности того, что событие произойдет к вероятности того, что событие не произойдет |
| CI lower bound | Lower bound of [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html) |
| CI upper bound | Upper bound of confidence interval |
| Порог значимости | Degree of statistic link of the input (set of the input ones) and output variables of regression model |

Regression coefficients can be represented in the ![](../../images/icons/toolbar-controls/table-view_default.svg) *Table* form (refer to Figure 1) or ![](../../images/icons/toolbar-controls/tree_default.svg) *Tree* (refer to Figure 2).

![Table representation mode.](./readme-1.png)

![Tree representation mode.](./readme-2.png)

#### Model steps

Область ![](../../images/icons/toolbar-controls/building-steps_default.svg) *Шаги построения* имеет смысл включать только в том случае, если при настройке узла *Логистическая регрессия* в параметре *Отбор факторов и защита от переобучения* был выбран алгоритм, который подразумевает режим обработки фактов.

![](../../images/icons/toolbar-controls/building-steps_default.svg) *Model steps* area consists of the following fields:

| Field | Description |
|:----------------|:----------------------------------------------------------------------------|
| Model | The tree of models in which the models created by the algorithm in the training process are displayed. It appears when measures are selected. Only one final model will be available in this field for the algorithms that do not support processing of measures. Щелчком левой кнопки мыши по области ![](../../images/icons/toolbar-controls/building-steps_default.svg) *Шаги построения* можно выбрать отображение [информации о выбранной модели](#informatsiya-o-modeli) (если установлен соответствующий флажок), а также [коэффициенты регрессии](#koeffitsienty-regressii) |
| Indicator | Value of the selected indicator for the current model |
| Field change | Отображает добавлен или удален был факт ("+" показывает, что факт был добавлен в модель, а "-" означает, что факт удален из модели) |
| Fields | Current model fields |

There are three model types:

* **Null model**: the initial model of the algorithm operation.
* **Intermediate model**: the model created by the algorithm in the training process.
* **Финальная модель** — модель, которую алгоритм посчитал наилучшей, и дальнейшие действия не приведут к улучшению модели.

The indicators available for selection:

* -2 Log Likelihood;
* AIC;
* AICc;
* BIC;
* HQC.