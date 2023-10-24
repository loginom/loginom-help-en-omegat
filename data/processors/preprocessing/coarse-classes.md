---
description: Компонент Конечные классы в Loginom. Модели бинарной классификации. WoE-анализ. Сокращение размерности данных.  Мастер настройки. Восстановление пропусков. Упрощение описания исследуемых объектов.
---
# ![ ](./../../images/icons/components/coarseclasses_default.svg) Coarse Classes

## Description

Компонент Конечные классы предназначен для решения следующих задач:

* Преобразование непрерывных и дискретных входных полей, используемых для построения моделей [бинарной классификации](https://wiki.loginom.ru/articles/binary-classification.html), путем [квантования](https://wiki.loginom.ru/articles/binning.html) на основе метода совокупности доказательств или [WoE-анализа](https://wiki.loginom.ru/articles/weight-of-evidence.html) (weights of evidence, WoE). In the result, each source indicator value is replaced with the caption of the binning range with which this value complies. Использование результатов такого преобразования для построения моделей бинарной классификации (например, [логистической регрессии](https://wiki.loginom.ru/articles/logistic-regression.html)), позволяет повысить их точность и устойчивость к изменению входных данных.
* Reduction of data dimensionality by excluding the indicators with low significance, by decreasing variety of indicator values.
* Null data recovery when null data forms a separate binning range caption, or it is joined with the nearest one that is close by the WoE coefficient value.
* The struggle against outliers and extreme values is based on formation of the binning range captions during discretization of the continuous field or union of rare unique values into one category that enables to solve the problem of extreme values and outliers.
* Simplification of description of the objects under study.

Результатом работы узла *Конечные классы* является преобразование входных столбцов в последовательность интервалов, называемых *конечными классами*, каждому из которых присваивается определенная метка. Besides, the significance level can be calculated for each input column (none, very low, low, mean, high and very high) according to which it is possible to select variables to the binary classification models.

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).
* ![ ](./../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port. External binning ranges (data table).

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

%spoiler%Data structure:%spoiler%

* ![ ](./../../images/icons/common/data-types/none_default.svg) **The source data set fields** (values are not changed).
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **<Метка столбца> Номер класса** – идентификатор конечного класса, целое число (начиная с 0) – столбец создается всегда.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **<Метка столбца> Метка** – метка конечного класса, полученная автоматическим путем (числовые границы, если это непрерывная переменная, или перечисление уникальных значений через «;», если переменная дискретная).
* ![ ](./../../images/icons/common/data-types/float_default.svg) **<Метка столбца> Значимость.**

%/spoiler%

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Class parameters (data table).

%spoiler%Data structure:%spoiler%

* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Group**: the number of the group to which the table record relates. Каждая группа записей ассоциирована с признаком (полем) исходного набора данных, являющимся входным для узла *Конечные классы*. The number of the group records meets the number of the coarse classes of the source column.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Identifier**: the column name under which it will be processed in the data set. Число столбцов равно числу входных полей узла *Конечные классы*.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Column caption**: the mnemonic symbol of the input column under which it will be visible for a user in the database or data warehouse. The name under which this column is visible in the source data set is set by default.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Номер класса** – порядковый номер (идентификатор), присвоенный классу при его формировании в узле *Конечные классы*.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Unique value** displays unique values for the discrete fields.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Метка класса** – метка класса, присвоенная ему при формировании в узле *Конечные классы*. The class caption of the numeric columns consists of the upper and lower class bounds (only the lower bound is specified for the null class with "from..." preposition, the upper bound is specified for the class with the maximum number with "to..." preposition). For categorical fields: if each class is generated for a separate category, it is required to specify this category as a caption. If the class includes several categories, it is required to list all categories included into the class in the caption.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Events count**: count of the observations in the class for which the output value is an event.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Non-events count**: count of the observations in the class for which the output value is a non-event.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Доля событий** – отношение *Числа событий* к общему количеству *Числа событий* и *Числа не-событий*.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Доля не-событий** – отношение *Числа не-событий* к общему количеству *Числа событий* и *Числа не-событий*.
* ![ ](./../../images/icons/common/data-types/variant_default.svg) **Lower bound**: a number is used to denote the lower bin bound for the numeric indicators. The lower bound is denoted by two categories for categorical indicators, namely, the upper category of the previous class and the lower category of the current class.
* ![ ](./../../images/icons/common/data-types/variant_default.svg) **Upper bound**: a number is used to denote the upper bin bound for the numeric indicators. The upper bound is denoted by two categories for categorical indicators, namely, the lower category of the next class and the upper category of the current class.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Weight of evidence**: the [WoE coefficient](https://wiki.loginom.ru/articles/weight-of-evidence.html) for each class.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Information value**: the values of information [values IV](https://wiki.loginom.ru/articles/information-value.html) calculated for each input column are specified. The sum of quotients of information values for each class provides the total information value of the indicator by which its significance is defined.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Class rate**: the ratio of observations number in the class to the total count of observations.
* ![ ](./../../images/icons/common/data-types/boolean_default.svg) **Upper bin bound open**.
* ![ ](./../../images/icons/common/data-types/boolean_default.svg) **Prequantization** shows whether prequantization has been used in the process of the coarse classes generation.

%/spoiler%

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Column Significance (Data Table).

%spoiler%Data structure:%spoiler%

* ![ ](./../../images/icons/common/data-types/string_default.svg) **Column name**: the column identifier under which it will be processed in the data set. Число столбцов равно числу входных полей узла *Конечные классы*.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Column caption**: the mnemonic symbol of the input column under which it will be visible for a user in the database or data warehouse. The name under which this column is visible in the source data set is set by default.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Events count**: count of the events included into this class.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Non-events count**: count of the non-events included into this class.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Доля событий** – отношение *Числа событий* к общему количеству *Числа событий* и *Числа не-событий*.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Доля не-событий** – отношение *Числа не-событий* к общему количеству *Числа событий* и *Числа не-событий*.
* ![ ](./../../images/icons/common/data-types/integer_default.svg) **Total**: the total number of observations in the class.
* ![ ](./../../images/icons/common/data-types/float_default.svg) **Information value**: the values of information [values IV](https://wiki.loginom.ru/articles/information-value.html) calculated for each input column are specified.
* ![ ](./../../images/icons/common/data-types/string_default.svg) **Значимость столбца** – уровень значимости входного столбца, определенный на основе *Информационного индекса*. It can take the following values: none, very low, low, mean, high and very high.

%/spoiler%

## Wizard

The wizard includes the following steps:

* [Настройка внешнего разбиения](./coarse-classes/configure-external-binning.md) — появляется, если задан порт *Внешние диапазоны квантования*. It enables to configure parameters of the preconfigured external binning.

* [Настройка назначений столбцов](./coarse-classes/configure-column-usage-types.md) — позволяет задать назначение столбцам, настройки входного и выходного полей, внешнего разбиения, а также настройки алгоритма для формирования конечных классов входных полей.

* [Настройка конечных классов](./coarse-classes/configure-coarse-classes.md) — позволяет просматривать начальные классы и результаты формирования конечных классов. It is designated for the manual correction of bounds (or sets) of the generated coarse classes to achieve the best results.
