# ![Отчет по регрессии](../../images/icons/view_types/logregressreport_default.svg) Отчет по регрессии

Визуализатор *Отчет по регрессии* для компонента [*Логистическая регрессия*](../../processors/datamining/logistic-regression/README.md) отображает статистические параметры и результаты статистических тестов для анализа регрессионных моделей.

This visualizer consists of three areas:

* [Информации о модели](#informatsiya-o-modeli);
* [Regression coefficients](#koeffitsienty-regressii);
* [Шагов построения](#shagi-postroeniya).

More detailed infomation how to enable this visualizer is provided in the [article](../README.md).

## Interface

### Operations

#### Область Информация о модели

* ![](../../images/icons/toolbar-controls/info_default.svg) **Информация о модели** — отображение/скрытие информации о модели.

#### Regression Coefficients Area

* ![](../../images/icons/toolbar-controls/table-view_default.svg) **Таблица** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид *Таблица*;
* ![](../../images/icons/toolbar-controls/tree_default.svg) **Дерево** — переключение отображения [коэффициентов регрессии](#koeffitsienty-regressii) в вид *Дерево*;
* ![](../../images/icons/toolbar-controls/zero_default.svg) **Нулевые значения** — отображение/скрытие нулевых значений;

#### Область Шаги построения

* ![](../../images/icons/toolbar-controls/building-steps_default.svg) **Шаги построения** — отображение/скрытие [шагов построения](#shagi-postroeniya) модели.

### Visualizer Areas

#### Информация о модели

Описание показателей модели представлено в таблице:

| Показатель | Description |
|:------------------------|:-----------------------------------------------|
| ![Логический](../../images/icons/data-types/boolean_default.svg) Константа | [Зависимая переменная](https://wiki.loginom.ru/articles/output-variable.html) |
| ![Real](../../images/icons/data-types/float_default.svg) -2 Log Likelihood | -2 Logarithm of the [likelihood function](https://wiki.loginom.ru/articles/plausibility-function.html) |
| ![Real](../../images/icons/data-types/float_default.svg) R2 | [Determination coefficient](https://wiki.loginom.ru/articles/coefficient-of-determination.html) |
| ![Вещественный](../../images/icons/data-types/float_default.svg) R2 корр. | [Коэффициент детерминации скорректированный](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) |
| ![Вещественный](../../images/icons/data-types/float_default.svg) [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html) | Критерий согласия для проверки гипотезы о законе распределения исследуемой случайной величины |
| ![Целый](../../images/icons/data-types/integer_default.svg) Число степеней свободы | Number of independently varied values of [indicator](https://wiki.loginom.ru/articles/attribute.html) |
| ![Вещественный](../../images/icons/data-types/float_default.svg) [Значимость](https://wiki.loginom.ru/articles/significance-regr.html) | Степень статистической связи между [входной](https://wiki.loginom.ru/articles/input-variable.html) (набором входных) и [выходной переменными](https://wiki.loginom.ru/articles/output-variable.html) регрессионной модели. |
| ![Real](../../images/icons/data-types/float_default.svg) AIC | [Akaike information criterion](https://wiki.loginom.ru/articles/aic.html) |
| ![Real](../../images/icons/data-types/float_default.svg) AICc | [Akaike information criterion corrected](https://wiki.loginom.ru/articles/aicc.html) |
| ![Real](../../images/icons/data-types/float_default.svg) BIC | [Bayesian information criterion](https://wiki.loginom.ru/articles/bic.html) |
| ![Real](../../images/icons/data-types/float_default.svg) HQC | [Hannan-Quinn information criterion](https://wiki.loginom.ru/articles/hq.html) |

#### Regression Coefficients

Description of coefficients is provided in the table:

| Coefficient | Description |
|:--------------------|:----------|
| Coefficient | Характеристика связи между зависимой *y* и [независимой переменной](https://wiki.loginom.ru/articles/input-variable.html) *x* |
| [Стандартная ошибка](https://wiki.loginom.ru/articles/standard-estimation-error.html) | Мера разброса данных наблюдений от смоделированных значений |
| [Коэффициент Вальда](https://wiki.loginom.ru/articles/wald-test.html) | Оценка значимости коэффициента при независимой переменной модели |
| [Significance](https://wiki.loginom.ru/articles/significance-regr.html) | Degree of statistic link of the input (set of the input ones) and output variables of regression model |
| [Odds ratio](https://wiki.loginom.ru/articles/odds-ratio.html) | Отношение вероятности того, что событие произойдет к вероятности того, что событие не произойдет |
| CI lower bound | Lower bound of [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html) |
| CI upper bound | Upper bound of confidence interval |
| Порог значимости | Degree of statistic link of the input (set of the input ones) and output variables of regression model |

Коэффициенты регрессии могут быть представлены в виде ![](../../images/icons/toolbar-controls/table-view_default.svg) *Таблицы* (см. рисунок 1) или ![](../../images/icons/toolbar-controls/tree_default.svg) *Дерева* (см. Figure 2).

![Режим отображения Таблица.](./readme-1.png)

![Режим отображения Дерево.](./readme-2.png)

#### Шаги построения

Область ![](../../images/icons/toolbar-controls/building-steps_default.svg) *Шаги построения* имеет смысл включать только в том случае, если при настройке узла *Логистическая регрессия* в параметре *Отбор факторов и защита от переобучения* был выбран алгоритм, который подразумевает режим обработки фактов.

Область ![](../../images/icons/toolbar-controls/building-steps_default.svg) *Шаги построения* состоит из следующих полей:

| Field | Description |
|:----------------|:----------------------------------------------------------------------------|
| Model | Дерево моделей, в котором отображаются созданные алгоритмом модели в процессе обучения. Оно появляется тогда, когда отбираются факты. Для алгоритмов, которые не поддерживают обработку фактов, в этом поле будет только одна финальная модель. Щелчком левой кнопки мыши по области ![](../../images/icons/toolbar-controls/building-steps_default.svg) *Шаги построения* можно выбрать отображение [информации о выбранной модели](#informatsiya-o-modeli) (если установлен соответствующий флажок), а также [коэффициенты регрессии](#koeffitsienty-regressii) |
| Показатель | Значение выбранного показателя для текущей модели |
| Изменение поля | Отображает добавлен или удален был факт ("+" показывает, что факт был добавлен в модель, а "-" означает, что факт удален из модели) |
| Fields | Current model fields |

There are three model types:

* **Нулевая модель** — начальная модель работы алгоритма;
* **Промежуточная модель** — модель, которую создал алгоритм в процессе обучения;
* **Финальная модель** — модель, которую алгоритм посчитал наилучшей, и дальнейшие действия не приведут к улучшению модели.

Доступные для выбора показатели:

* -2 Log Likelihood;
* AIC;
* AICc;
* BIC;
* HQC.