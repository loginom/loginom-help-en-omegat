---
description: Работа с панелью инструментов визуализатора OLAP куба в Loginom. Полное руководство по работе с интерфейсом и доступными элементами управления отображения данных.
---
# Панель инструментов Куба

Содержит следующие управляющие элементы:

* ![ ](./../../images/icons/common/toolbar-controls/fields-list_default.svg) **Поля** — показать/скрыть список полей набора данных.
* ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Детализация** — показать/скрыть [детализацию](./details.md).
* ![ ](./../../images/icons/viewers/cube/detailing/browse_default.svg) **Способ детализации** — переключить варианты отображения детализации:
  * ![ ](./../../images/icons/viewers/cube/detailing/browse_default.svg) **Таблица**.
  * ![ ](./../../images/icons/viewers/cube/detailing/form_default.svg) **Форма**.
  * ![ ](./../../images/icons/viewers/cube/detailing/stat_default.svg) **Статистика**.
* ![ ](./../../images/icons/common/toolbar-controls/chart_default.svg) **Диаграмма** — показать/скрыть [диаграмму](./chart.md).
* ![ ](./../../images/icons/common/toolbar-controls/collapce-all_default.svg) **Свернуть** — свернуть иерархию измерений куба:
  * **Свернуть все**.
  * **Свернуть колонки**.
  * **Свернуть строки**.
* ![ ](./../../images/icons/common/toolbar-controls/open-all_default.svg) **Развернуть** — развернуть иерархию измерений куба:
  * **Развернуть все**.
  * **Развернуть колонки**.
  * **Развернуть строки**.
* ![ ](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **Итоги**  — показать/скрыть итоговые заголовки:
  * ![ ](./../../images/icons/common/toolbar-controls/show-total-all_default.svg) **Все**.
  * ![ ](./../../images/icons/common/toolbar-controls/show-total-col_default.svg) **В колонках**.
  * ![ ](./../../images/icons/common/toolbar-controls/show-total-row_default.svg) **В строках**.
  * ![ ](./../../images/icons/common/toolbar-controls/show-total-nor_default.svg) **Нигде**.
* ![ ](./../../images/icons/common/toolbar-controls/width-equal_default.svg) **Выравнивание ширины колонок**:
  * ![ ](./../../images/icons/common/toolbar-controls/width-equal_default.svg) **Равная ширина фактов**.
  * ![ ](./../../images/icons/common/toolbar-controls/width-same_default.svg) **Равная ширина колонок**.
* ![ ](./../../images/icons/common/toolbar-controls/transform_default.svg) **Транспонировать** — переместить измерения из строк в столбцы и наоборот.
* ![ ](./../../images/icons/common/toolbar-controls/dimension_default.svg)
  **Настроить измерения** — открыть окно для [настройки измерений](./configure-axis.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-tune_default.svg)  **Настроить факты…** — открыть окно [настройки фактов](./configure-measures.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-calc_default.svg) **Добавить вычисляемый факт…** — открыть окно для добавления нового [вычисляемого факта](./calculated-measure.md) в куб[^1].
* ![ ](./../../images/icons/viewers/cube/cases/case-filter_default.svg) **Фильтровать факты…** — открыть окно для  [фильтрования фактов](./filter-measures.md).
* ![ ](./../../images/icons/viewers/cube/cases/case-format_default.svg) **Форматирование…** — открыть окно для [форматирования](./format-measures.md) фактов и заголовков измерений.
* ![ ](./../../images/icons/common/toolbar-controls/export_default.svg) **XLS** - экспорт в файл:
  * **экспорт в XLS (html)** — сохранить текущее представление в формате Excel.
  * **экспорт в HTML** — сохранить текущее представление в формате HTML.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Приостановить автовычисление** — отключить обновление заголовков и данных.

[^1]: добавленный ранее вычисляемый факт можно редактировать или удалить в окне *Настройки фактов*.
  
Указанные операции доступны также через контекстное меню, которое можно вызвать кликом правой клавиши мыши в любом месте Области построения. Помимо кнопок Панели инструментов, в контекстном меню присутствует пункт ![ ](./../../images/icons/ext/checkbox-states/checked_default.svg) **Скрыть единственный факт**, который позволяет скрыть заголовки фактов, если активен единственный факт.

%spoiler%**Горячие клавиши:**%spoiler%

* **Up/Down/Left/Right** — перейти на одну ячейку вверх/вниз/влево/вправо.
* **PageUp/PageDown** — перейти на экран вверх/вниз.
* **Alt** + **PageUp/PageDown** — перейти на экран вправо/влево.
* **Home/End** — перейти до конца вправо/влево.
* **Alt** + **Home/End** — перейти до конца вверх/вниз.
* **+/-** — раскрыть/свернуть заголовки в строках. 
* **Alt** + **+/-** — раскрыть/свернуть заголовки в столбцах.
* **Alt** + **Up\Down\Left\Right** — перейти к выделенной ячейке.
* **Shift** + **scroll** — прокрутка колесом мыши по горизонтали.

%/spoiler%
