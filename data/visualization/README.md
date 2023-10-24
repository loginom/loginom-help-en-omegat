---
description: Визуализаторы в Loginom. Руководство пользователя по быстрому просмотру и визуализации данных. Построение диаграмм, OLAP кубов, таблиц, статистик, качеств и отчётов в Loginom
---
# ![ ](./../images/icons/common/system-object/visualizer_default.svg) Visualizers

Visualizer is a tool that provides convenient option of data view for a user.

Visualizers:

* ![Chart](./../images/icons/common/view_types/chart_default.svg) [Chart](./chart/README.md): a graphical type of data view.
* ![Качество данных](./../images/icons/view_types/data-quality_default.svg) [Качество данных](./data-quality/README.md) — производит комплексную оценку качества данных для каждого поля.
* ![Cube](./../images/icons/common/view_types/cube_default.svg) [Cube](./cube/README.md): a multidimensional type of data view.
* ![Statistics](./../images/icons/common/view_types/stat_default.svg) [Statistics](./statistics/README.md): the statistical indicators of the data set fields.
* ![Table](./../images/icons/common/view_types/browse_default.svg) [Table](./table/README.md): a table type of data view.
* ![Конечные классы](./../images/icons/common/view_types/coarseclasses_default.svg) [Конечные классы](./coarse-classes/README.md) — результаты процедуры оптимального квантования в виде начальных и конечных классов, а также WoE-диаграммы и значений [информационных индексов IV](https://wiki.loginom.ru/articles/information-value.html).
* ![Regression report](./../images/icons/common/view_types/logregressreport_default.svg)/![Regression report](./../images/icons/common/view_types/linregressreport_default.svg) [Regression report](./regression/README.md): statistical indicators and results of the statistical tests for analysis of regression models.
* ![Binary classification assessment](./../images/icons/common/view_types/roc_default.svg) [Binary classification assessment](./binary-classification/README.md): generate data series sets for construction of charts. The optimal cutoffs are defined and classification assessments are calculated. To get series points, it is required to construct histograms of events and non-events distribution in samples.


There are also special visualizers unavailable in *Visualizers configuration* wizard and with constrained functionality. They are suitable for preliminary data study or control:

* ![ ](./../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) [Quick view](./preview/quick-view.md) is available for the active output  port.
* ![ ](./../images/icons/blank.svg) [Preview](./preview/preview.md) is available in the definite wizards, for example: *Import from database*, *JavaScript*.

## How to Use Visualizers

To add any visualizer to the workflow node, it is required to press ![Configure visualizers](./../images/icons/app/node/controls/visualizer_notactive.svg) *Configure visualizers* button. There is a tree of available visualizers to the left in the opened window. A list of the output node ports data of which can be visualized is located to the right.

To add any visualizer, it is required to select the required visualizer in the tree and press *Add visualizer* button near the required output port. It can be also done by dragging the required visualizer with the mouse to the area of *Add visualizer* button near the required output port.

To delete the visualizer, it is required to press ![Delete](./delete.svg) button in the right upper visualizer corner.

> **Important**: It not possible to display data for each port by the selected visualizer. If any visualizer is not supported by the port, it will not be added.

A report can be added for each visualizer. To add the report to the visualizer, it is necessary to select the required visualizer and press *Add to reports* button by creating the required group where applicable or place the report to the existing group.
