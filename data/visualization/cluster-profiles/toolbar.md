# Панель инструментов

Содержит следующие управляющие элементы:

* ![Фильтрация](../../images/icons/toolbar-controls/filter_default.svg) **Фильтрация** — показать/скрыть [*Панель фильтрации*](./filter-panel.md).
* ![Детализация](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) **Детализация** — показать/скрыть [*Панель детализации*](./details.md).
* **Способ детализации** — переключить варианты отображения *Детализации*. При нажатии на кнопку происходит циклическая смена способов *Детализации*, также способ *Детализации* можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Способы *Детализации*:
   * ![Таблица](../../images/icons/cube/detailing/browse_default.svg) Таблица;
   * ![Форма](../../images/icons/cube/detailing/form_default.svg) Форма;
   * ![Статистика](../../images/icons/cube/detailing/stat_default.svg) Статистика.
* **Индикатор** — переключить варианты отображения *Индикаторов*. При нажатии на кнопку происходит циклическая смена *Индикаторов*, также *Индикатор* можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Список *Индикаторов*:
   * ![Значимость](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/importance_default.svg) Значимость;
   * ![Гистограмма](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/histogram_default.svg) Гистограмма;
   * ![Минимум](../../images/icons/toolbar-controls/min_default.svg) Минимум;
   * ![Максимум](../../images/icons/toolbar-controls/max_default.svg) Максимум;
   * ![Среднее](../../images/icons/toolbar-controls/avg_default.svg) Среднее;
   * ![Сумма](../../images/icons/toolbar-controls/sum_default.svg) Сумма;
   * ![Стандартное отклонение](../../images/icons/toolbar-controls/stddev_default.svg) [Стандартное отклонение](https://wiki.loginom.ru/articles/mean-square-deviation.html);
   * ![Размах](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/range_default.svg) Размах;
   * ![Пропуски](../../images/icons/toolbar-controls/null-count_default.svg) Пропуски;
   * ![Значения](../../images/icons/toolbar-controls/count_default.svg) Значения;
   * ![Количество уникальных значений](../../images/icons/toolbar-controls/unique-count_default.svg) Количество уникальных значений;
   * ![Центр кластеров](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/cluster-center_default.svg) Центр кластеров.
* ![Значимость цветом](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/heatmap_default.svg) **Значимость цветом** — показать/скрыть значимость как тепловую карту. Данная опция сбрасывается и становится неактивной, когда выбран индикатор *Гистограмма*.
* ![Показывать null столбец в гистограммах](../../images/icons/toolbar-controls/null-count_default.svg) **Показывать null столбец в гистограммах** — показать/скрыть *null* столбец. В гистограммах [*Основной таблицы*](./main-table.md) и *Панели сравнения кластеров* изменяется видимость столбца с пропусками.
* ![Показывать столбец "Прочие" в гистограммах](../../images/icons/viewers/cluster-profiles/cluster-profiles/sliced_18x18/residue-count_default.svg) **Показывать столбец "Прочие" в гистограммах** — показать/скрыть столбец *Прочие*. В дискретных гистограммах *Основной таблицы* изменяется видимость столбца *Прочие*.
* ![Показывать генеральную совокупность в гистограммах](../../images/icons/toolbar-controls/sum_default.svg) **Показывать генеральную совокупность в гистограммах** — показать/скрыть [генеральную совокупность](https://wiki.loginom.ru/articles/general-population.html).
* **Масштабирование гистограмм** — переключить режим масштабирования гистограмм. При нажатии на кнопку происходит циклическая смена режимов масштабирования гистограмм, также режим можно переключить в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Список режимов масштабирования:
   * ![Абсолютные частоты](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/size-scale_default.svg) **Абсолютные частоты** — столбцы отражают реальное количество значений. Столбцы генеральной совокупности всегда выше или равны столбцов кластеров.
   * ![Относительные частоты](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/bar-scale_default.svg) **Относительные частоты** — столбцы генеральный совокупности одинаковые и растянуты до высоты ячейки. Столбцы кластеров имеют высоту: `Количество значений в столбце/Количество значений в столбце генеральной совокупности`.
   * ![Плотность вероятности](../../images/icons/viewers/cluster-profiles/histogram/sliced_18x18/no-scale_default.svg) **Плотность вероятности** — гистограммы [кластера](https://wiki.loginom.ru/articles/cluster.html) и генеральной совокупности не связаны с друг другом, и имеют одинаковую площадь. Гистограммы в ячейке таблицы или во вкладке сравнения нормированы по высоте самого высокого столбца.
* **Положение кластеров в таблице** — переключить положение кластеров в таблице. При нажатии на кнопку происходит циклическая смена положений кластеров в таблице, также сменить положение кластеров в таблице можно в выпадающем меню при нажатии на кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg). Возможны следующие положения кластеров:
   * ![Кластеры в строках](../../images/icons/toolbar-controls/rows_default.svg) Кластеры в строках;
   * ![Кластеры в столбцах](../../images/icons/toolbar-controls/columns_default.svg) Кластеры в столбцах.
