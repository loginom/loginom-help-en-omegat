# Output Data Set Structure

The following fields are added in the output data set to the input one:

* ![](../../../images/icons/data-types/string_default.svg) **Class | Prediction** means identification of the predicted class.

* ![](../../../images/icons/data-types/integer_default.svg) **Class ID | Prediction** means identifier of the predicted class.

* ![](../../../images/icons/data-types/string_default.svg) **Class | Fact** means actual fact. The output field of the training data set (this field is displayed only when neural network training).

* ![](../../../images/icons/data-types/integer_default.svg) **ID класса | Факт** - идентификатор, присвоенный фактическому классу (данное поле выводится только при обучении нейросети).

* ![](../../../images/icons/data-types/float_default.svg) **Апостериорная вероятность** - вычисленная по результатам обработки вероятность принадлежности текущего набора параметров прогнозируемому классу.

* ![](../../../images/icons/data-types/float_default.svg) **Индекс Джини** - поскольку в выходном наборе выводится только класс с наибольшей вероятностью, то для того, чтобы оценить, насколько уверенно классификатор назначил класс, на основе апостериорных вероятностей подсчитывается индекс Джини. Данный индекс показывает, насколько неравномерно распределены вероятности назначения различных классов набору входных параметров. Если классификация уверенная и класс-«победитель» имеет вероятность, значительно превышающую вероятности остальных классов, индекс Джини будет близок к 1. В обратной ситуации, когда все вероятности более-менее одинаковые, и лучший класс выбран лишь «формально», по наибольшему значению, то индекс Джини будет близок к нулю, и классификацию в данном случае можно считать неуверенной.
