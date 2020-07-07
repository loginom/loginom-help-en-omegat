# Панель инструментов Куба

Содержит следующие управляющие элементы:

* ![ ](../../images/icons/toolbar-controls/fields-list_default.svg) **Поля** — показать/скрыть список полей набора данных.
* ![ ](../../images/icons/toolbar-controls/show-fast-viewer_default.svg) **Детализация** — показать/скрыть [детализацию](./details.md).
* ![ ](../../images/icons/cube/detailing/browse_default.svg) **Способ детализации** — переключить варианты отображения детализации:
   * ![ ](../../images/icons/cube/detailing/browse_default.svg) **Таблица**.
   * ![ ](../../images/icons/cube/detailing/form_default.svg) **Форма**.
   * ![ ](../../images/icons/cube/detailing/stat_default.svg) **Статистика**.
* ![ ](../../images/icons/toolbar-controls/chart_default.svg) **Диаграмма** — показать/скрыть [диаграмму](./chart.md).
* ![ ](../../images/icons/toolbar-controls/collapce-all_default.svg) **Свернуть** — свернуть иерархию измерений куба:
   * **Свернуть все**.
   * **Свернуть колонки**.
   * **Свернуть строки**.
* ![ ](../../images/icons/toolbar-controls/open-all_default.svg) **Развернуть** — развернуть иерархию измерений куба:
   * **Развернуть все**.
   * **Развернуть колонки**.
   * **Развернуть строки**.
* ![ ](../../images/icons/toolbar-controls/show-total-all_default.svg) **Итоги**  — показать/скрыть итоговые заголовки:
   * ![ ](../../images/icons/toolbar-controls/show-total-all_default.svg) **Все**.
   * ![ ](../../images/icons/toolbar-controls/show-total-col_default.svg) **В колонках**.
   * ![ ](../../images/icons/toolbar-controls/show-total-row_default.svg) **В строках**.
   * ![ ](../../images/icons/toolbar-controls/show-total-nor_default.svg) **Нигде**.
* ![ ](../../images/icons/toolbar-controls/width-equal_default.svg) **Выравнивание ширины колонок**:
   * ![ ](../../images/icons/toolbar-controls/width-equal_default.svg) **Равная ширина фактов**.
   * ![ ](../../images/icons/toolbar-controls/width-same_default.svg) **Равная ширина колонок**.
* ![ ](../../images/icons/toolbar-controls/transform_default.svg) **Транспонировать** — переместить измерения из строк в столбцы и наоборот.
* ![ ](../../images/icons/cube/cases/case-tune_default.svg) **Настроить факты…** — открыть окно [настройки фактов](./configurefacts.md).
* ![ ](../../images/icons/cube/cases/case-calc_default.svg) **Добавить вычисляемый факт…** — открыть окно для добавления нового [вычисляемого факта](./addcalculatingfact.md) в куб[^1].
* ![ ](../../images/icons/cube/cases/case-filter_default.svg) **Фильтровать факты…** — открыть окно для  [фильтрования фактов](./filterfacts.md).
* ![ ](../../images/icons/cube/cases/case-format_default.svg) **Форматирование…** — открыть окно для [форматирования](./formatfacts.md) фактов и заголовков измерений.
* ![ ](../../images/icons/toolbar-controls/export_default.svg) **XLS** - экспорт в файл:
   * **экспорт в XLS (html)** — сохранить текущее представление в формате Excel.
   * **экспорт в HTML** — сохранить текущее представление в формате HTML.
* ![ ](../../images/icons/toolbar-controls/locked_default.svg) **Приостановить автовычисление** — отключить обновление заголовков и данных.

[^1]: добавленный ранее вычисляемый факт можно редактировать или удалить в окне *Настройки фактов*.

Указанные операции доступны также через контекстное меню, которое можно вызвать кликом правой клавиши мыши в любом месте Области построения. Помимо кнопок Панели инструментов, в контекстном меню присутствует пункт ![ ](../../images/icons/checkbox-states/checked_default.svg) **Скрыть единственный факт**, который позволяет скрыть заголовки фактов, если активен единственный факт.