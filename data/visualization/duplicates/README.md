---
description: Визуализация дубликатов и противоречий в Loginom. Подробная справка по интерфейсу и общим принципам работы в таблице с дубликатами и противоречиями.
---
# ![](./../../images/icons/components/duplicates_default.svg) Дубликаты и противоречия

Предназначен для просмотра дублирующих, противоречивых записей исходного набора данных.
## Интерфейс

После добавления в узел визуализатора откроется главное окно (Рис. 1):

![Главное окно визуализатора "Дубликаты и противоречия".](./images/duplicates-main-window.png)

Главное окно условно можно разделить на 2 области (см. рисунок 1):

1. **Панель инструментов** — содержит следующие управляющие элементы:
   * ![](./../../images/icons/common/toolbar-controls/grid-row-no_default.svg) **Номер строки** — показать/скрыть сквозной номер строки;
   * ![](./../../images/icons/common/toolbar-controls/rec-no_default.svg) **Номер записи** — показать/скрыть номер записи;
   * ![](./../../images/icons/common/toolbar-controls/show-data-type_default.svg) **Типы данных** — показать/скрыть типы данных;
   * ![](./../../images/icons/common/toolbar-controls/null-count_default.svg) **Показать значения null** — показать/скрыть null-значения;
   * ![](./../../images/icons/common/toolbar-controls/format_default.svg) **Формат** — открыть [окно настройки формата](./format.md) отображения данных;
   * ![](./../../images/icons/common/toolbar-controls/sort-asc_default.svg) **Сортировка** — открыть [окно настройки сортировки](./sorting.md) данных по столбцам;
   * ![](./../../images/icons/common/toolbar-controls/filter_default.svg) **Фильтр** — открыть [окно настройки фильтрации](./filter.md);
   * ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) ![](./../../images/icons/common/toolbar-controls/down_default.svg) **Поиск** — ![](./../../images/icons/common/toolbar-controls/zoom_default.svg) найти значение; ![](./../../images/icons/common/toolbar-controls/down_default.svg) открыть [окно настройки поиска](./search.md);
   * ![](./../../images/icons/common/toolbar-controls/export_default.svg) **Экспорт** — экспортировать таблицу в файл выбранного формата (XLS или HTML);
   * ![](./../../images/icons/common/toolbar-controls/toggle-left-panel_default.svg) **Детализация** — показать/скрыть детализацию по строке таблицы;
   * **Перейти к строке** — перейти к строке с заданным номером (доступно в контекстном меню).
1. **[Основная таблица](./main-table.md)** — содержит информацию о дубликатах и противоречиях в исходном наборе данных.
