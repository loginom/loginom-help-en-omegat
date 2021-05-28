# ![ ](../../images/icons/components/coarseclasses_default.svg) Coarse Classes

## Description

The Coarse Classes handler enables to solve the following problems:

* Conversion of the continuous and discrete input fields used for training of the models related to the [binary classification](https://wiki.loginom.ru/articles/binary-classification.html)by means of the binning based on totality-of-evidence approach or [WoE analysis](https://wiki.loginom.ru/articles/coefficient-woe.html) (weights of evidence, WoE). In the result, each source indicator value is replaced with the caption of the binning range with which this value complies. Usage of such conversion results for the binary classification models training (for example, [logistic regression](https://wiki.loginom.ru/articles/logistic-regression.html)) enables to improve their accuracy and resilience to the input data change.
* Reduction of data dimensionality by excluding the indicators with low significance, by decreasing variety of indicator values.
* Восстановление пропусков, когда пропуски образуют отдельную метку интервала квантования или объединяются с соседним, близким по значению WoE-индекса.
* Борьба с выбросами и экстремальными значениями — формирование меток интервала квантования при дискретизации непрерывного поля или объединение редких уникальных значений в одну категорию позволяет решить проблему экстремальных значений и выбросов.
* Упрощение описания исследуемых объектов.

Результатом работы обработчика Конечные классы является преобразование входных столбцов в последовательность интервалов, называемых конечными классами, каждому из которых присваивается определенная метка. Кроме этого, для каждого входного столбца может быть вычислен уровень значимости (отсутствует, очень низкая, низкая, средняя, высокая и очень высокая), на основе которого может производиться отбор переменных в модели бинарной классификации.

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).
* ![ ](../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port. External Binning Bins (Data Table).

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

%spoiler%Data structure:%spoiler%

* ![ ](../../images/icons/data-types/none_default.svg) **Поля исходного набора данных** (значения не изменяются).
* ![ ](../../images/icons/data-types/integer_default.svg) **Поле «<Метка столбца> Номер класса»** – идентификатор конечного класса, целое число (начиная с 0) – столбец создается всегда.
* ![ ](../../images/icons/data-types/string_default.svg) **Поле «<Метка столбца> Метка»** – метка конечного класса, полученная автоматическим путем (числовые границы, если это непрерывная переменная, или перечисление уникальных значений через «;», если переменная дискретная).
* ![ ](../../images/icons/data-types/float_default.svg) **«<Column caption>  Significance» Field.**

%/spoiler%

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Class Parameters (data table).

%spoiler%Data structure:%spoiler%

* ![ ](../../images/icons/data-types/integer_default.svg) **Группа** – номер группы, к которой относится запись в таблице. Каждая группа записей ассоциирована с признаком (полем) исходного набора данных, являющимся входным для узла Конечные классы. Количество записей в группе соответствует числу конечных классов исходного столбца.
* ![ ](../../images/icons/data-types/string_default.svg) **Идентификатор** – имя столбца, под которым он будет обрабатываться в наборе данных. Число столбцов равно числу входных полей узла Конечные классы.
* ![ ](../../images/icons/data-types/string_default.svg) **Метка столбца** – мнемоническое обозначение входного столбца, под которым он будет виден пользователю в базе или хранилище данных. По умолчанию устанавливается название, под которым данный столбец виден в исходном наборе данных.
* ![ ](../../images/icons/data-types/integer_default.svg) **Номер класса** – порядковый номер, присвоенный классу при его формировании в узле Конечные классы.
* ![ ](../../images/icons/data-types/string_default.svg) **Unique value** displays unique values for the discrete fields.
* ![ ](../../images/icons/data-types/string_default.svg) **Метка класса** – идентификатор класса, присвоенный ему при формировании в узле конечные классы. Для числовых столбцов метка класса состоит из верхней и нижней границ класса (для нулевого класса указывается только нижняя граница с предлогом «от…», для класса с максимальным номером указывается верхняя граница с предлогом «до…»). Для категориальных полей, если каждый класс формируется для отдельной категории, то в качестве метки указывается эта категория. Если класс включает несколько категорий, то в метке перечисляются все категории, вошедшие в класс.
* ![ ](../../images/icons/data-types/integer_default.svg) **Число событий** – количество наблюдений в классе, для которых выходное значение – событие.
* ![ ](../../images/icons/data-types/integer_default.svg) **Число не-событий** – количество наблюдений в классе, для которых выходное значение – не-событие.
* ![ ](../../images/icons/data-types/variant_default.svg) **Нижняя граница** – для числовых признаков указывается нижняя граница интервала числом. Для категориальных признаков нижняя граница обозначается двумя категориями – верхней категорией предыдущего класса и нижней категорией текущего.
* ![ ](../../images/icons/data-types/variant_default.svg) **Верхняя граница** – для числовых признаков указывается верхняя граница интервала числом. Для категориальных признаков верхняя граница обозначается двумя категориями – нижней категорией следующего класса и верхней категорией текущего.
* ![ ](../../images/icons/data-types/float_default.svg) **Weight of evidence** means the [WoE coefficient](https://wiki.loginom.ru/articles/coefficient-woe.html) for each class.
* ![ ](../../images/icons/data-types/float_default.svg) **Информационный индекс** – указываются значения информационных [индексов IV](https://wiki.loginom.ru/articles/coefficient-iv.html), вычисленные по каждому входному столбцу. Сумма частных информационных индексов по каждому классу дает общий информационный индекс признака, по которому определяется его значимость.
* ![ ](../../images/icons/data-types/float_default.svg) **Доля класса** – отношение количества наблюдений в классе к общему числу наблюдений.
* ![ ](../../images/icons/data-types/boolean_default.svg) **Upper range bound open**.
* ![ ](../../images/icons/data-types/boolean_default.svg) **Предквантование** – показывает применялось ли предквантование в процессе формирования конечных классов.

%/spoiler%

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Column Significance (Data Table).

%spoiler%Data structure:%spoiler%

* ![ ](../../images/icons/data-types/string_default.svg) **Имя столбца** – идентификатор столбца, под которым он будет обрабатываться в наборе данных. Число столбцов равно числу входных полей узла Конечные классы.
* ![ ](../../images/icons/data-types/string_default.svg) **Метка столбца** – мнемоническое обозначение входного столбца, под которым он будет виден пользователю в базе или хранилище данных. По умолчанию устанавливается название, под которым данный столбец виден в исходном наборе данных.
* ![ ](../../images/icons/data-types/integer_default.svg) **Events count**: count of the events included into this class.
* ![ ](../../images/icons/data-types/integer_default.svg) **Non-events count**: count of the non-events included into this class.
* ![ ](../../images/icons/data-types/integer_default.svg) **Total** means the total number of observations in the class.
* ![ ](../../images/icons/data-types/float_default.svg) **Информационный индекс** – указываются значения информационных [индексов IV](https://wiki.loginom.ru/articles/coefficient-iv.html), вычисленные по каждому входному столбцу.
* ![ ](../../images/icons/data-types/string_default.svg) **Значимость столбца** – уровень значимости входного столбца, определенный на основе информационного индекса. Может принимать значения: отсутствует, очень низкая, низкая, средняя, высокая и очень высокая.

%/spoiler%

## Wizard

Мастер настройки состоит из следующих шагов:

* **[Настройка внешнего разбиения](./fine-classes/configuring-an-external-partition.md)** — появляется, если задан порт *Внешние диапазоны квантования*. Позволяет настроить параметры заранее настроенного внешнего разбиения.

* **[Настройка назначений столбцов](./fine-classes/configure-column-assignments.md)** — позволяет задать назначение столбцам, настройки входного и выходного полей, внешнего разбиения, а также настройки алгоритма для формирования конечных классов входных полей.

* **[Настройка конечных классов](./fine-classes/configuring-the-finite-classes.md)** — позволяет просматривать начальные классы и результаты формирования конечных классов. Предназначена для внесения ручной корректировки в границы (или множества) сформированных конечных классов с целью достижения лучших результатов.
