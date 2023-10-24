---
description: Элементы страницы "Сценарий" аналитической платформы Loginom. Основные команды панели инструментов. Инспектор свойств. Стандартная библиотека компонентов Loginom.   
---
# Страница «Сценарий»
Страница «Сценарий» представляет собой рабочее пространство, которое состоит из панели компонентов, области построения Сценария, *Инспектора свойств* (по умолчанию находится в свернутом состоянии) и панели инструментов (см. рисунок 1).

![Страница «Сценарий».](./workflow.png)

Cлева находится панель компонентов, состоящая из следующих категорий:

* Компоненты — стандартная библиотека базовых компонентов Loginom.
* [Производные компоненты](./../workflow/derived-component.md) — создаваемые пользователями компоненты на основе базовых.
* [Подключения](./../integration/connections/README.md) — источники данных.

По центру расположена область построения Сценария — полотно, содержащее узлы Сценария и связи между ними.  

Справа находится [Инспектор свойств](./property-inspector.md) — панель, содержащая информацию о свойствах выделенного узла сценария. По умолчанию *Инспектор свойств* находится в свернутом состоянии, его можно открыть, нажав кнопку ![Показать/скрыть инспектор свойств](./../images/icons/common/toolbar-controls/info_default.svg) на панели инструментов.

Сверху расположена панель инструментов, содержащая следующие операции для манипуляции с областью построения и ее составляющими:
* ![](./../images/icons/common/toolbar-controls/arrow-rr_default.svg) Показать/![](./../images/icons/common/toolbar-controls/arrow-ll_default.svg) Скрыть панель компонентов — позволяет открыть или закрыть панель компонентов.
* ![](./../images/icons/common/toolbar-controls/cursor_default.svg) Режим выбора объекта — режим, использующийся для построения Сценария с помощью стандартных манипуляций.
* ![](./../images/icons/common/toolbar-controls/hand_default.svg) Режим навигации по сценарию —  режим, использующийся для перемещения по области построения Сценария с помощью мышки.
* ![](./../images/icons/common/toolbar-controls/workflow_default.svg) Показать в виде сценария — отображает Сценарий  в стандартном виде (в виде направленного графа).
* ![](./../images/icons/common/toolbar-controls/table_default.svg) Показать в виде таблицы — компактное отображение Сценария в виде таблицы, содержащей используемые элементы.
* Вертикальное/Горизонтальное выравнивание — позволяет выровнять узлы Сценария на области построения. Данное действие доступно для выделенных узлов. Имеются следующие виды выравнивания:
    * ![](./../images/icons/common/toolbar-controls/v-align-left_default.svg) По левому краю.
    * ![](./../images/icons/common/toolbar-controls/v-align-center_default.svg) По середине.
    * ![](./../images/icons/common/toolbar-controls/v-align-right_default.svg) По правому краю.
    * ![](./../images/icons/common/toolbar-controls/h-align-top_default.svg) По верхнему краю.
    * ![](./../images/icons/common/toolbar-controls/h-align-center_default.svg) По центру.
    * ![](./../images/icons/common/toolbar-controls/h-align-bottom_default.svg) По нижнему краю.
* ![](./../images/icons/common/toolbar-controls/layout_default.svg) Автоматическое упорядочивание узлов — автоматическое расположение узлов на области Сценария в соответствии с их последовательностью обработки данных.
* ![](./../images/icons/common/toolbar-controls/move-front_default.svg) Переместить выделенные узлы — выставляет выделенные узлы и их подписи на:
  * Передний план.
  * Задний план.
* ![](./../images/icons/common/toolbar-controls/order_default.svg) [Настроить порядок выполнения](./../workflow/workflow-progress-control.md) — позволяет задать собственный порядок выполнения узлов.
* ![](./../images/icons/common/toolbar-controls/run-all_default.svg) Выполнить все — выполнить все узлы Сценария.
* ![](./../images/icons/common/toolbar-controls/run-current_default.svg) Выполнить узел (F9)/![](./../images/icons/common/toolbar-controls/stop_default.svg) Деактивировать узел.
* ![](./../images/icons/common/toolbar-controls/retrain_default.svg) [Переобучить узел](./../workflow/training-processors.md).
* ![](./../images/icons/common/toolbar-controls/setup_default.svg) Настроить узел (Shift+Enter) — заходит в настройки выделенного узла.
* ![](./../images/icons/common/toolbar-controls/batch-mode_default.svg) [Настроить режим активации узла](./../workflow/node-activation-mode.md).
* ![](./../images/icons/common/toolbar-controls/cut_default.svg) Вырезать (Ctrl+X) — копирует данные в оперативную память с одновременным их удалением с места текущего расположения.
* ![](./../images/icons/common/toolbar-controls/copy_default.svg) Копировать (Ctrl+C) — помещает копию выделенных данных в буфер обмена.
* ![](./../images/icons/common/toolbar-controls/paste_default.svg) Вставить (Ctrl+V) — вставляет содержимое буфера обмена в место назначения.
* ![](./../images/icons/common/toolbar-controls/clone_default.svg) Клонировать узел — клонирование выделенного узла с сохранением настроек и связей, идущих к нему.
* ![](./../images/icons/common/toolbar-controls/delete_default.svg) Удалить выбранное (Delete) — удаляет выделенные узлы/связи Сценария.
* ![](./../images/icons/common/toolbar-controls/compose-generic-model_default.svg) Развернуть/Свернуть [подмодель](./../processors/control/supernode.md) — позволяет свернуть выделенные узлы в Подмодель или развернуть выделенную Подмодель на составные узлы.
* ![](./../images/icons/common/toolbar-controls/derive-node_default.svg) Создать производный компонент — создает Производный компонент на основе выделенного узла.
* ![](./../images/icons/common/toolbar-controls/show-derived-nodes_default.svg) Показать родительские узлы для производных — при наличии производных узлов показывает родительские узлы.
* ![](./../images/icons/common/toolbar-controls/show-reference-links_default.svg) Показать исходные узлы для [Узлов-ссылок](./../processors/control/reference-node.md) — при наличии Узлов-ссылок показывает узлы, на основе которых они создавались.
* ![](./../images/icons/common/toolbar-controls/preview_default.svg) Показать карту сценария — для навигации открывается уменьшенная копия области построения Сценария с возможностью масштабирования.
* ![](./../images/icons/common/toolbar-controls/info_default.svg) Показать/скрыть инспектор свойств — разворачивает/сворачивает окно *Инспектора свойств*. Эта кнопка всегда находится в крайней правой позиции на  панели инструментов.

Для некоторых кнопок панели инструментов доступны [Горячие клавиши](./../workflow/hotkeys.md).

> **Примечание:** при открытом окне *Инспектора свойств* часть кнопок на панели инструментов может не помещаться. В этом случае на панели инструментов появляется кнопка ![](./../images/icons/common/toolbar-controls/system-panel-more_default.svg) с выпадающим списком,  в котором будут находиться все не поместившиеся на панели кнопки.