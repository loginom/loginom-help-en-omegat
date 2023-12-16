---
description: Компонент JavaScript в Loginom. Глобальный объект Консоль. Методы Console. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Console

By default, the message console window in the [Preview](./../../../visualization/preview/preview.md) window is collapsed. ![ ](./../../../images/icons/common/toolbar-controls/up_default.svg) and ![ ](./../../../images/icons/common/toolbar-controls/down_default.svg) buttons are used to display/collapse it.

The global `Console` object implementing the basic [Console](https://developer.mozilla.org/ru/docs/Web/API/Console) function was added within the JavaScript context.

## Console Methods

When running the node, the console messages are recorded to the server log, if the message type matches the [logging level](./../../../admin/parameters.md#parametry-logirovaniya) (`error`, `warning`, `information`):

The `error` logging level:

%spoiler%assert%spoiler%

**assert([assertion, msg1 , ..., msgN])**

- assertion means any boolean expression. If the expression is false, the error message is output to the console.
- msg1...msgN: a list of the JavaScript of objects to be displayed. The string representation of these objects will be combined in the order specified in the list. It will be output to the console.

It shows the error message, if the first parameter = `false`. Otherwise, the message is not shown.

%/spoiler%

%spoiler%error%spoiler%

**error([msg1 , ..., msgN])**

- msg1...msgN means a list of the JavaScript objects to be displayed. The string representation of these objects will be combined in the order specified in the list. It will be output to the console.

It shows the error message.

%/spoiler%

The `warning` logging level:

%spoiler%warn%spoiler%

**warn([msg1 , ..., msgN])**

- msg1...msgN means a list of the JavaScript objects to be displayed. The string representation of these objects will be combined in the order specified in the list. It will be output to the console.

It shows the warning message.

%/spoiler%

The `information` logging level:

%spoiler%info%spoiler%

**info([msg1 , ..., msgN])**

- msg1...msgN means a list of the JavaScript objects to be displayed. The string representation of these objects will be combined in the order specified in the list. It will be output to the console.

It shows the information message.

%/spoiler%

%spoiler%log%spoiler%

**log([msg1 , ..., msgN])**

- msg1...msgN means a list of the JavaScript objects to be displayed. The string representation of these objects will be combined in the order specified in the list. It will be output to the console.

It shows the information message.

%/spoiler%

Other methods:

%spoiler%clear%spoiler%

**clear()**

It enables to clean the message console in the *Preview* window. It does not have arguments.

%/spoiler%

## Examples:

Code of outputting messages to the console:

```javascript
import { OutputTable, InputTables } from "builtIn/Data";

function f() { return "something"; }

console.info("Information");
console.warn("Warning!");
console.error("Error!!!");
console.log(true);
console.log(undefined);
console.log(null);
console.log(1, 2, 3);
console.log(Math);
console.log(OutputTable);
console.log(f);
console.log(OutputTable.Append);
console.log(new RegExp("a+"));
console.log(new Error("error"));
console.log(new String("Str"));
console.log(new Boolean(true));
console.log(new Date());
console.log(new ArrayBuffer(10));
console.log(Symbol());
console.log(Symbol("aaa"));
console.log(Object(Symbol()));
console.log(new Proxy({}, {}));
console.log([1, InputTables, /^[0..9]+$/]);
console.assert(0 == 0);
console.assert(1 == 0);
console.assert(1 == 0, "1 != 0");
console.assert(1 == 0, "lie", "1 != 0");
```

Outputting to the console:

```
Information
Warning!
Error!!!
true
undefined
null
1 2 3
[object Math]
[object Object]
function f() { return "something"; }
function Append() { [native code] }
/a+/
Error: error
[object String]
[object Boolean]
Mon Dec 17 2018 18:40:56 GMT+0300 (RTZ 2 (winter))
[object ArrayBuffer]
Symbol()
Symbol(aaa)
[object Symbol]
[object Proxy]
1,[object Object],/^[0..9]+$/
Assertion failed:
Assertion failed: 1 != 0
Assertion failed: lie 1 != 0
```
