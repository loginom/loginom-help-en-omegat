---
description: Компонент Python в Loginom. Создание нового набора данных в ходе выполнения кода Python. Описание. Мастер настройки. Обработка ошибок. Особенности использования и ограничения. Примеры.
---

# ![](./../../../images/icons/components/python_default.svg) Python

## Description

The node creates a new data set with the set composition and features of fields. It appends data to it during the **Python** code execution. To append the output data set, it is possible to use the data of the input ports in the code.

Composition and features of the output data set fields can be set both in the node wizard and from the Python code.

> Note:** For *Python* nodes operation, Megaladata preset and Python installation can be required. More detailed information is provided in [Component Parameters: Python](./../../../admin/parameters.html#parametry-komponenta-python) section.

### Input

* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) **Input data source** (data table), optional;
* ![](./../../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port enables to create a new port - Input data source[N] where N is an order port number.
* ![](./../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables** (variables), optional.

### Output

* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

The following configuration stages are successively executed:

* Configure columns of **Output Table** *Python*;
* **Python** – code setting and preview of results.

### Configure columns of output table

The output data set columns can be set on the following wizard page: **Configure Python Output Table Columns**. It can be also done in a dynamic manner during the Python code execution. When selecting **Allow creating output columns in script** checkbox, dynamic creation, change and deletion of output columns are available.

### Python

The *Python* page contains editor of the code executed by the node. It is possible to start the written script inside the Megaladata process or in the separate process (in the *Interpreter process*) when selecting **Start in separate process** checkbox.

[Preview…](./../../../visualization/preview/preview.md) button enables to display up to 100 first strings of the resulting data set and [message display panel](./console.md) in the separate window.

> **Note: It is possible to activate all input ports ** by pressing *Preview* button. The *Preview* window is opened if the activation has been successfully finished.

When starting the script using Python inside the Megaladata process, only one *Python* node can be executed simultaneously, correspondingly, the next following *Python* node in the start queue must wait for execution of the previous one. The maximum timeout is set by **Start wait timeout (ms)** parameter. Timeout is not limited by default. If timeout time is exceeded, node execution is terminated with a corresponding error.

When starting the executed code using Python in the separate process several *Python* nodes at once can be executed in parallel. Correspondingly, **Start wait timeout (ms)** is not supported.

> **Note:** The Python execution mode is not supported in Linux inside the Megaladata process, consequently, there is no *Library path* setting. The *Python* nodes configured for execution inside the process will be executed in the separate process in Linux.

Python modules import is supported (refer to [Component parameters: Python](./../../../admin/parameters.html#parametry-komponenta-python)).

Also refer to [Code editor hotkeys](./hotkeys.md)

## Access from the Python code to port data and other built-in objects

To provide access to port data and other built-in objects, the following objects are provided in the context of the code execution :

* [Input data sets](./input-tables.md) (`InputTables`, `InputTable`);
* [Input variables](./input-variables.md) (`InputVariables`);
* [Output data set](./output-table.md) (`OutputTable`);
* [Required enumerations](./enum.md) (`DataType`, `DataKind`, `UsageType`).

The objects specified above are imported from the built-in `"builtin_data"` module. The import string of these objects is added to the text of the code executed by the node by default.

## Processing of Errors

When calling the *Preview* window or executing the node, the message informing about detected syntactic and execution errors is shown specifying position of the code with an error.

## Special Aspects of Use and Restrictions

* Minimum supported Python version — 3.5.
* Maximum tested Python version — 3.10.
* Python from Anaconda distribution kit is not supported.
* [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) package modules are not supported.
* Creation of GUI interface from the Python code is not designation of the *Python* component, and in some cases it can cause incorrect application operation. For example:
   * node operation will not be terminated until GUI application operation is completed. As a rule, the Megaladata user does not have access to the GUI application window when working in the server editions.
   * for `matplotlib` operation with [Qt](https://wiki.qt.io/About_Qt) backend and in general with [PyQt](https://riverbankcomputing.com/software/pyqt/intro), availability of [qt.conf](https://doc.qt.io/qt-5/qt-conf.html) file with paths to Qt libraries/plugins is required. If it is not possible to find them, the Megaladata application will be forcibly terminated with an error message.
* The background threads left unterminated can cause application crash.
* In the case of crytical errors python3x.dll can shut the application down. It is recommended to use preliminarily debugged Python code.
* Only one *Python* node can be simultaneously executed.
* It is possible to stop the *Python* node execution only between interpreter instructions.
* [Virtual environments](https://docs.python.org/3/library/venv.html) can be used when setting *Interpreter path*.

The node code is executed in `__main__` module. Thus, `__name__ == '__main__'` condition is fulfilled. It is generally used to start scripts.

Import of modules from the [file storage](./../../../location_user_files.md) is supported. In the node code:

- If the package is saved, the relative path to the imported module is specified from the package location. [sys.path](https://docs.python.org/3/library/sys.html#sys.path) (`sys.path[0]`) contains the path to the package directory in which the *Python* node is located.
- If the package is not saved, the relative path to the imported module is specified from the user directory. [sys.path](https://docs.python.org/3/library/sys.html#sys.path) (`sys.path[0]`) contains the path to the user directory.

The relative path in modules is specified from the location of the importing module.

%spoiler%Example:%spoiler%

The following modules are located relative to the saved Megaladata package:

- `./foo/__init__.py` module:

```python
__all__ = ["module"]
from .foo import cube
```

- `./foo/foo.py` module:

```python
def cube(x):
    return x * x * x
```

- `./foo/module/__init__.py` module:

```python
from .module import say_hello
```

- `./foo/module/module.py` module:

```python
def say_hello():
    return "Hello"
```

Under condition of such location of modules, importing and calling of these functions can be performed in the *Python* node as follows:

```python
from foo import cube
from foo.module import say_hello

print(say_hello())
print("3 ** 3 =", cube(3))

```

%/spoiler%

In the [Preview](./console.md) of results mode the value of the `__file__` attribute of the`__main__` module is equal to `<preview>`, when executing the node — `<main>`.

%spoiler%Example:%spoiler%

```python
from builtin_data import OutputTable

if __file__ == "<preview>":
    print(__file__)
else:
    OutputTable.Append()
    OutputTable.Set(0, __file__) #__file__ == "<main>"
```

%/spoiler%

The global `filestoragepath` function is available. It takes the path in the  [file storage](./../../../location_user_files.md) and transforms it to the absolute path in the file system. No additional imports are required for its application.

%spoiler%Example:%spoiler%

```python
from builtin_data import OutputTable
import json

with open(filestoragepath("data_file.json")) as f:
    data = json.load(f)
OutputTable.Append()
OutputTable.Set(0, data)

```

%/spoiler%