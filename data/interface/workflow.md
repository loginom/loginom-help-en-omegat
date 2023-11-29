---
description: Элементы страницы "Сценарий" аналитической платформы Loginom. Основные команды панели инструментов. Инспектор свойств. Стандартная библиотека компонентов Loginom.   
---
# "Workflow" Page
Страница «Сценарий» представляет собой рабочее пространство, которое состоит из панели компонентов, области построения Сценария, *Инспектора свойств* (по умолчанию находится в свернутом состоянии) и панели инструментов (см. Figure 1).

!["Workflow" Page.](./workflow.png)

The panel of components is located on the left. It consists of the following categories:

* Components are represented by a standard library of the Megaladata base components.
* [Derived components](./../workflow/derived-component.md) are the components created by users according to the base ones.
* [Connections](./../integration/connections/README.md) are data sources.

The Workflow construction area is located in the centre: the area containing the Worlflow nodes and links between them.

Справа находится [Инспектор свойств](./property-inspector.md) — панель, содержащая информацию о свойствах выделенного узла сценария. По умолчанию *Инспектор свойств* находится в свернутом состоянии, его можно открыть, нажав кнопку ![Показать/скрыть инспектор свойств](./../images/icons/common/toolbar-controls/info_default.svg) на панели инструментов.

The toolbar that enables the following operations with the construction area and its constituents is located in the upper part:
* ![](./../images/icons/common/toolbar-controls/arrow-rr_default.svg) Show/![](./../images/icons/common/toolbar-controls/arrow-ll_default.svg)Hide component panel enables to open or hide the panel of components.
* ![](./../images/icons/common/toolbar-controls/cursor_default.svg)Object selection mode: the mode used for the Workflow construction by means of standard manipulations.
* ![](./../images/icons/common/toolbar-controls/hand_default.svg)Workflow navigation mode: the mode used for navigation in the Workflow construction area by means of a mouse.
* ![](./../images/icons/common/toolbar-controls/workflow_default.svg) Show as workflow enables to display a Workflow in the standard form (in the form of oriented graph).
* ![](./../images/icons/common/toolbar-controls/table_default.svg)Show as table provides compact display of the Workflow in the form of a table that contains used items.
* Vertical/horizontal alignment provides alignment of the Workflow nodes in the construction area. This action is available for the selected nodes. There are the following types of alignment:
   * ![](./../images/icons/common/toolbar-controls/v-align-left_default.svg) Align left.
   * ![](./../images/icons/common/toolbar-controls/v-align-center_default.svg) Align middle.
   * ![](./../images/icons/common/toolbar-controls/v-align-right_default.svg) Align right.
   * ![](./../images/icons/common/toolbar-controls/h-align-top_default.svg) Align top.
   * ![](./../images/icons/common/toolbar-controls/h-align-center_default.svg) Align center.
   * ![](./../images/icons/common/toolbar-controls/h-align-bottom_default.svg) Align bottom.
* ![](./../images/icons/common/toolbar-controls/layout_default.svg) Auto node alignment: the automatic placement of nodes in the Workflow area according to their sequence of data processing.
* ![](./../images/icons/common/toolbar-controls/move-front_default.svg)Send selected nodes enables to bring selected nodes and their signatures to:
   * Front.
   * Back.
* ![](./../images/icons/common/toolbar-controls/order_default.svg) [Customize execution order](./../workflow/workflow-progress-control.md) enables to set one's own order of nodes execution.
* ![](./../images/icons/common/toolbar-controls/run-all_default.svg) Run all enables to run all nodes of the Workflow.
* ![](./../images/icons/common/toolbar-controls/run-current_default.svg) Execute node (F9)/![](./../images/icons/common/toolbar-controls/stop_default.svg) Deactivate node.
* ![](./../images/icons/common/toolbar-controls/retrain_default.svg) [Retrain node](./../workflow/training-processors.md).
* ![](./../images/icons/common/toolbar-controls/setup_default.svg) Configure node (Shift+Enter) provides access to setting of the selected node.
* ![](./../images/icons/common/toolbar-controls/batch-mode_default.svg) [Configure node activation mode](./../workflow/node-activation-mode.md).
* ![](./../images/icons/common/toolbar-controls/cut_default.svg) Вырезать (Ctrl+X) — копирует данные в оперативную память с одновременным их удалением с места текущего расположения.
* ![](./../images/icons/common/toolbar-controls/copy_default.svg) Копировать (Ctrl+C) — помещает копию выделенных данных в буфер обмена.
* ![](./../images/icons/common/toolbar-controls/paste_default.svg) Вставить (Ctrl+V) — вставляет содержимое буфера обмена в место назначения.
* ![](./../images/icons/common/toolbar-controls/clone_default.svg) Clone node enables to clone the selected node saving its settings and links.
*  ![](./../images/icons/common/toolbar-controls/delete_default.svg) Delete selected enables to delete the selected nodes/links of the Workflow.
* ![](./../images/icons/common/toolbar-controls/compose-generic-model_default.svg) Expand/collapse[ supernode](./../processors/control/supernode.md) enables to collapse the selected nodes into the Supernode, or expand the selected Supernode into compound nodes.
* ![](./../images/icons/common/toolbar-controls/derive-node_default.svg)Create derived component enables to create the Derived Component based on the selected node.
* ![](./../images/icons/common/toolbar-controls/show-derived-nodes_default.svg)Show parent nodes for derived shows parent nodes if derived nodes are available.
* ![](./../images/icons/common/toolbar-controls/show-reference-links_default.svg) Show source nodes for [Reference Nodes](./../processors/control/reference-node.md) shows the nodes on the basis of which Reference Nodes were created, if any.
* ![](./../images/icons/common/toolbar-controls/preview_default.svg)Show workflow outline enables to open for the navigation purposes a reduced copy of the Workflow construction area suitable for scaling.
* ![](./../images/icons/common/toolbar-controls/info_default.svg)Show/hide property inspector enables to expand/collapse the *Property inspector* window. This button is always located in the far right position on the toolbar.

Для некоторых кнопок панели инструментов доступны [Горячие клавиши](./../workflow/hotkeys.md).

> **Note:** When the *Property inspector* window is opened, there can be not enough place for some buttons on the toolbar. In this case, ![](./../images/icons/common/toolbar-controls/system-panel-more_default.svg) button with a drop-down list appears on the toolbar. It will contain all other buttons for which there is no enough place on the toolbar.