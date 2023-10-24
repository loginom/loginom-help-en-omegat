---
description: Компонент корреляционный анализ в Loginom. Коэффициенты корреляции (Пирсона, Tay-b Кендалла, Спирмена). Оценка зависимости факторов. Мастер настройки.
---
# ![ ](./../../images/icons/components/corr-analysis_default.svg)Correlation Analysis

## Description

Компонент на основании вычисляемых коэффициентов корреляции выявляет взаимосвязь между рядами данных входного набора. It is used to access the supposed dependence of factors.

%spoiler%Example:%spoiler%

Let's perform the correlation analysis based on the small table that contains data on the sales number of four types of goods by dates.

Source table:

| Date | Spaghetti | Tomato paste | Pasta | Coffee |
| :-------- | ----------------: | ---------------------------: | ----------------: | --------: |
| 02.09.17 | 10 | 20 | 15 | 25 |
| 03.09.17 | 12 | 22 | 12 | 26 |
| 04.09.17 | 14 | 25 | 9 | 26 |
| 05.09.17 | 13 | 24 | 10 | 25 |
| 06.09.17 | 14 | 25 | 9 | 24 |
| 07.09.17 | 14 | 25 | 9 | 23 |
| 08.09.17 | 12 | 21 | 12 | 24 |
| 09.09.17 | 10 | 18 | 14 | 23 |
| 10.09.17 | 16 | 24 | 9 | 22 |
| 11.09.17 | 13 | 21 | 9 | 23 |
| 12.09.17 | 17 | 25 | 7 | 25 |

Определим корреляцию товара "Спагетти" с остальными товарами на основе коэффициентов Пирсона (в мастере настройки узла поле "Спагетти" отметим в "Наборе 1", а остальные товары - в "Наборе 2").

Output table:

| Caption | Caption | Pearson coefficient |
| :---------- | :---------- | ---------------: |
| Spaghetti | Tomato paste | 0,83 |
| Spaghetti | Pasta | -0,93 |
| Spaghetti | Coffee | -0,12 |

As shown in the table, the sale series of the "Tomato paste" item of goods is distinguished by very high positive correlation, whereas the "Pasta" item of goods is characterized by the negative correlation. Thus, it is possible to draw a conclusion that the "Tomato paste" item of goods is a complement product, whereas the "Pasta" item of goods is a replacement product. The sale correlation of the "Coffee" item of goods with the "Spaghetti" item of goods is negative but the absolute correlation value is small, consequently, it is possible to draw a conclusion that there is no interrelation between sales of these items of goods.

%/spoiler%

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) **Output data set**: the table that contains information on correlation between the fields. It has the following structure:
   * Required fields:
      * **Fields|Name**: the name of the first field in the correlation pair.
      * **Fields|Caption**: the caption of the first field in the correlation pair.
      * **Fields|Name**: the name of the second field in the correlation pair.
      * **Fields|Caption**: the caption of the second field in the correlation pair.
   * There are the following fields the availability of which is set by a user:
      * **Пирсона** — коэффициенты корреляции Пирсона.
      * **Correlation function Ф.** — [экстремумы взаимнокорреляционной функции](https://wiki.loginom.ru/articles/ccf-max.html).
      * **Лаг К.Ф.** —  величина смещения, при которой экстремум ВКФ был получен. Значение лага выводится только для взаимнокорреляционной функции.
      * **Tay-b Кендалла** — [коэффициенты ранговой корреляции Кендалла](https://wiki.loginom.ru/articles/rank-correlation-kendall.html).
      * **Spearman**: the Spearman's rank correlation coefficient.

## Wizard

It includes the list of checkboxes that enable to select coefficients for correlation estimation:

* **Pearson correlation coefficient** enables to determine the strength and direction of the linear relationship between two processes that occur simultaneously.
* **Kendall's Tau-b coefficient**: the rank correlation coefficient that is used to identify the quantitative relationship between variables if they can be ranked. It is recommended to use for categorical data.
* **Extremum of cross-correlation function** enables to calculate the maximum absolute value of the correlation coefficients of two processes calculated for all possible time shifts. It should be applied if it is required to determine the linear relationship between two processes, or parts of the processes that occur with a certain time lag.
* **Spearman's rank correlation coefficient** is another version of the rank correlation. Corresponding ranks, not numerical values, are used for numerical fields to estimate the connection strength. Therefore, the Spearman coefficient will be 1 or -1 for any monotone sequences.

It is possible to select the series in the table to analyze interconnection. For each field from "Set 1" selected with a checkbox, correlation coefficients with the fields selected with checkboxes in "Set 2" will be calculated.

**See also:**

* [Мультиколлинеарность](https://wiki.loginom.ru/articles/multicollinearity.html)