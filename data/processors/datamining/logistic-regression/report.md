---
description: Компонент Логистическая регрессия в Loginom. Сводка. Критерии Акаике, Байеса, Ханна-Квина. P-значение модели.
---
# Summary

The variables provided by the *Summary* port are represented in the table:

| Variable (Caption) | Description |
|:-------|:-------|
| Total [samples](https://wiki.loginom.ru/articles/training-sample.html) | Total number of the samples supplied to the [model](https://wiki.loginom.ru/articles/taught-model.html) input |
| Total selected samples | Number of the samples used in the model |
| Samples in the [training set](https://wiki.loginom.ru/articles/training-set.html) | Number of the samples which are used for the model training |
| The [ root-mean-square error](https://wiki.loginom.ru/articles/standard-estimation-error.html) of the training set | The training error that reflects the model setting [accuracy](https://wiki.loginom.ru/articles/precision.html) of the training set |
| Percentage of [classification](https://wiki.loginom.ru/articles/classification.html) errors of the training set | Percentage of incorrect assignment of objects (observations, events) to one of the classes known in advance  |
| Average cross-[entropy](https://wiki.loginom.ru/articles/maximum-entropy-method.html) of the training set | Quantitative evaluation of difference between two distributions of probabilities |
| Model [train](https://wiki.loginom.ru/articles/training.html) cutoff | Calculated value of [regression](https://wiki.loginom.ru/articles/regression.html) equation (changes from 0 to 1) |
| -2 Logarithm of the [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html) | The function that defines occurrence [probability](https://wiki.loginom.ru/articles/prior-probability.html) of values of the regression model parameters for the set value of [independent variable](https://wiki.loginom.ru/articles/input-variable.html) *x* |
| [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html) | Value of link between variables of regression model (changes from 0 to 1) |
| [Adjusted determination coefficient](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) | Value of link between variables of regression model (changes from 0 to 1) It differs from not adjusted determination coefficient by the fact that the adjusted determination coefficient can be decreased when entering the variables that do not have considerable impact on the [dependent variable](https://wiki.loginom.ru/articles/output-variable.html) into the regression model. |
| [Chi-square](https://wiki.loginom.ru/articles/chi-square-test.html) | [Chi-squared test](https://wiki.loginom.ru/articles/fitting-criterion.html) to [test the hypothesis](https://wiki.loginom.ru/articles/hypotesis-testing.html) concerning the law of distribution of the random value under study |
| [Number of freedom degrees](https://wiki.loginom.ru/articles/degrees-of-freedom.html) of the model | Number of independently varied values of [indicator](https://wiki.loginom.ru/articles/attribute.html) |
| [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html) | The criterion is used for comparison of the models with different number of parameters when it is required to select the best set of [explicative](https://wiki.loginom.ru/articles/input-variable.html) variables. |
| [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html) | The modified Akaike criterion used for the small [samples](https://wiki.loginom.ru/articles/sample.html) when ratio of the number of the samples in it to the number of the model parameters is less than 40. |
| [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html) | The criterion is based on use of [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html), and it is closely connected with the Akaike information criterion |
| [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html) | Alongside with the Akaike and Bayesian criteria, it is specified in the results of assessment of the models with [discrete](https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F) and limited dependent variables |
| [Model P-value](https://wiki.loginom.ru/articles/p-value.html) | Assessment of the model accuracy. It is probability of the fact that the test statistics value of the used criterion calculated for a [sample](https://wiki.loginom.ru/articles/sample.html) will exceed the set P-value. |