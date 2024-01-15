---
description: Визуализатор. Качество данных производит комплексную оценку набора данных.
---

# ![](./../../images/icons/view_types/data-quality_default.svg) Data Quality

The visualizer enables to perform comprehensive data quality assessment for each field.

## Interface

### Operations

* ![Сводка](./../../images/icons/common/toolbar-controls/info_default.svg) **Сводка** — происходит выбор полей для анализа данных, отображаются общие показатели качества данных и обнаруженные проблемы в полях данных.
* ![Дискретные](./../../images/icons/common/data-types/discrete_default.svg) **Дискретные** — обзор качества данных для дискретных полей.
* ![Непрерывные](./../../images/icons/common/data-types/continuous_default.svg) **Непрерывные** — обзор качества данных для непрерывных полей.
* ![Показатели](./../../images/icons/common/toolbar-controls/fields-list-settings_default.svg) **Показатели** — выбор и настройка показателей:
   * ![Выбор показателей](./../../images/icons/common/toolbar-controls/row-sum_default.svg) Выбор показателей — выбираются показатели, которые требуются пользователю для оценки качества данных.
   * ![Настройка показателей](./../../images/icons/common/toolbar-controls/setup_default.svg) Настройки показателей — выбор метода идентификации, настройка параметров метода идентификации, настройка максимального количества пропусков.
* ![Абсолютные или относительные значения](./../../images/icons/switches/roc/relative_default.svg) **Абсолютные или относительные значения** — переключает режим отображения количественных значений с абсолютного на процентный.
* ![Экспорт](./../../images/icons/common/toolbar-controls/export_default.svg) **Экспорт** — позволяет экспортировать файл с отчетом. Экспортируется только текущая таблица ( Сводка, Дискретные, Непрерывные). The name of the format that has been selected for export will be displayed in this menu option:
   * Экспорт в XLS(html);
   * Экспорт в HTML.
* ![Детализация](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Детализация** — показывает входной набор данных, отфильтрованный по заданному показателю для выбранного поля. Например, при выборе ячейки *Пропуски* будут показаны все записи входного набора, которые в выбранном поле имеют пропуски. Детализация доступна только для таблиц *Дискретные* и *Непрерывные*.
* ![Гистограмма](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Гистограмма** — отображает панель с гистограммой по выбранному полю. Гистограмма доступна только для таблиц *Дискретные* и *Непрерывные*.

## Характеристики набора данных

* **Метод определения нетипичных значений** — показывает метод идентификации. По умолчанию устанавливается метод *Стандартное отклонение*
* **Столбцов** — общее количество столбцов в исследуемом наборе.
* **Строк** — общее количество записей в исследуемом наборе.
* **Заполненных полей** — количество полей, которые не содержат пропущенные значения, в процентном соотношении.
* **Полных записей** — количество записей, которые не содержат пропущенные значения, в процентном соотношении.
* **Пригодных столбцов** — количество пригодных столбцов. Столбец считается непригодным, если:
   * процент *Пропусков* выше показателя *Максимальный процент пропусков* (данный показатель задаётся в *Настройках показателей*);
   * *Индекс качества* у дискретного поля равен 0 (поле содержит константу).
* **Индекс EPV** — отношение количества записей к количеству столбцов.

## Настройка таблиц

При открытии визуализатора *Качество данных* отображается таблица *Сводка* со списком полей. С помощью флагов можно выбирать поля, которые понадобятся пользователю для обработки. Таблицы *Дискретные* и Н*епрерывные* в этот момент не доступны.

![Выбор полей для обработки](./images/settings-choice-column.png)

### **Доступные показатели:**

| Indicator | Data kind | Value |
|:----------|:----------:|:--------|
| Quality indicator | ![](./../../images/icons/common/data-types/discrete_default.svg) | Отражает разнообразие значений в поле |
| [Histogram](https://wiki.loginom.ru/articles/histogram.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Предпросмотр гистограммы |
| Extremes | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Количество записей, в которых значение является экстремальным |
| Empty | ![](./../../images/icons/common/data-types/discrete_default.svg) | Количество записей с пустыми значениями |
| Trailing spaces | ![](./../../images/icons/common/data-types/discrete_default.svg) | Количество записей со значениями, которые оканчиваются пробельным символом (показатель не включает в себя, записи, состоящие только из пробельных символов) |
| Range of values | ![](./../../images/icons/common/data-types/discrete_default.svg) | Диапазон значений в формате: *первое ... последнее значение* в отсортированном списке значений |
| Zeros | ![](./../../images/icons/common/data-types/continuous_default.svg) | Количество записей, в которых значения равны нулю |
| [Box plot](https://wiki.loginom.ru/articles/box-plot.html) | ![](./../../images/icons/common/data-types/continuous_default.svg) | Считает показатели: *Наименьший выброс, Нижний квартиль, Медиана, Верхний квартиль, Наибольший выброс, Наблюдаемый максимум* |
| Minimum | ![](./../../images/icons/common/data-types/continuous_default.svg) | Minimum value |
| Среднее | ![](./../../images/icons/common/data-types/continuous_default.svg) | Average value |
| [Mode](https://wiki.loginom.ru/articles/mode.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | The most frequently occurring value[^1] |
| Null count | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Количество записей, в которых отсутствует значение для данного поля |
| Values | ![](./../../images/icons/common/data-types/discrete_default.svg) | Отображает диаграмму, в которой показано разнообразие значений по строкам |
| Outliers | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Количество записей, в которых значение является выбросом |
| Whitespaces | ![](./../../images/icons/common/data-types/discrete_default.svg) | Количество записей со значениями, состоящими только из пробельных символов |
| String lengths | ![](./../../images/icons/common/data-types/discrete_default.svg) | Диапазон длин строк в формате: *минимальная длина - максимальная длина* |
| Negative | ![](./../../images/icons/common/data-types/continuous_default.svg) | Number of records with negative values |
| Infinities | ![](./../../images/icons/common/data-types/continuous_default.svg) | Количество записей, в которых значения равны бесконечности |
| Unique | ![](./../../images/icons/common/data-types/discrete_default.svg) | Count of unique values |
| Maximum | ![](./../../images/icons/common/data-types/continuous_default.svg) | Maximum value |
| [Median](https://wiki.loginom.ru/articles/median.html) | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Median for this field |
| Monotony | ![](./../../images/icons/common/data-types/discrete_default.svg) ![](./../../images/icons/common/data-types/continuous_default.svg) | Показывает однообразие значений поля (*Убывающая, Возрастающая, Не монотонная*) |

[^1]: Если в поле значений моды несколько, то показывается первое из этих значений, и отображается ![](./../../images/icons/viewers/data-quality/mode/sliced_18x18/multi_default.svg)иконка мультимодальности.

### Configure Parameters

В *Настройках показателей* выбирается Метод идентификации и его параметры.

![Configure Parameters](./images/settings-index.png)

После выбора полей и показателей для анализа качества данных нужно активировать кнопку  ![](./../../images/icons/common/toolbar-controls/execute_default.svg) *Рассчитать статистики*.

Теперь становятся доступными таблицы `Дискретные` и `Непрерывные`.

При нажатии на кнопку ![Кнопка](./../../images/icons/common/toolbar-controls/down_default.svg) можно сортировать поля по выбранному показателю, а также убрать/добавить столбцы с показателями.

![Сортировка и удаление/добавление столбцов](./images/add-index-sorting.png)

При выборе ячейки и нажатии кнопки ![Детализация](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) Детализация внизу открывается окно со всеми записями из этой ячейки.

![Cell Detailing](./images/detalization-data-quality.png)

При выборе ячейки и нажатии на кнопку ![Гистограмма](./../../images/icons//common/toolbar-controls/toggle-left-panel_default.svg) Гистограмма в правой части интерфейса открывается окно с более детальной гистограммой. Для дискретных полей можно выбирать значения для отображения:

![Possible values](./images/settings-histogram.png)

## Problems

В колонке *Проблемы* отображается общее значение проблемных строк по данному полю.

### Kinds of Problems

* **Пропуски** — количество записей, содержащих пропущенные значения.
* **Пустые** — количество записей, содержащих пустые значения.
* **Нули** — количество записей, содержащих нулевые значения.
* **Пробелы** — количество записей, содержащих только пробельные символы (пробел, неразрывный пробел, табуляция и т.д.)
* **Бесконечности** — количество записей, содержащих значение *Бесконечность*.
* **Константа** — указывает, что поле содержит только одно уникальное значение, при этом в поле могут быть пропуски.
* **Уникальное** — указывает, что каждое значение в этом поле является уникальным.
* **Ошибка конвертации** — появляется, если поле содержит значения, которые не могут быть приведены к типу данных поля.
* **Не вычислено** — отмечает поля, которые не содержат рассчитанных показателей.
* **Нет данных** — проблема проявляется при анализе пустого набора данных.
* **Экстремальные** — количество записей, в которых значение является экстремальным.
* **Выбросы** — количество записей, в которых значение является выбросом.
* **Negative**: number of records with negative values.
* **Пробелы в конце** — количество записей со значениями, которые оканчиваются пробельным символом (показатель не включает в себя, записи, состоящие только из пробельных символов).

Рядом со значением *Вида проблем* указывается количество строк с такой проблемой, в скобках указывается процентное соотношение проблемных строк к общему количеству строк.

![Kinds of Problems](./images/problem-types-value.png)

