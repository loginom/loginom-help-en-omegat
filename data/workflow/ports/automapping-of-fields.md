---
description: Автоматическая синхронизация полей и переменных в аналитической платформе Loginom. Алгоритм автоматической синхронизации. Визуальная индикация отключенной автоматической синхронизации в порту данных.
---
# Automapping of Fields

Some Workflow nodes, for example, [Cross table](../../processors/transformation/cross-table.md), do not have the constant structure of the output data. List of fields of such nodes can be variable according to the input data. To receive the data with the variable structure, the automapping of fields/variable is used. The list of output fields/variable of the port is synchronized with the list of the input ones during its course. In this case, as opposed to "Auto link" command, the list of the output fields/variables can be changed by the synchronization algorithm, and new links can be added.

The following synchronization algorithm is used:

1. There is an attempt to restore previously configured links with the input fields/variables ("missing", "incorrect" links that appeared due to the input data structure change).
2. There is an attempt to establish a link between the input and output fields/variables that do not have link by "[data type](./../../data/datatype.md) matches and name matches (case-insensitive)" parameter.
3. All optional fields/variables that are not linked with the input ones are deleted from the list of the output fields/variables. The required ones are as follows:
   * inherited in the result of the derived node creation;
   * manually added/changed.
4. New output fields/variables on the basis of the output fields that still do not have links are added.

The similar algorithm is used once when executing
![](./../../images/icons/common/toolbar-controls/sync-columns_default.svg)
"Map fields" command and constantly when executing the node if port configuration option is used
![](./../../images/icons/common/toolbar-controls/auto-sync-columns_default.svg)"Automapping"
(refer to ["Table" interface](./table-interface.md)
and ["Connections" interface](./connections-interface.md)).

> **Important:** By default for the ports that receive the table data, ![](./../../images/icons/common/toolbar-controls/auto-sync-columns_default.svg) "Automapping enabled" option is used.

The disabled automapping is visually displayed by the additional circle on the port icon. For example:

- ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg), ![ ](./../../images/icons/app/node/ports/inputs/variable_inactive.svg), ![ ](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) — ports with enabled automapping;
- ![ ](./../../images/icons/app/node/ports/inputs/table-no-autosync_inactive.svg), ![ ](./../../images/icons/app/node/ports/inputs/variable-no-autosync_inactive.svg), ![ ](./../../images/icons/app/node/ports/inputs/tree-no-autosync_inactive.svg) — ports with disabled automapping.
