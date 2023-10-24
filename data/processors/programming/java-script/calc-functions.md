---
description: Компонент JavaScript в Loginom. Импорт функций Калькулятора. Встроенный модуль "builtIn/Calc". Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Calculator Functions Import

It is possible to use the [Calculator functions](./../../func/calc-func/README.md) in the JavaScript code. For this purpose, it is required to use the built-in module - `"builtIn/Calc"`. All functions are available, including the ones implemented in plugins, with the exception of the following ones:

- IF, IFF: there is an analogue in JS: `if (<condition>) {...}`.
- The functions of work with the input data (`Data`, `RowNum`, `RowCount`, `DisplayName`, `CumulativeSum`): there are analogues in [API](./api-description.md) (`RowCount`, `DisplayName`), or they are easily implemented by the JS code.

Examples of the functions use:

```javascript
import { OutputTable } from "builtIn/Data";

// Module import by require function
const calcModule = require("builtIn/Calc");
OutputTable.Append();
let currentDate = new Date();
OutputTable.Set(0, calcModule.AddWeek(currentDate, 1));
OutputTable.Set(1, calcModule.AddQuarter(currentDate, -1));

// Import using the default value
import calcDefault from "builtIn/Calc";
OutputTable.Append();
OutputTable.Set(0, calcDefault.Val("1"));
OutputTable.Set(1, calcDefault.Str(1e6));

// Import of the whole module content
import * as calc from "builtIn/Calc";
OutputTable.Append();
OutputTable.Set(0, calc.Count("AAA"));
OutputTable.Set(1, calc.Lower("AAA"));

// Import of certain functions
import { RegExMatchCount, RegExMatchedExp } from "builtIn/Calc";
OutputTable.Append();
OutputTable.Set(0, RegExMatchCount("a+?", "aaa"));
OutputTable.Set(1, RegExMatchedExp("a+", "aaa"));

// Dynamic import
import("builtIn/Calc").then(calc => {
    OutputTable.Append();
    OutputTable.Set(0, calc.Repeat(1, 10));
});

```
