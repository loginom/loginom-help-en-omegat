---
description: Справка по быстрому просмотру данных в Loginom. Отображение информации в виде двумерной таблицы, дерева или формы. Просмотр данных с выходного порта.
---
# ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) Quick Data View

It provides the limited amount of data for information purposes in the form of the flat two-dimensional table, tree or form. Filtration, change of data view format are not available. Real numbers (with floating point) are displayed with two places after decimal separator. The data in the date/time format is displayed without seconds.

> **Important:** Real numbers participate in the processing with the same number of places after decimal separator as in the source data set (or with the same number of places that has been determined at the previous processing stages), and they are displayed only with two places after decimal separator.  Similarly, data in the Date/time format is represented only in the visualizer in the abbreviated format.

This visualizer is available in any active output:

* ![ ](./../../images/icons/app/node/ports/outputs/table_active.svg) table port,
* ![ ](./../../images/icons/app/node/ports/outputs/variable_active.svg) port of variables,
* ![ ](./../../images/icons/app/node/ports/outputs/tree_active.svg) port of tree.

## Quick View Functionality

It is possible to open *Quick view* as follows:

* double click on the required active port using the left mouse button;
* click on the required port using the right mouse button and select ![ ](../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Quick view** in the context menu.

After the first start *Quick view* is opened in the modal window form.

> **Note:** Data set can be not fully displayed in the *Quick view* window:
* for Google Chrome and Opera — 1 mln. records,
* for Firefox — 300 thous. records,
* for Microsoft Edge — 50 thous. records.

To display the full data set, it is possible to use the [Table](./../table/README.md) visualizer.

## Operations

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_14.svg) **Dock to the bottom** enables to move the *Quick view* panel down.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_04.svg) **Show in the window** displays *Quick view* in the modal window.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_03.svg) **Expand in window** maximizes the *Quick view* panel.

![ ](../../images/extjs-theme/tools/tool-sprites_18x18/tool-sprites_01.svg)  **Close** enables to close *Quick view*.

## Peculiarities of the Quick View display in the frozen panel form located on the bottom

To display *Quick view* in the frozen panel form located on the bottom, to view data it is sufficient to click on the required node or port using the left mouse button.

> **Note.** Data set will be displayed only for the activated nodes. The *Quick view* panel of the nodes that have not been activated will be empty. Only the following text will be shown: *Node not activated*.

When selecting the node, data from the first port is displayed. If there are several output ports for the node, other ports are displayed in the tab form. It is possible to swith between tabs as follows

* using the *Quick view* panel as such selecting the required tab,
* by clicking on the output ports with the left mouse button.

## Table port

Fast switching between options of data display in the Table port is provided by the following hotkeys:

* Show table %kbd Alt % + %kbd 1 %;
* Show form %kbd Alt % + %kbd 2 %.
* Hide *Quick view* %kbd Esc % can be used with unfrozen *Quick view* panel.

### Table

It displays data in the flat two-dimensional table form.

If the data set includes more than 50 fields, only the first 50 will be displayed for the table port in *Quick View of Data* visualizer. The number of the displayed fields  can be changed using the additional ![ ](./../../images/icons/grid/columns.svg) *Columns* function. The total count of columns in the data set will be shown in the right upper window corner (refer to Figure). When hovering cursor over this area, the tooltip with the number of the displayed fields is shown.

The total count of rows in the data set is shown in the left lower corner of *Quick View of Data* window if there is no enough space for all rows in the visualizer window (refer to Figure).

![Quick data view of the Table port (the Table mode).](./images/column-amt.png)

> **Note:** When selecting the Table/Form, every next port is opened according to the selected value. The nodes that have been opened before are opened on the basis of the "old" value.

### Form

It displays a row in the key-value form.

All fields of the data source are displayed in the form by default.

![Quick data view of the Table port (the Form mode).](./images/form-amt.png)

The Search is available in the Form mode. It enables to find keys by the Caption or Name.

> **Note**: "Name" column is hidden by default. To display it, it is required to set a tick in the ![](./../../images/icons/grid/columns.svg) "Column" drop-down list opposite to the "Name" column.

%spoiler%Hotkeys:%spoiler%

* Move the selected rows up %kbd Ctrl % + %kbd Up %.
* Move the selected rows down %kbd Ctrl % + %kbd Down %.
* Copy values of the selected cells %kbd Ctrl % + %kbd C % (it is not available in the context menu).

%/spoiler%

#### Navigation

Mouse and navigation panel in the upper part of the visualizer are used for navigation through the table:

* Go to the ![](./../../images/icons/common/toolbar-controls/prev_default.svg) previous/![](./../../images/icons/common/toolbar-controls/next_default.svg) next row of the source data set.
* Go to the ![](./../../images/icons/common/toolbar-controls/first_default.svg) first/![](./../../images/icons/common/toolbar-controls/last_default.svg) last row of the source data set.

To go to the given page, it is required to enter its number in the entry field located between the navigation buttons.

%spoiler%Hotkeys:%spoiler%

* First row %kbd Alt % + %kbd Up %;
* Previous row %kbd Alt % + %kbd Left %;
* Next row %kbd Alt % + %kbd Right %;
* Last row %kbd Alt % + %kbd Down %.

%/spoiler%

## Port of variables

It displays variables in the key-value form.

![Quick view of the Variables Port data.](./images/var-amt.png)

## Port of tree

It displays data in the hierarchic (tree-like) form.

![Quick view of the Tree Port data.](./images/tree-amt.png)

## Actions with the Fields

When hovering cursor over the field caption, ![ ](./../../images/icons/common/toolbar-controls/down_default.svg) button with additional functions will appear.

Different ports have different options and constraints:

<table>
<thead>
  <tr>
    <th>Port</th>
    <th>Mode</th>
    <th>Sorting</th>
    <th>Visibility change</th>
    <th>Freezing</th>
    <th>Move</th>
    <th>Bound</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">Table</td>
    <td>Form</td>
    <td></td>
    <td align="center">• (partially)</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Table</td>
    <td></td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td><ul><li>1 mln. rows for <i>Chrome</i> and <i>Chromium</i></li><li>300 thous. for <i>FireFox</i></li><li>50 thous. for other browsers (<i>IE</i>)</li></ul></td>
  </tr>
  <tr>
    <td>Tree</td>
    <td></td>
    <td align="center">•</td>
    <td align="center">•</td>
    <td></td>
    <td></td>
    <td>10,000 child nodes</td>
  </tr>
  <tr>
    <td>Variables</td>
    <td></td>
    <td align="center">•</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>

* ![ ](./../../images/icons/common/toolbar-controls/low-to-hight_default.svg) **Sort ascending** / ![ ](./../../images/icons/common/toolbar-controls/hight-to-low_default.svg) **Sort descending**: sorting enables to sort data by the selected field in ascending or descending order. It is performed only for the current data set according to the set limits.
* ![ ](./../../images/icons/grid/columns.svg) **Columns**: change visibility (disable/enable display) of the defined columns.
* ![ ](./../../images/icons/common/toolbar-controls/locked_default.svg) **Freeze column** / ![ ](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Unfreeze column**: the frozen field is fixed in the left part of the window, and it is separated from the unfrozen part with the vertical line.

It is possible to move the fields relative to each other, and it is also possible to move them from the zone of frozen fields to the unfrozen ones and vice versa.

Field settings are reset when closing the window.
