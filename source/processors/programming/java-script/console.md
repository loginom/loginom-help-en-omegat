---
description: Компонент JavaScript в Loginom. Глобальный объект Консоль. Методы Console. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Консоль

По умолчанию в окне [Предпросмотра](./../../../visualization/preview/preview.md) окно вывода сообщений консоли свернуто. Для его отображения/сворачивания используются кнопки ![ ](./../../../images/icons/common/toolbar-controls/up_default.svg) и ![ ](./../../../images/icons/common/toolbar-controls/down_default.svg).

В контекст JavaScript добавлен глобальный объект `Console`, реализующий базовый функционал [Console](https://developer.mozilla.org/ru/docs/Web/API/Console).

## Методы Console

При выполнении узла сообщения консоли записываются в лог сервера, если тип сообщения соответствует [уровню логирования](./../../../admin/parameters.md#parametry-logirovaniya) (`ошибка`, `предупреждение`, `информация`):

Уровень логирования `ошибка`:

%spoiler%assert%spoiler%

**assert([assertion, msg1 , ..., msgN])**

- assertion — любое булевое выражение. Если выражение ложно, то сообщение об ошибке выводится в консоль.
- msg1...msgN — список JavaScript объектов на вывод. Строковое представление этих объектов будет соединено в порядке, указанном в списке, и выведено в консоль.

Выводит сообщение об ошибке в случае, если первый параметр = `false`. В противном случае сообщение не выводится.

%/spoiler%

%spoiler%error%spoiler%

**error([msg1 , ..., msgN])**

- msg1...msgN — cписок JavaScript объектов на вывод. Строковое представление этих объектов будет соединено в порядке, указанном в списке, и выведено в консоль.

Выводит сообщение об ошибке.

%/spoiler%

Уровень логирования `предупреждение`:

%spoiler%warn%spoiler%

**warn([msg1 , ..., msgN])**

- msg1...msgN — cписок JavaScript объектов на вывод. Строковое представление этих объектов будет соединено в порядке, указанном в списке, и выведено в консоль.

Выводит предупреждающее сообщение.

%/spoiler%

Уровень логирования `информация`:

%spoiler%info%spoiler%

**info([msg1 , ..., msgN])**

- msg1...msgN — cписок JavaScript объектов на вывод. Строковое представление этих объектов будет соединено в порядке, указанном в списке, и выведено в консоль.

Выводит информационное сообщение.

%/spoiler%

%spoiler%log%spoiler%

**log([msg1 , ..., msgN])**

- msg1...msgN — cписок JavaScript объектов на вывод. Строковое представление этих объектов будет соединено в порядке, указанном в списке, и выведено в консоль.

Выводит информационное сообщение.

%/spoiler%

Прочие методы:

%spoiler%clear%spoiler%

**clear()**

Очищает консоль вывода сообщений в окне *Предпросмотра*. Не имеет аргументов.

%/spoiler%

## Примеры

Код вывода сообщений в консоль:

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

Вывод в консоль:

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
Mon Dec 17 2018 18:40:56 GMT+0300 (RTZ 2 (зима))
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