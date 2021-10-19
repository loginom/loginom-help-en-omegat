# ![Filter Measures](../../images/icons/cube/cases/case-filter_default.svg) Filter Measures

It provides for filtration of the measure values for dimension.

## Interface

The dimensions used in the cube are located in the left part of the opened window> In this case, the following default value is set - *(Filter disabled)*.

The measures used in the cube and aggregations applied to them are listed in the right part of the window.

Для фильтрации нужно выбрать требуемое измерение в левой стороне окна, после этого станет активен список используемых в кубе фактов и их тип [агрегации](../../processors/func/aggregation-functions.md). Далее необходимо выбрать факт, по которому будет производиться фильтрация, затем задать условие фильтрации и его значение(я). To apply filtration, it is required to press *Filter* button.

> **Примечание:** в случае применения фильтрации кнопка ![Факты](../../images/icons/toolbar-controls/sum_default.svg)Факты примет оранжевый цвет.

To disable filtration, it is required to select *(Filter disabled)* in the dimensions list and press *Filter* button.

## Filtering Criteria

Ниже приведены пояснения к некоторым задаваемым условиям фильтрации.

* **первые N** — значения измерения сортируются в порядке убывания факта и выбираются первые N значений измерения. Например, можно отобрать первые 10 самых продаваемых товаров или 5 наиболее "удачных" дней месяца.

* **последние N** — значения измерения сортируются в порядке убывания факта и выбираются последние N значений. For example, 10 least popular goods.
* **доля от общего** — значения измерения сортируются в порядке убывания факта. Далее выбирается столько первых значений измерения, сколько в сумме дадут заданную долю от общей суммы. Например, можно отобрать клиентов, приносящих 80% прибыли, или товары, продажи которых составляют 50% от общего объема.

* **в интервале** — результатом отбора будут значения измерений, для которых значение соответствующего факта лежит в заданном интервале.

* **вне интервала** — результатом отбора будут значения измерений, для которых значение соответствующего факта отсутствует в заданном интервале.
