---
description: Фильтр строк в Loginom. Вставка значений из буфера обмена в фильтре строк.
---
# Features of Work with Clipboard in the Row Filter

There are available clipboard commands in *listed/not listed* conditions. Compare values can be inserted from the clipboard to the *List* field. They can be also cut or copied from the *List* field.

The clipboard commands are available in the context menu of the *List* field or via hotkeys:

![Context menu in the row filter](./row-filter-context-menu.png)

The field for which filtering criterion is set must contain the data of the  [discrete kind](./../../../data/datakind.md).

Delimiter of the copied/pasted elements must be line break.

[Data type](./../../../data/datatype.md) mapping is automatically checked while pasting (namely, it won't be possible to paste a row into the numeric field).

Data format must match the![](./../../../images/icons/common/data-types/datetime_default.svg) Date/Type data type.

When pasting the values already existing in the *List* field, they are not duplicated.

## Restrictions

The context menu can be used in the desktop version and also in [Megaladata Studio](https://help.loginom.ru/adminguide/studio/) when working via browser or `https` protocol or using `localhost`.

> Important: The context menu commands "Cut" and "Copy" are available by default for the `Firefox` browser. To use "Paste" command, it is required to enter `about:config` in the browser address bar, find `dom.events.testing.asyncClipboard` parameter and change its value for `true`.

It is required to use the following hotkeys combinations when working via `http` protocol:

* to paste values from clipboard — %kbd Ctrl % + %kbd V %;
* to copy to clipboard — %kbd Ctrl % + %kbd С %;
* to cut — %kbd Ctrl % + %kbd X %.

It is required to use the current browser version for work in Megaladata Studio.