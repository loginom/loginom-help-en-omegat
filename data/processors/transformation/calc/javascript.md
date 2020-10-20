# ![](../../../images/icons/calcdata/javascript_default.svg) JavaScript

When installing the *JavaScript* syntax, the expression code area must contain JavaScript.
The next example shows how to calculate the sum of two *Calculator* fields:

```javascript
// Calculation of the sum of fields
let result;
result = COL1 + COL2;

return result;
```

It is possible to use references to other *Calculator* fields or variables created in the expressions list, including the new ones.

> **Note:** It is possible to use references to the expressions calculated earlier in the expression, namely, the expressions that are higher in the list of expressions. Consequently, incorrect list item position can cause a mistake.

In this example, it is required to use references to the fields with `COL1` and `COL2` names to calculate the `result` variable.

To show the result in the calculated calculator field, it is required to use the `return` command that returns the `result` variable value which contains the calculated sum of the *Calculator* fields.

> **Important:** the script must be finished by the `return` command that shows the result in the calculated calculator field. Otherwise, the script will be executed but the result will not be shown in the calculated field.

Compact code variant for calculation of the calcualtor fields sum:

```javascript
// Calculation of the sum of fields
return COL1 + COL2;
```

Example of calculation of the power of a number:

```javascript
// Function of calculation of the power of a number
function pow(x, n) {
  if (n != 1) {
    return x * pow(x, n - 1);
  } else {
    return x;
  }
}
// Show the function result in the calculation field
return pow(COL1, COL2);
```

`pow(x, n)` function is defined in this script. It takes number and power to which it is risen as arguments.
To show the script result in the calculated calculator field, it is required to use the `return pow(COL1, COL2)` command where `pow(COL1, COL2)` enables to call the declared function with transfer to `х` and `n` parameters of the values from the calculator fields (or variables) `COL1` and `COL2`, correspondingly.

It is possible to use built-in [functions *of Calculator*](../../func/calc-func/README.md) in the JavaScript code:

```javascript
function my_concat(x, n) {
 let s;
 // s = x.concat(n);        - the JavaScript method is used
 s = Concat(x,n);       //  - the calculator function is used

return s;
}

return my_concat(COL1, COL2);
```

Names of the built-in functions of *Calculator* and JavaScript do not intersect each other. The *Calculator* functions always start from the capital letter. However, it is possible to redefine them in the JS code.  It is not required to import [functions *of the Calculator*](../../func/calc-func/README.md) distinctly (as it is done in the [component * of JavaScript*](../java-script/calc-functions.md)).

> **Note:** As opposed to the [component *of JavaScript*](../java-script/README.md) in *Calculator* the [Promise](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Promise) object is not supported.

## Import of External Modules

External modules are supported as in the JavaScript component but it is possible to use only [CommonJS](http://wiki.commonjs.org/wiki/Modules/1.1.1) module systems in *Calculator*. Модульная система [ES6](https://www.ecma-international.org/ecma-262/6.0/#sec-modules) (ECMAScript 6) не поддерживается. С примерами и документацией использования модулей CommonJS можно ознакомится в статье [JavaScript: Импорт внешних модулей](../../../processors/transformation/java-script/external-modules.html#modulnye-sistemy).

### Особенности применения внешних модулей

Для импорта модуля CommonJS применяется функция `require`. For example:

```javascript
const foo = require("foo/foo.js");
```

Инициализация объектов модуля происходит при первом таком вызове, при последующих используется кэш, в котором сохраняется состояние объектов модуля предыдущего вызова. Поскольку в *Калькуляторе* для каждой из вычисляемых ячеек таблицы происходит выполнение скрипта, то содержащийся в нем вызов `require` модуля происходит многократно и используется кэш. Таким образом измененное состояние объектов модуля может передаваться от вызова к вызову. Это необходимо учитывать и при необходимости очищать кэш, доступный через объект `require.cache`:

```javascript
let path = require.resolve("foo/foo.js");
delete require.cache[path];  // Очищается кэш модуля "foo/foo.js"
```

> **Важно**: использование кэша для передачи значений между вызовами `require` может привести к непредсказуемым результатам вычислений в виду использования многопоточности вычислений.

## Quick Access Toolbar

На панели расположены кнопки, по нажатию на которые в область кода выражения вставляется заготовка либо шаблоны.

Logical operations:

* **&&** — Logical "AND";
* **||** — Logical "OR";
* **!** — Logical "NOT".

Comparisons operator:

* **=** — Equals.
* **!=** — Not equal;
* **<** — Less than.
* **>** — Greater than.
* **<=** — Less than or equal to.
* **>=** — Greater than or equal to.

Templates:

* ![Real number](../../../images/icons/toolbar-controls/type-float_default.svg): `0.0` will be inserted to enter the real number.
* ![String](../../../images/icons/toolbar-controls/type-string_default.svg): `""` will be inserted to enter the string.
* ![Дата](../../../images/icons/toolbar-controls/type-date_default.svg) — для ввода даты, будет вставлена конструкция создания объекта, содержащего текущую дату. For example: `new Date(2020, 1, 5)`;
* ![Время](../../../images/icons/toolbar-controls/type-time_default.svg) — для ввода даты/времени, будет вставлена конструкция создания объекта, содержащего текущее дата/время. For example: `new Date(2020, 1, 5, 13, 12, 50, 100)`.

Logical values:

* **false** — False;
* **true** — True.