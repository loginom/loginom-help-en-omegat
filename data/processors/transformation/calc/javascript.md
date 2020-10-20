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

В данном скрипте определена функция `pow(x, n)`, принимающая в качестве аргументов число и степень, в которую оно возводится.
Для вывода результата скрипта в вычисляемое поле калькулятора используется команда `return pow(COL1, COL2)`, где `pow(COL1, COL2)` — вызов объявленной функции с передачей параметрам `х` и `n` значений из полей (или переменных) калькулятора `COL1` и `COL2` соответственно.

В коде JavaScript можно использовать встроенные [функции *Калькулятора*](../../func/calc-func/README.md):

```javascript
function my_concat(x, n) {
 let s;
 // s = x.concat(n);        - the JavaScript method is used
 s = Concat(x,n);       //  - the calculator function is used

return s;
}

return my_concat(COL1, COL2);
```

Наименования встроенных функций *Калькулятора* и JavaScript не пересекаются. Функции *Калькулятора* всегда начинаются с большой буквы, однако, их можно переопределить в коде JS.  Явного импорта [функций *Калькулятора*](../../func/calc-func/README.md) (как это делается в [компоненте *JavaScript*](../java-script/calc-functions.md)) делать не нужно.

> **Примечание:** в отличии от [компонента *JavaScript*](../java-script/README.md) в *Калькуляторе* не поддерживается объект [Promise](https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Global_Objects/Promise).

## Импорт внешних модулей

Как и в компоненте JavaScript поддерживаются внешние модули, но в *Калькуляторе* возможно использование только модульной системы [CommonJS](http://wiki.commonjs.org/wiki/Modules/1.1.1). Модульная система [ES6](https://www.ecma-international.org/ecma-262/6.0/#sec-modules) (ECMAScript 6) не поддерживается. С примерами и документацией использования модулей CommonJS можно ознакомится в статье [JavaScript: Импорт внешних модулей](../../../processors/transformation/java-script/external-modules.html#modulnye-sistemy).

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