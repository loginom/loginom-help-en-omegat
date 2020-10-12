# ![ ](../../images/icons/components/factor-analysis_default.svg)Factor Analysis

## Description

The handler is used in order to decrease dimension of factors space. It is required in the cases when the input factors are correlated with each other, namely, they are interdependent. Within the framework of the factor analysis, it is required to select the factors that provide more comprehensive overview of the object properties from a set of measured object features.

At the first stage of the factor analysis it is required to select new indicators that are linear combinations of the previous ones. They "absorb" the most part of the total variableness of the input factors. That's why they contain the most part of the information included into the source data.

It is achieved in the "Factor Analysis" handler using the main components method. It comes down to selection of the new orthogonal frame of reference in the observation space. As the first main component, it is required to select the direction along which the data array has the widest scatter. Each subsequent one is selected to provide the maximum data scatter along it, and to make it orthogonal relative to other main components selected earlier.

%spoiler%Example:%spoiler%

Let's perform the factor analysis of the small table that contains some statistical data by regions:

Source table:

| Region | Population (thous. people) | Proportion of the urban population, % | employed in the economic sphere (thous. people) | Per capita income (rub./mon.) |
| :-------- | --------: | --------: | --------: | --------: |
| The Tambov Region | 1269 | 58,4 | 532,4 | 1187,1 |
| The Penza Region | 1531 | 64,6 | 674,5 | 936,8 |
| The Rostov Region | 4358 | 67,6 | 1811,8 | 1033,6 |
| The Chita Region | 1259 | 62,4 | 439,5 | 472,9 |
| The Chukotka Autonomous District | 72 | 67,9 | 33,8 | 963,7 |

Table of factors:

| Factor 1 | Factor 2 | Region | Population (thous. people) | Proportion of the urban population, % | employed in the economic sphere (thous. people) | Per capita income (rub./mon.) |
| -------------: | -------------: | :------------ | ------------------------------------: | ---------------------------------------------------: | ------------------------------------------------------: | ----------------------------------------------------: |
| 0,13 | -0,47 | The Tambov Region | 1269 | 58,4 | 532,4 | 1187,1 |
| 0,51 | -0,49 | The Penza Region | 1531 | 64,6 | 674,5 | 936,8 |
| 3,11 | -0,42 | The Rostov Region | 4358 | 67,6 | 1811,8 | 1033,6 |
| 0,18 | -0,88 | The Chita Region | 1259 | 62,4 | 439,5 | 472,9 |
| -0,87 | -0,34 | The Chukotka Autonomous District | 72 | 67,9 | 33,8 | 963,7 |

Table of factor loadings:

| Caption | Factor 1 | Factor 2 |
| :---------- | -------------: | -------------: |
| Population (thous. people) | 0,98 | -0,05 |
| Proportion of the urban population, % | 0,40 | 0,77 |
| employed in the economic sphere (thous. people) | 0,98 | 0,04 |
| Per capita income (rub./mon.) | -0,33 | 0,82 |

%/spoiler%

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table). It is required to set the ![ ](../../images/icons/usage-types/active_default.svg) "Used" designation in the settings of this port for the fields the data of which are subject to the factor analysis.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table). It contains the source table to which factors fields are added.
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table). It contains the table of factor loadings.

## The wizard

* Criterion of Factors Significance:
   * **По собственному значению** — отбираются только факторы с собственными значениями равными или большими 1. Считается, что те факторы, у которых этот показатель меньше 1, не вносят значительного вклада в объяснение результата.
   * **По дисперсии** — факторы отбираются по доле объясняемой дисперсии. В этом случае выбирают столько факторов, чтобы в сумме они объясняли не менее 70-75% дисперсии. В отдельных вариантах порог дисперсии может достигать 85-90%.
   * **Задать число факторов** — количество значимых факторов выбирается аналитиком самостоятельно.

Значение каждого критерия можно задать в специальном поле справа от соответствующей ему радиокнопки.

* Метод получения окончательного решения
   * **Без вращения** — исходные факторы, полученные методом главных компонент, остаются без изменений.
   * **Варимакс** — критерием является упрощение описания каждого фактора. В результате максимизируется нагрузка на каждый фактор относительно небольшого числа переменных, а факторные нагрузки остальных переменных минимизируются. Рекомендуется выбирать, когда требуется обеспечить высокую интерпретируемость результатов факторного анализа.
   * **Квартимакс** — данный критерий упрощает описание каждой переменной, то есть уменьшает число факторов, связанных с этой переменной.
* **Ограничить число выходных факторов** — необязательный флаг, при активации которого можно задать ограничивающее число выходных факторов в соответствующем поле области.
