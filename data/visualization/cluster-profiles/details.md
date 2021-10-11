
# ![Detailing](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) Detailing

Детализация использует данные исходного набора данных, отфильтрованные по выделенным в основной таблице кластерам. Если выделен кластер *Итого*, тогда набор данных детализации совпадает со входным. Детализация позволяет узнать из каких строк исходного набора данных состоит тот или иной кластер. Для отображения детализированной информации по выделенной ячейке можно использовать следующие визуализаторы:

* ![Таблица](../../images/icons/cube/detailing/browse_default.svg) **Таблица** — данные будут представлены визуализатором [Таблица](../table/README.md), но без возможности фильтрации и без панели детализации;
* ![Форма](../../images/icons/cube/detailing/form_default.svg) **Форма** —  данные будут представлены просмотром отдельной строки, начиная с первой по списку;
* ![Статистика](../../images/icons/cube/detailing/stat_default.svg) **Статистика** — данные будут представлены визуализатором [Статистика](../statistics/README.md).

> **Примечание:** в ![Таблица](../../images/icons/cube/detailing/browse_default.svg) *Таблице* и ![Форма](../../images/icons/cube/detailing/form_default.svg) *Форме* можно менять порядок следования столбцов.

## Интерфейс табличного представления

* ![Номер строки](../../images/icons/toolbar-controls/grid-row-no_default.svg) **Номер строки** — показать/скрыть сквозной номер строки.
* ![Номер записи](../../images/icons/toolbar-controls/rec-no_default.svg) **Номер записи** — переключить отображение столбца с порядковым номером записи в данном отчете.
* ![Типы данных](../../images/icons/toolbar-controls/show-data-type_default.svg) **Типы данных** — переключить отображение иконки типов данных.
* ![Показать значение null](../../images/icons/toolbar-controls/null-count_default.svg) **Показать значение null** — переключить отображение *`<null>`* в ячейках с пропущенными значениями.
* ![Формат](../../images/icons/toolbar-controls/format_default.svg) **Формат** — открыть окно для настройки [формата](../table/format.md) отображения данных.
* ![Сортировка](../../images/icons/toolbar-controls/sort-asc_default.svg) **Сортировка** — открыть окно для настройки [сортировки](../table/sorting.md) данных по столбцам.
* ![Поиск](../../images/icons/toolbar-controls/zoom_default.svg) — произвести поиск следующего вхождения значения, указанного в строке поиска. Поиск можно [настроить](../table/search.md), нажав кнопку ![Раскрыть](../../images/icons/toolbar-controls/down_default.svg).
* ![Export](../../images/icons/toolbar-controls/export_default.svg) **Export to file (XLS)**:
   * **XLS** — сохранить текущее представление в формате Excel.
   * **HTML** — сохранить текущее представление в формате HTML.

Для быстрой сортировки по столбцу нужно нажать на его заголовок. При последовательном нажатии будут применены варианты: по возрастанию, по убыванию, без сортировки. Sorting is possible by several columns. При этом порядок будет указан цифрой в заголовке.

Mouse and navigation panel in the lower part of the visualizer are used for navigation through the table:

* ![На предыдущую](../../images/icons/toolbar-controls/prev_default.svg) — перейти на предыдущую страницу;
* ![На следующую](../../images/icons/toolbar-controls/next_default.svg) — перейти на следующую страницу;
* ![На первую](../../images/icons/toolbar-controls/first_default.svg) — перейти на первую страницу;
* ![На последнюю](../../images/icons/toolbar-controls/last_default.svg) — перейти на последнюю страницу.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons. 50,000 records are displayed on one page.

## Интерфейс представления формы

* ![Номер строки](../../images/icons/toolbar-controls/grid-row-no_default.svg) **Номер строки** — показать/скрыть сквозной номер строки.
* ![Номер записи](../../images/icons/toolbar-controls/rec-no_default.svg) **Номер записи** — переключить отображение столбца с порядковым номером записи в данном отчете.
* ![Типы данных](../../images/icons/toolbar-controls/show-data-type_default.svg) **Типы данных** — переключить отображение иконки типов данных.
* ![Показать значение null](../../images/icons/toolbar-controls/null-count_default.svg) **Показать значение null** — переключить отображение *`<null>`* в ячейках с пропущенными значениями.
* ![На предыдущую](../../images/icons/toolbar-controls/prev_default.svg) — перейти на предыдущую запись;
* ![На следующую](../../images/icons/toolbar-controls/next_default.svg) — перейти на следующую запись;
* ![На первую](../../images/icons/toolbar-controls/first_default.svg) — перейти на первую запись;
* ![На последнюю](../../images/icons/toolbar-controls/last_default.svg) — перейти на последнюю запись.
* ![Export](../../images/icons/toolbar-controls/export_default.svg) **Export to file (XLS)**:
   * **XLS** — сохранить текущее представление в формате Excel.
   * **HTML** — сохранить текущее представление в формате HTML.

## Интерфейс представления статистики

* ![Транспонировать](../../images/icons/toolbar-controls/transform_default.svg) **Транспонировать** — переворот таблицы, при котором наименования полей отображаются в столбцах, а статистические показатели — в строках;
* ![Настройка полей](../../images/icons/toolbar-controls/fields-list_default.svg) **Настройка полей…** — выбор полей набора данных, для которых будут подсчитаны статистические показатели;
* ![Настройка показателей](../../images/icons/toolbar-controls/row-sum_default.svg) **Настройка показателей…** — выбор статистических показателей;
* ![Уникальные значения](../../images/icons/toolbar-controls/execute_default.svg) **Уникальные значения** — подсчитывается количество уникальных значений;
* ![Порядковые статистики](../../images/icons/toolbar-controls/execute_default.svg) **Порядковые статистики** — подсчитываются порядковые статистики;
* ![Гистограмма](../../images/icons/toolbar-controls/toggle-left-panel_default.svg) **Гистограмма** — операция, открывающая детализированное окно с расширенными настройками гистограммы.

> **Примечание:** количество записей набора данных, к которому применяется данный визуализатор, можно узнать в графе *Кол-во строк данных*, расположенной в правой части панели инструментов слева от кнопки ![Гистограмма](../../images/icons/toolbar-controls/toggle-left-panel_default.svg) *Гистограмма*.