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
| ![](./../../../images/icons/common/data-types/float_default.svg) [The root-mean-square error](https://wiki.loginom.ru/articles/standard-estimation-error.html) of the training set | Ошибка обучения, показывающая [точность](https://wiki.loginom.ru/articles/precision.html) настройки модели на обучающем множестве. Применяется, когда надо подчеркнуть большие ошибки и выбрать модель, которая дает меньше больших ошибок прогноза |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Средняя абсолютная ошибка](https://wiki.loginom.ru/articles/mae.html) на обучающем множестве | Используется для оценки точности прогноза. Показывает, на сколько велики ошибки в сравнении со значениями ряда |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Средняя относительная ошибка](https://wiki.loginom.ru/articles/mrpe.html) на обучающем множестве | Ошибка обучения, показывающая, на сколько велика разница между фактом и прогнозом. Чем ближе к нулю, тем ошибка меньше. |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [G-test](https://ru.qwe.wiki/wiki/G-test) | G-Test Statistics Value |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Input field &#124; [Number of freedom degrees](https://wiki.loginom.ru/articles/degrees-of-freedom.html) of G-test | Количество независимых элементов данных, которые используются при оценке статистической характеристики |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [P-value](https://ru.wikipedia.org/wiki/P-%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D0%B5) of G-test | Определяемое предыдущими двумя показателями P-значение. Меньшие P-значения соответствуют "более значимым" факторам |
| ![](./../../../images/icons/common/data-types/float_default.svg) Input field &#124; [Mutual information](https://ru.wikipedia.org/wiki/%D0%92%D0%B7%D0%B0%D0%B8%D0%BC%D0%BD%D0%B0%D1%8F_%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F) | Объем взаимной информации между указанными факторами (в битах). Большие значения взаимной информации соответствуют "более значимым" факторам |
