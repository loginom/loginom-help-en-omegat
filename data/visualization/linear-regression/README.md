---
description: Построение отчёта по линейной регрессии в Loginom. Справка по интерфейсу и настройкам визуализатора. Выбор доступных показателей для отчёта по качеству построения регрессии AIC, AICc, BIC, HQC, -2 Log Likelihood.
---
# ![](./../../images/icons/common/view_types/linregressreport_default.svg) Regression Report

*Regression report* visualizer of the [*Linear regression*](./../../processors/datamining/linear-regression/README.md) component displays parameters and results of the statistical tests for the regression models analysis.

This visualizer consists of three areas:

* [Model info](#informatsiya-o-modeli).
* [Regression coefficients](#koeffitsienty-regressii).
* [Model steps](#shagi-postroeniya).

More detailed infomation how to enable this visualizer is provided in the [article](./../README.md).

## Interface
### Operations

#### Model Info Area

* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_info_default.svg) **Model info**: show/hide [Model info](#informatsiya-o-modeli).

#### Regression Coefficients Area

* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_table-view_default.svg) **Table**: switch of display of [regression coefficients](#koeffitsienty-regressii) to the *Table* form.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_tree_default.svg) **Tree**: switch of display of [regression coefficients](#koeffitsienty-regressii) to the *Tree* form.
* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_zero_default.svg) **Zero values**: show/hide zero values.

#### Model Steps Area

* ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_building-steps_default.svg) **Model steps**: show/hide [model steps](#shagi-postroeniya).

### Visualizer Areas

#### Model Info

Model indicators are described in the table:

| Indicator | Description |
|:------------------------|:-----------------------------------------------|
| ![Logical](./../../images/icons/common/data-types/boolean_default.svg) Constant | [Dependent variable](https://wiki.loginom.ru/articles/output-variable.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) -2 Log Likelihood | -2 Logarithm of the [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) R2 | [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) R2 adj. | [Determination coefficient adjusted](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) |
| ![Integer](./../../images/icons/common/data-types/integer_default.svg)[Number of degrees of freedom](https://wiki.loginom.ru/articles/degrees-of-freedom.html) | Number of independently varied values of indicator |
| ![Real](./../../images/icons/common/data-types/float_default.svg) [Significance](https://wiki.loginom.ru/articles/significance-regr.html) | Degree of statistic link of the [input](https://wiki.loginom.ru/articles/input-variable.html) (set of the input ones) and [output variables](https://wiki.loginom.ru/articles/output-variable.html) of regression model |
| ![Real](./../../images/icons/common/data-types/float_default.svg) AIC | [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) AICc | [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) BIC | [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html) |
| ![Real](./../../images/icons/common/data-types/float_default.svg) HQC | [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html) |

#### Regression Coefficients

Coefficients are described in the table:

| Coefficient | Description |
|:--------------------|:----------|
| Coefficient | Characteristics of relation between dependent *y* and [independent variable](https://wiki.loginom.ru/articles/input-variable.html) *x* |
| [Standard error](https://wiki.loginom.ru/articles/standard-estimation-error.html) | Measure of spread of the observation data from the modeled values |
| T-statistics | Standard error ratio of the estimated coefficient to its absolute value |
| [Significance](https://wiki.loginom.ru/articles/significance-regr.html) | Degree of statistic link of the input (set of the input ones) and output variables of regression model |

Regression coefficients can be represented in the ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_table-view_default.svg) *Table* (refer to Figure 1) or ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_tree_default.svg) *Tree* form (refer to Figure 2).

![Table representation mode.](./readme-1.png)

![Tree representation mode.](./readme-2.png)

#### Model Steps

It is rational to enable the ![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_building-steps_default.svg) *Steps* construction area only if the algorithm that is based on the measure processing mode has been selected when configuring the Logistic Regression node in the Factor selection and protection against overfitting parameter.

![](./../../images/icons/common/toolbar-controls/toolbar-controls_18x18_building-steps_default.svg) *Model steps* area consists of the following fields:

| Field | Description |
|:----------------|:----------------------------------------------------------------------------|
| Model | The tree of models in which the models created by the algorithm in the training process are displayed. It appears when measures are selected. Only one final model will be available in this field for the algorithms that do not support processing of measures. Clicking on the ![](./../../images/icons/common/toolbar-controls/building-steps_default.svg) *Model steps* area with the left mouse button, it is possible to select display of the [information on the selected model](#informatsiya-o-modeli) (if corresponding checkbox has been selected), and also [regression coefficients](#koeffitsienty-regressii). |
| Indicator | Value of the selected indicator for the current model. |
| Field change | It displays whether the measure has been added or deleted ("+" means that the measure has been added to the model, and "-" shows that the measure has been deleted from the model). |
| Fields | Current model fields. |

There are three model types:

* **Null model**: the initial model of the algorithm operation.
* **Intermediate model**: the model created by the algorithm in the training process.
* **Final model**: the model that has been considered by the algorithm as the best one, and the further actions will not bring about the model improvement.

The indicators available for selection:

* -2 Log Likelihood;
* AIC;
* AICc;
* BIC;
* HQC.