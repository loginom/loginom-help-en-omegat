---
description: Инспектор свойств аналитической платформы Loginom. Свойства узла сценария в Инспекторе свойств. Копирование данных из ячеек Инспектора свойств.  
---
# Инспектор свойств
*Инспектор свойств* предназначен для получения информации о свойствах узла сценария.

Окно *Инспектора свойств* расположено в правой части экрана на страницах *Сценарий* и *Подключения* и по умолчанию находится в свернутом состоянии.

Чтобы посмотреть свойства узла, необходимо его выделить и нажать на кнопку ![Показать/скрыть инспектор свойств](./../images/icons/common/toolbar-controls/info_default.svg) на панели инструментов. 

> **Примечание:** Кнопка  ![Показать/скрыть инспектор свойств](./../images/icons/common/toolbar-controls/info_default.svg) всегда находится в крайней правой позиции на панели инструментов.

Открыть окно *Инспектора свойств* можно также через контекстное меню области построения сценария, выставив флаг ![](./../images/icons/common/toolbar-controls/info_default.svg) **Показать/скрыть инспектор свойств** (поставить галочку).

На рисунке представлен фрагмент сценария с открытым окном *Инспектора свойств* для узла *Калькулятор*:

![Инспектор свойств](./scenario-property-inspector.png)

Свойства узла (метки свойств) отображаются в виде дерева.

Корень дерева в *Инспекторе свойств* содержит название компонента, на основе которого создан узел сценария, а в колонке *Значение* выводится метка узла. Корневой узел дерева свойств всегда находится в раскрытом состоянии, его нельзя свернуть.

> **Примечание:** Порядок колонок *Свойство* и *Значение* изменить нельзя.

Узлы в дереве *Инспектора свойств* можно сортировать, для этого нужно кликнуть мышью на заголовок колонки *Свойство*. Последовательное нажатие на заголовок меняет порядок сортировки или отменяет его.

Любую ячейку или диапазон ячеек *Инспектора свойств* можно выделить указателем мыши и скопировать ее (их) значение, нажав сочетание клавиш *Ctrl+C*.

Для ячеек, в которых текст полностью не помещается, предусмотрены всплывающие подсказки.

Контекстное меню *Инспектора свойств* содержит команды:

* ![](./../images/icons/common/toolbar-controls/open-all_default.svg) **Развернуть** - разворачивает узел дерева.

* ![](./../images/icons/common/toolbar-controls/collapce-all_default.svg) **Свернуть** - сворачивает узел дерева.

Команды контекстного меню позволяют одновременно развернуть/свернуть все узлы в дереве свойств. Для этого нужно выделить корневой узел и вызвать соответствующую команду контекстного меню.

При изменений настроек узла *Инспектор свойств* обновляет дерево свойств.

> **Важно:** Если узел заблокирован (узел выполняется или открыт мастер настройки узла), то его свойства посмотреть нельзя. Для такого узла в *Инспекторе свойств* будет выведено сообщение: "Узел заблокирован, попробуйте позже".

Если не выбран ни один узел или выбрано несколько узлов, то в *Инспекторе свойств* будет приглашение "Выделите узел, чтобы посмотреть его свойства".



 
