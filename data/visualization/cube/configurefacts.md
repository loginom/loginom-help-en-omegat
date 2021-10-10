# ![Настроить факты](../../images/icons/cube/cases/case-tune_default.svg) Настроить факты

Позволяет, выставляя флаги у нужных фактов/вариантов [агрегации](../../processors/func/aggregation-functions.md) и способов отображения, настроить отображаемые факты.

В окне *Настроить факты* можно последовательно выполнить необходимые операции с несколькими фактами. В *Куб* будут внесены изменения после нажатия кнопки *Применить*.

> **Примечание:** в списке присутствует факт ![Количество-Факт](../../images/icons/data-types/none_default.svg)*Количество*, который существует даже тогда, когда ни одно поле исходного набора данных не используется в качестве факта. Для него предлагается единственный вариант агрегации – ![Количество-Агрегация](../../images/icons/aggregations/factor-count_default.svg)*Количество*, показывающий количество записей исходного набора, попавших в ячейку куба.

## Operations

* ![](../../images/icons/toolbar-controls/moveup_default.svg) **Переместить вверх** — переместить факт/вариант агрегации/способ отображения на позицию вверх;
* ![](../../images/icons/toolbar-controls/movedown_default.svg) **Переместить вниз** — переместить факт/вариант агрегации/способ отображения на позицию вниз;
* ![](../../images/icons/toolbar-controls/collapce-all_default.svg) **Свернуть дерево** — свернуть дерево фактов;
* ![](../../images/icons/toolbar-controls/open-all_default.svg) **Развернуть дерево** — развернуть дерево фактов;
* ![](../../images/icons/toolbar-controls/check-all_default.svg) **Выбрать все** — выбрать все факты, варианты агрегации со всеми способами отображения;
* ![](../../images/icons/toolbar-controls/uncheck-all_default.svg) **Отменить выбор всех** — убрать выбор всех фактов, вариантов агрегации со всеми способами отображения;
* ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_plus_default.svg) **Добавить факт...** — открыть окно для [добавления факта](./addfact.md) в куб;
* ![](../../images/icons/cube/cases/case-calc_default.svg) **Добавить вычисляемый факт…** — открыть окно для добавления [вычисляемого факта](./addcalculatingfact.md) в куб;
* ![](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать вычисляемый факт…** — открыть окно редактирования вычисляемого факта;
* ![](../../images/icons/toolbar-controls/delete_default.svg) **Удалить факт** — удалить выделенный факт.

> **Примечание:** После выполнения операций ![](../../images/icons/toolbar-controls_18x18/toolbar-controls_18x18_plus_default.svg) Добавить факт..., ![](../../images/icons/cube/cases/case-calc_default.svg) Добавить вычисляемый факт… или ![](../../images/icons/toolbar-controls/delete_default.svg) Удалить факт кнопка *Отменить* в окне *Настроить факты* станет недоступна. Можно отменить любую операцию, выполнив обратную ей. В *Кубе* отобразятся только те факты, которые были отмечены в окне *Настроить факты* на момент нажатия кнопки *Применить*.

## Representation Methods

* ![](../../images/icons/aggregations/factor-sum_default.svg) **Сумма** — показывает сумму значений данного факта;
* ![](../../images/icons/cube/aggregation/row-percent_default.svg) **Процент по горизонтали** — отображает долю в процентах от занимаемого данным фактом в данной строке;
* ![](../../images/icons/cube/aggregation/col-percent_default.svg) **Процент по вертикали** — отображает долю в процентах от занимаемого данным фактом в данном столбце.

> **Note:** The representation option that is the first one on the list is selected by default as the representation option. Selection of several aggregation representation options at once is supported for the measure.
