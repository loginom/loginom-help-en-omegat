# Toolbar

It contains the following control elements:

* ![Filtration](../../images/icons/toolbar-controls/filter_default.svg) **Filtration**: show/hide [*Filtration panel*](./filter-panel.md).
* ![Detailing](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) **Detailing**: show/hide [*Detailing panel*](./details.md).
* **Detailing method**: switch the *Detailing* display options. При нажатии на кнопку происходит циклическая смена способов *Детализации*, также способ *Детализации* можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). *Detailing* methods:
   * ![Table](../../images/icons/cube/detailing/browse_default.svg) Table;
   * ![Form](../../images/icons/cube/detailing/form_default.svg) Form;
   * ![Statistics](../../images/icons/cube/detailing/stat_default.svg) Statistics.
* **Индикатор** — переключить варианты отображения *Индикаторов*. При нажатии на кнопку происходит циклическая смена *Индикаторов*, также *Индикатор* можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Список *Индикаторов*:
   * ![Значимость](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/importance_default.svg) Значимость;
   * ![Гистограмма](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/histogram_default.svg) Гистограмма;
   * ![Minimum](../../images/icons/toolbar-controls/min_default.svg) Minimum;
   * ![Maximum](../../images/icons/toolbar-controls/max_default.svg) Maximum;
   * ![Среднее](../../images/icons/toolbar-controls/avg_default.svg) Среднее;
   * ![Sum](../../images/icons/toolbar-controls/sum_default.svg) Sum;
   * ![Standard deviation](../../images/icons/toolbar-controls/stddev_default.svg) [Standard deviation](https://wiki.loginom.ru/articles/mean-square-deviation.html);
   * ![Размах](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/range_default.svg) Размах;
   * ![Пропуски](../../images/icons/toolbar-controls/null-count_default.svg) Пропуски;
   * ![Value](../../images/icons/toolbar-controls/count_default.svg) Value;
   * ![Number of unique values](../../images/icons/toolbar-controls/unique-count_default.svg) Number of unique values;
   * ![Cluster center](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/cluster-center_default.svg) Cluster center.
* ![Значимость цветом](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/heatmap_default.svg) **Значимость цветом** — показать/скрыть значимость как тепловую карту. This option is reset and becomes inactive when *Histogram* indicator is selected.
* ![Show null column in histograms ](../../images/icons/toolbar-controls/null-count_default.svg) **Show null column in histograms**: show/hide *null* column. В гистограммах [*Основной таблицы*](./main-table.md) и *Панели сравнения кластеров* изменяется видимость столбца с пропусками.
* ![Show "Other" column in histograms](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/residue-count_default.svg) **Show "Other" column in histograms**: show/hide *Other* column. В дискретных гистограммах *Основной таблицы* изменяется видимость столбца *Прочие*.
* ![Показывать генеральную совокупность в гистограммах](../../images/icons/toolbar-controls/sum_default.svg) **Показывать генеральную совокупность в гистограммах** — показать/скрыть [генеральную совокупность](https://wiki.loginom.ru/articles/general-population.html).
* **Масштабирование гистограмм** — переключить режим масштабирования гистограмм. При нажатии на кнопку происходит циклическая смена режимов масштабирования гистограмм, также режим можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Список режимов масштабирования:
   * ![Абсолютные частоты](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/size-scale_default.svg) **Абсолютные частоты** — столбцы отражают реальное количество значений. Столбцы генеральной совокупности всегда выше или равны столбцов кластеров.
   * ![Относительные частоты](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/bar-scale_default.svg) **Относительные частоты** — столбцы генеральный совокупности одинаковые и растянуты до высоты ячейки. Столбцы кластеров имеют высоту: `Количество значений в столбце/Количество значений в столбце генеральной совокупности`.
   * ![Плотность вероятности](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/no-scale_default.svg) **Плотность вероятности** — гистограммы [кластера](https://wiki.loginom.ru/articles/cluster.html) и генеральной совокупности не связаны с друг другом, и имеют одинаковую площадь. Гистограммы в ячейке таблицы или во вкладке сравнения нормированы по высоте самого высокого столбца.
* **Положение кластеров в таблице** — переключить положение кластеров в таблице. При нажатии на кнопку происходит циклическая смена положений кластеров в таблице, также сменить положение кластеров в таблице можно в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). The following positions of clusters are possible:
   * ![Кластеры в строках](../../images/icons/toolbar-controls/rows_default.svg) Кластеры в строках;
   * ![Clusters in columns](../../images/icons/toolbar-controls/columns_default.svg) Clusters in columns.
