---
description: Компонент Нейросеть (классификация) в Loginom. Выход нейросети. Индекс Джини. Апостериорная вероятность.
---
# Neural Network Output

The following fields are added in the output data set to the input one:

| Caption | Description |
|:-------|:-------|
| ![](./../../../images/icons/common/data-types/string_default.svg) Class &#124; Forecast | Identification of the predicted class |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Class ID &#124; Forecast | Identifier of the predicted class |
| ![](./../../../images/icons/common/data-types/string_default.svg) Class &#124; Measure | Actual class. The output field of the training data set (this field is displayed only while *Neural Network* training). |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Class ID &#124;Measure | The identifier assigned to the actual class (this field is displayed only while *Neural Network* training). |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Posterior probability](https://wiki.loginom.ru/articles/posterior-probabilit.html) | The probability of the current parameters set assignment to the predicted class calculated according to the results of processing. |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Gini index](https://wiki.loginom.ru/articles/gini-index.html) | It displays the nature of change of one value relative to the change of another one. |