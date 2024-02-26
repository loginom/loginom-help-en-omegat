---
description: Компонент JavaScript в Loginom. Импорт внешних модулей. Модульные системы ES6 (ECMAScript 6) и CommonJS. Путь импорта внешних модулей. Примеры.
---
# ![](./../../../images/icons/components/javascript_default.svg) Import of External Modules

## Module Systems

[ES6](https://www.ecma-international.org/ecma-262/6.0/#sec-modules) (ECMAScript 6) and [CommonJS](http://wiki.commonjs.org/wiki/Modules/1.1.1) module systems are supported. The node code is a root module of ES6 system.
The static and dynamic import of ES6 modules is supported in ES6 modules, to import the CommonJS modules, it is required to use `require` function (refer to [Full API Description](./api-description.md)).

%spoiler%Examples%spoiler%

**ECMAScript 6 Module System**

"./foo/module/module.js" external module:

```javascript
function sayHello() {
    return "Hello";
}
export { sayHello };
```

"./foo/foo.js" external module:

```javascript
import { sayHello } from "./module/module.js";
function cube(x) {
    return x * x * x;
}
export { cube, sayHello };
```

Use of modules in the code of the JavaSript node:
```javascript
// Static import
import { cube, sayHello } from "foo/foo.js";
console.log(sayHello());
console.log('3^3 = ', cube(3));

// Dynamic import
import("foo/foo.js").then(mod => {
     console.log(mod.sayHello());
     console.log('3^3 = ', mod.cube(3));
}).catch(e => {
     console.error(e);
});
// or
(async () => {
     try {
        const mod = await import("foo/foo.js");
        console.log(mod.sayHello());
        console.log('3^3 = ', mod.cube(3));
     } catch(e) {
        console.error(e);
     }
})();
```

**CommonJS Module System**

"./foo/module/module.js" external module:

```javascript
function sayHello() {
    return "Hello";
}
module.exports = sayHello;
```

"./foo/foo.js" external module:

```javascript
const sayHello = require("./module/module.js");
function cube(x) {
    return x * x * x;
}
exports.sayHello = sayHello;
exports.cube = cube;
```

Use of modules in the code of the JavaSript node:

```javascript
const foo = require("foo/foo.js");
console.log(foo.sayHello());
console.log('3^3 = ', foo.cube(3));
```

%/spoiler%

The external modules can be represented in `UTF-8` or `UTF-16 Little Endian с BOM` encoding.

The CommonJS modules are operated according to the [specification](http://wiki.commonjs.org/wiki/Modules/1.1.1) with the following differences:

- There are no `require.main`, `require.paths` and `module.uri` optional properties.
- `require.resolve` and `require.cache` (as in NodeJS) optional properties were added.
- The module object has `parent`, `loaded` and `filename` (as in NodeJS) properties.
- The global `__filename` variable that keeps the absolute path to the module inside the file storage is available by the module.

%spoiler%Example%spoiler%

"child_module.js" external module:

```javascript
console.log("Hello! I am " + __filename);
exports.filename = module.filename; // returns the full path to child_module.js
exports.parent = module.parent.id;  // returns the identifier of the calling module
exports.loaded = module.loaded;     // returns true or false - whether the module was loaded
```
Use of "child_module.js" module in the code of the JavaSript node:

```javascript
// require.resolve:
// - returns the full module path in the file storage on the Megaladata server
// - returns the full module path in the file system in the desktop edition
let path = require.resolve("child_module.js");
console.log(path);
// Calling of the external module of the CommonJS system
let childModule = require("child_module.js");
console.log(childModule.filename);
console.log(childModule.parent);
console.log(childModule.loaded);
// Cache of "child_module.js" module is cleared
delete require.cache[path];
// and the external module is repeatedly called,
// consequently, the following information is repeatedly displayed: "Hello! I am ... ".
// It is not possible without cache flush
require("child_module.js");
```

%/spoiler%

Only the CommonJS modules can be loaded from the CommonJS modules.

## Import Paths of External Modules

The modules import paths can be relative and absolute.

### Relative Path

When using relative paths in the root modules (the script that contains the node code editor):

- If the package is saved, the relative path to the external module is specified from the package location.
- If the package is not saved, the relative path to the external module is specified from the user directory.

The relative path in the external modules is specified from the import module location.

For example:

```javascript
import { cube, foo, sayHello } from "./foo/foo.js";
```

### Absolute Path

#### on the Loginom server

If the path starts from "/", it is interpreted as the absolute one inside the [file storage](./../../../location_user_files.md), and it is calculated from the user directory.

For example:

```javascript
import { cube, foo, sayHello } from "/user/foo/foo.js";
```

#### In the desktop edition

The absolute path: the full path in the file system. For example:

```javascript
import { cube, foo, sayHello } from "C:\\Script\\foo\\foo.js";
```
