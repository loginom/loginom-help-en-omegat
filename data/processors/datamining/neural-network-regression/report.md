---
description: Компонент Нейросеть (регрессия) в Loginom. Сводка.
---
# Summary

The variables provided by the *Summary* port are represented in the table:

| Variable (Caption) | Description |
|:-------|:-------|
| ![](./../../../images/icons/common/data-types/integer_default.svg) Total [samples](https://wiki.loginom.ru/articles/training-sample.html) | Total number of the samples supplied to the [model](https://wiki.loginom.ru/articles/taught-model.html) input |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Total selected samples | Number of the samples used in the model |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Samples in [training set](https://wiki.loginom.ru/articles/training-set.html) | Number of the samples which are used for the model training |
| ![](./../../../images/icons/common/data-types/float_default.svg) [The root-mean-square error](https://wiki.loginom.ru/articles/standard-estimation-error.html) of the training set | The training error that reflects the model setting [accuracy](https://wiki.loginom.ru/articles/precision.html) of the training set. It is applied to lay emphasis on significant errors and select the model that provides less number of significant forecast errors. |
| The ![](./../../../images/icons/common/data-types/float_default.svg) [mean absolute error](https://wiki.loginom.ru/articles/mae.html) of the training set; | It is used for forecast accuracy assessment. It reflects the size of error as compared with the series values. |
| The ![](./../../../images/icons/common/data-types/float_default.svg) [mean relative error](https://wiki.loginom.ru/articles/mrpe.html) of the training set | The training error that reflects the size of difference between measure and forecast. The closer to zero, the less the error is |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [G-test](https://ru.qwe.wiki/wiki/G-test) | G-Test Statistics Value |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Input field &#124; [Number of freedom degrees](https://wiki.loginom.ru/articles/degrees-of-freedom.html) of G-test | The amount of independent data elements used for the statistic performance assessment |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [P-value](https://ru.wikipedia.org/wiki/P-%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D0%B5) of G-test | P-value determined by two previous indicators. Lower P-values match "more significant" factors |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [Mutual information](https://ru.wikipedia.org/wiki/%D0%92%D0%B7%D0%B0%D0%B8%D0%BC%D0%BD%D0%B0%D1%8F_%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F) | Volume of the mutual information between the specified factors (in bits). High values of the mutual information match "more significant" factors |
