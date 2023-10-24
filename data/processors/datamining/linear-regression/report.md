---
description: Компонент Линейная регрессия в Loginom. Сводка. Критерии Акаике, Байеса, Ханна-Квина. P-значение модели. Коэффициент детерминации.
---
# Summary

The variables provided by the *Summary* port are listed in the table:

| Variable (Caption) | Description |
|:-------|:-------|
| Total samples | Total number of the [samples](https://wiki.loginom.ru/articles/training-sample.html) supplied to the [model](https://wiki.loginom.ru/articles/taught-model.html) input |
| Total selected samples | Number of the samples used in the model |
| Samples in the [training set](https://wiki.loginom.ru/articles/training-set.html) | Number of the samples which are used for the model training |
| [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html) | Value of link between variables of regression model (changes from 0 to 1) |
| [Adjusted determination coefficient](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) | Value of link between variables of regression model (changes from 0 to 1) It differs from not adjusted determination coefficient by the fact that the adjusted determination coefficient can be decreased when entering the variables that do not have considerable impact on the [dependent variable](https://wiki.loginom.ru/articles/output-variable.html) into the regression model. |
| [Number of the model degrees of freedom](https://wiki.loginom.ru/articles/degrees-of-freedom.html) | Number of independently varied values of [indicator](https://wiki.loginom.ru/articles/attribute.html) |
| [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html) | The criterion is used for comparison of the models with different number of parameters when it is required to select the best set of explicative variables. |
| [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html) | The modified Akaike criterion used for the small [samples](https://wiki.loginom.ru/articles/sample.html) when ratio of the number of the samples in it to the number of the model parameters is less than 40. |
| [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html) | The criterion is based on use of [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html), and it is closely connected with the Akaike information criterion |
| [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html) | Alongside with the Akaike and Bayesian criteria, it is specified in the results of assessment of the models with discrete and limited dependent variables |
| [Model P-value](https://wiki.loginom.ru/articles/p-value.html) | Assessment of the model [accuracy](https://wiki.loginom.ru/articles/precision.html). It is probability of the fact that the test statistics value of the used criterion calculated for a sample will exceed the set P-value. |