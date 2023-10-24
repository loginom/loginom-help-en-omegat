---
description: Компонент факторный анализ в Loginom. Снижение размерности пространства факторов. Взаимозависимые факторы. Метод главных компонент. Мастер настройки.
---
# ![ ](./../../images/icons/components/factor-analysis_default.svg)Factor Analysis

## Description

Компонент применяется с целью понижения размерности пространства факторов. It is required in the cases when the input factors are correlated with each other, namely, they are interdependent. Within the framework of the factor analysis, it is required to select the factors that provide more comprehensive overview of the object properties from a set of measured object features.

At the first stage of the factor analysis, it is required to select new indicators that are linear combinations of the previous ones. They "absorb" the most part of the total variableness of the input factors. That's why they contain the most part of the information included into the source data.

В компоненте "Факторный анализ" это осуществляется с помощью метода главных компонент. It comes down to selection of the new orthogonal frame of reference in the observation space. As the first main component, it is required to select the direction along which the data array has the widest scatter. Each subsequent one is selected to provide the maximum data scatter along it, and to make it orthogonal relative to other main components selected earlier.

%spoiler%Example:%spoiler%

Let's perform the factor analysis of the small table that contains some statistical data by regions:

Source table:

| Region | Population (thous. people) | Proportion of the urban population, % | People employed in the economic sphere (thous. people) | Per capita income (rub./mon.) |
| :-------- | --------: | --------: | --------: | --------: |
| The Tambov Region | 1269 | 58,4 | 532,4 | 1187,1 |
| The Penza Region | 1531 | 64,6 | 674,5 | 936,8 |
| The Rostov Region | 4358 | 67,6 | 1811,8 | 1033,6 |
| The Chita Region | 1259 | 62,4 | 439,5 | 472,9 |
| The Chukotka Autonomous District | 72 | 67,9 | 33,8 | 963,7 |

Применим компонент "Факторный анализ" к исходной таблице, создав соответствующий узел и задав ему параметр "Используемое" для столбцов "Население (тыс. чел.)", "Доля городского населения, %", "Занятых в экономике (тыс. чел.)", "Доходы на человека (руб./мес.)" в настройках входного порта. <br/>
В мастере настройки зададим параметры: "Критерий значимости фактора" — "По собственному значению" с порогом собственного значения 1, "Метод вращения" — "Без вращения". Ограничим число выходных факторов равным 2.

Table of factors:

| Factor 1 | Factor 2 | Region | Population (thous. people) | Proportion of the urban population, % | People employed in the economic sphere (thous. people) | Per capita income (rub./mon.) |
| -------------: | -------------: | :------------ | ------------------------------------: | ---------------------------------------------------: | ------------------------------------------------------: | ----------------------------------------------------: |
| -0,40 | -1,87 | The Tambov Region | 1269 | 58,4 | 532,4 | 1187,1 |
| -0,04 | 0,02 | The Penza Region | 1531 | 64,6 | 674,5 | 936,8 |
| 1,93 | 0,23 | The Rostov Region | 4358 | 67,6 | 1811,8 | 1033,6 |
| -0,71 | 1,06 | The Chita Region | 1259 | 62,4 | 439,5 | 472,9 |
| -0,78 | 0,55 | The Chukotka Autonomous District | 72 | 67,9 | 33,8 | 963,7 |

Table of factor loadings:

| Caption | Factor 1 | Factor 2 |
| :---------- | -------------: | -------------: |
| Population (thous. people) | 0,97 | 0,01 |
| Proportion of the urban population, % | 0,41 | 0,67 |
| People employed in the economic sphere (thous. people) | 0,98 | -0,03 |
| Per capita income (rub./mon.) | 0,33 | -0,77 |

Таким образом, опираясь на существующую взаимосвязь факторов (корреляцию), мы понизили размерность пространства факторов исходной таблицы с 4 до 2.

%/spoiler%

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table). It is required to set ![ ](./../../images/icons/common/usage-types/active_default.svg) "Used" designation in the settings of this port for the fields the data of which are subject to the factor analysis.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table). It contains the source table to which factors fields are added.
* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table). It contains the table of factor loadings.

## Wizard

* Criterion of factors significance:
   * **By own value**: only factors with own values equal or exceeding 1 are selected. It is considered that the factors with the value less than 1 don't contribute significantly to the result explanation.
   * **По дисперсии** — факторы отбираются по доле объясняемой несмещённой дисперсии. In this case, it is required to select the number of factors that in sum would enable to explain not less than 70-75% of variance. В отдельных вариантах порог несмещенной дисперсии может достигать 85-90%.
   * **Set the factor number**: the number of the significant factors is selected by an analyst independently.

It is possible to set the value of each criterion in the special field to the right of the radio button corresponding to it.

* Method of receipt of the final decision
   * **No rotation**: the source factors received by the main components methods remain unchanged.
   * **Varimax**: criterion is simplification of description of each factor. In the result, the loading on each factor with respect to relatively small number of variables is maximized, and factor loadings of other variables is minimized. It is recommended to choose when it is required to provide the high interpretability level of the factor analysis results.
   * **Quartimax**: this criterion simplifies description of each variable, namely, it decreases the number of factors connected with this variable.
* **Limit output factors number**: an optional checkbox activation of which enables to set the limiting number of output factors in the corresponding field of the area.
