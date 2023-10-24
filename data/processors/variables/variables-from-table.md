---
description: Компонент Таблица в переменные в Loginom. Общие сведения. Мастер настройки. Доступные поля. Выбранные поля. Функции агрегации. Содержание выходного набора.
---
# ![Table to Variables](./../../images/icons/components/datatovariables_default.svg) Table to Variables

Компонент позволяет преобразовать табличные данные в переменные. A variable is generated from the data of each table field. A variable can have only one value that's why different [aggregation functions](./../func/aggregation-functions.md) are applied to the field data for its calculation.

## Ports

### Input

* ![Input data source](./../../images/icons/app/node/ports/inputs/table_inactive.svg) **Input data source** — data table.

### Output

* ![Output variables](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables**: list of variables received from the input data source using aggregation functions by field.

## Wizard

The wizard window is divided into two areas:

* **Available fields**: list of fields of the input data set.
* **Selected fields**: list of resulting variables.

The Drag-and-Drop method enables to move fields beween areas.

### Available Fields

It is possible to add the selected fields to the *Selected fields* list using the following ways:

* Using ![Move to Variables](./../../images/icons/common/dataset-operations/dsa-factor_default.svg) button.
* Using the contex menu - "Move to Variables".
* Pressing %kbd Alt S %.

### Selected Fields

При добавлении поля в список *Выбранные поля* функция агрегации будет назначена по умолчанию:

* The *sum* function will be selected for digits.
* для остальных — функция *единственный*.

It is possible to use the mouse to perform actions with the selected fields. It is possible to change position in the selected fields by dragging inside the list. It is possible to exclude by means of fields transfer to the *Available fields* list. Double click on the field enables to open the "Aggregation selection" window.

It is possible to perform the same actions using the quick access toolbar buttons:

* ![Move up](./../../images/icons/common/toolbar-controls/moveup_default.svg) enables to move the selected item up the list.
* ![Move down](./../../images/icons/common/toolbar-controls/movedown_default.svg) enables to move the selected item down the list.
* ![Edit](./../../images/icons/common/toolbar-controls/edit_default.svg) enables to open the selection window of the available aggregation options for the selected fields.
* ![Delete](./../../images/icons/common/toolbar-controls/delete_default.svg) enables to move the current item to the *Available fields* list.
* ![Delete all](./../../images/icons/common/toolbar-controls/delete-all_default.svg) enables to move all items to the *Available fields* list.

The context menu duplicates the general functions:

* ![Move up](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Move up** enables to move the selected fields up the list.
* ![Move down](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Move down** enables to move the selected fields down the list.
* ![Edit](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit** enables to open the selection window of the available aggregation options for the selected fields.
* ![Delete selected](./../../images/icons/common/toolbar-controls/delete_default.svg) **Delete selected** enables to move the selected fields back to the *Available fields* list.

The following hotkeys duplicating the listed commands are available:

* %kbd Ctrl Up %: move up.
* %kbd Ctrl Down %: move down.
* %kbd F2 %: edit.
* %kbd Delete %: delete selected.

## Content of the Output Data Set

The output data set will include the variables received from the fields using the selected aggregation functions. Each output aggregation option will correspond to a separate variable.

Names, captions and values of fields will be received as follows:

* **Name** will coincide with the field name if only one function is selected. If there is more than one function, the ending corresponding to the selected function will be added to the name.
* **Caption** will consist of the field name and aggregation function name.
* **Value** is generated from all field values aggregated by the selected function.
