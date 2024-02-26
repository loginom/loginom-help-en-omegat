---
description: Визуализация дубликатов и противоречий в Loginom. Подробная справка по интерфейсу и общим принципам работы в таблице с дубликатами и противоречиями.
---
# ![](./../../images/icons/components/duplicates_default.svg) Duplicates and Contradictions

It is designated for view of duplicate, contradictory records of the source data set.
## Interface

The main window will be opened after addition to the visualizer node (Figure 1):

![The main window of "Duplicates and Contradictions" visualizer.](./images/duplicates-main-window.png)

The main window can be conventionally divided into 2 areas (refer to Figure 1):

1. **Toolbar** contains the following control elements:
   * ![](./../../images/icons/common/toolbar-controls/grid-row-no_default.svg) **Row number**: show/hide continuous row number.
   * ![](./../../images/icons/common/toolbar-controls/rec-no_default.svg) **Record number**: show/hide record number.
   * ![](./../../images/icons/common/toolbar-controls/show-data-type_default.svg) **Data types**: show/hide data types.
   * ![](./../../images/icons/common/toolbar-controls/null-count_default.svg) **Show null values**: show/hide null values.
   * ![](./../../images/icons/common/toolbar-controls/format_default.svg) **Format**: open [format configuration window](./format.md) of data view.
   * ![](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) **Sort**: open data [sorting configuration window](./sorting.md) by columns.
   * ![](./../../images/icons/common/toolbar-controls/filter_default.svg) **Filter**: open [filtration configuration window](./filter.md).
   * ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) ![](./../../images/icons/common/toolbar-controls/down_default.svg) **Search** — ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) find the value: ![](./../../images/icons/common/toolbar-controls/down_default.svg) open [search configuration window](./search.md).
   * ![](./../../images/icons/common/toolbar-controls/export_default.svg) **Export**: export table to the file of the selected format (XLS or HTML). 
   * ![](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Detailing**: show/hide detailing by the table row.
   * **Go to row**: go to the row with the set number (available in the context men).
1. **[Main table](./main-table.md)** contains information on duplicates and contradictions in the source data set.
