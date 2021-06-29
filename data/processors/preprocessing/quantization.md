# ![ ](../../images/icons/components/binning_default.svg) Binning

## Description

The handler bins values range of the selected fields of the source data set to the final interval count. Different algorithms can be used for binning (refer to binning methods further), and [external tables](./quantization/outdoor-ranges.md) with the set binning ranges can be used. Binning is used for the following data types: integer, real and data/time (refer to [data types](../../data/datatype.md)).

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table).
* ![ ](../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port. External Binning Bins (Data Table).

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table). [Description of structure](./quantization/calculated-columns.md) of resulting data set.
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) Binning ranges (data table). [Description of Structure](./quantization/ranges-quantization.md) of Range Table.

## Wizard

The wizard consists of two main areas: area of binning parameters configuration and area of binning results display. Both areas are organized in the table form. Login status row is located below them.

### Area of Binning Parameters Configuration

The area is represented in the table form. Three buttons are located over the fields:

* ![ ](../../images/icons/toolbar-controls/edit_default.svg) Edit: when pressing, it enables to edit the binning parameters for the selected field.
* ![ ](../../images/icons/toolbar-controls/dec-decimal-places-count_default.svg) Decrease decimal: each button pressing decreases bitness of interval bounds by one decimal place.
* ![ ](../../images/icons/toolbar-controls/inc-decimal-places-count_default.svg) Increase decimal: each button pressing increases bitness of interval bounds by one decimal place.

The area table consists of several columns:

* **Field**: contains the initial data set fields to which the binning procedure can be applied. The following field types are used: integer, real, data/time.
* **Method**: the field is represented by the drop-down list to select a binning method:
   * Width: a user can select the bin width and count of bins is automatically calculated as ratio of upper and lower bounds and the set width. The following parameters can be set by selecting corresponding checkboxes:
      * Upper bound — upper bound of the highest interval.
      * Lower bound — lower bound of the highest interval.
   * Количество — выбирается количество интервалов, а ширина рассчитывается автоматически, как отношение разности верхней и нижней границ к заданному количеству интервалов. Upper and lower bounds can be also set for this method.
   * Плитка — пользователь выбирает количество интервалов, а компонент задает диапазоны интервалов таким образом, чтобы в каждом интервале было примерно одинаковое количество значений. Имеется несколько способов обработки совпадающих значений:
      * Добавлять в следующий — перенесет значения совпадающих наблюдений в следующий (более высокий) интервал разделения.
      * Сохранять в текущем — сохраняет значения совпадающих наблюдений в текущем (более низком) интервале разделения. Этот метод может привести к тому, что всего будет создано меньше интервалов.
      * Назначать случайно — типы границ интервалов будут определены случайно; возможно включение одинаковых значений в тот или иной интервал случайным образом.
      * Оставить как есть — границы всех интервалов будут иметь тип **>=**, и возможна ситуация, когда совпадающие значения окажутся в разных интервалах.
      * Одинаковые плитки — достижение равного количества значений в интервалах обеспечивается не только подбором диапазонов интервалов, но и подбором типов границ для каждого интервала (**>** или **>=**).
   * [Коэффициенты СКО](https://wiki.loginom.ru/articles/mean-square-deviation.html) — разбивает значения на интервалы в зависимости от выбранного диапазона, выраженного в количестве **σ** (СКО).
   * [External ranges.](./quantization/outdoor-ranges.md)

      Для всех методов квантования можно установить флаг *Округлять границы*.
* **Автоматически** — установленная галочка в этом поле обеспечивает автоматическую настройку параметров квантования выбранного метода.
* **Интервалов** — количество интервалов, на которые будут разбиты значения поля.
* **Минимум** — отображается минимальное значение квантуемого поля.
* **Максимум** — отображается максимальное значение квантуемого поля.

Далее в каждой строке  располагается кнопка ![ ](../../images/icons/toolbar-controls/refresh_default.svg)"рассчитать интервалы" и в шапке таблицы ![ ](../../images/icons/toolbar-controls/refresh_default.svg)"рассчитать все интервалы". При их нажатии пересчитываются параметры квантования (количество интервалов, минимум, максимум) в зависимости от изменения методов и/или настроек параметров. Этот функционал доступен только при состоянии "Вход активирован".

### Area of Binning Results Display

В этой области отображаются результаты квантования с возможностью их редактирования.  
Над полями таблицы расположены несколько элементов управления:

* ![ ](../../images/icons/checkbox-states/checked_default.svg) **Нижняя граница открыта** — убирает нижнюю границу;
* ![ ](../../images/icons/checkbox-states/checked_default.svg) **Верхняя граница открыта** — убирает верхнюю границу;
* ![ ](../../images/icons/toolbar-controls/invert-bound-type_default.svg) **Инвертировать тип** — меняет тип границ;
* ![ ](../../images/icons/toolbar-controls/calculate-barchart_default.svg) — пересчитывает гистограмму согласно новым параметрам.
* **Шаблон** — в этом поле происходит настройка шаблона для отображения метки интервала, в нем можно составить пользовательский шаблон или при нажатии на ![ ](../../images/icons/toolbar-controls/down_default.svg) выбрать один из готовых шаблонов. To apply the template, it is required to press ![ ](../../images/icons/toolbar-controls/apply_default.svg) button.
* **Образец** — при клике на эту кнопку открывается таблица обозначений, которые можно использовать при составлении шаблона.

Под элементами управления расположена таблица с результатами квантования выделенного поля, она содержит следующие поля:

* **No** — bin number;
* **Lower** — lower interval bound;
* **Type** — bound type;
* **Upper** — upper interval bound;
* **Caption** — Bin caption (it can be set using a template);
* **Объём** — отображает объем значений, попавших в интервал (отображается в виде гистограммы).
