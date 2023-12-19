---
description: Компонент Python в Loginom. Создание нового набора данных в ходе выполнения кода Python. Описание. Мастер настройки. Обработка ошибок. Особенности использования и ограничения. Примеры.
---

# ![](./../../../images/icons/components/python_default.svg) Python

## Description

The node creates a new data set with the set composition and features of fields. It appends data to it during the **Python** code execution. To append the output data set, it is possible to use the data of the input ports in the code.

Composition and features of the output data set fields can be set both in the node wizard and from the Python code.

> **Примечание:** Для работы узлов *Python* может потребоваться предварительная настройка Loginom и установка Python. Подробности в разделе [Параметры компонента: Python](./../../../admin/parameters.html#parametry-komponenta-python).

### Input

* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) **Input data source** (data table), optional;
* ![](./../../../images/icons/app/node/ports/add/add_inactive_default.svg) Add another port enables to create a new port - Input data source[N] where N is an order port number.
* ![](./../../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables** (variables), optional.

### Output

* ![](./../../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set (data table).

## Wizard

The following configuration stages are successively executed:

* Configure columns of **Output Table** *Python*;
* **Python** – ввод кода и предварительный просмотр результатов.

### Configure columns of output table

Столбцы выходного набора можно задать как на странице **Настройка столбцов выходной таблицы Python** мастера, так и динамически, в ходе исполнения кода Python. При установке флага **Разрешить формировать выходные столбцы из кода** доступно динамическое создание, изменение и удаление выходных столбцов.

### Python

Страница *Python* содержит редактор исполняемого узлом кода. Запускать написанный скрипт возможно внутри процесса Loginom или в отдельном процессе (в *Процессе интерпретатора*) при установке флага **Запускать в отдельном процессе**.

По кнопке [Предпросмотр…](./../../../visualization/preview/preview.md) в отдельном окне выводится до 100 первых строк результирующего набора данных и [панель вывода сообщений](./console.md).

> **Note: It is possible to activate all input ports ** by pressing *Preview* button. The *Preview* window is opened if the activation has been successfully finished.

При запуске скрипта на Python внутри процесса Loginom одновременно может выполняться только один узел *Python*, соответственно последующий в очереди запуска узел *Python* ожидает выполнения предыдущего. Максимальное время ожидания задается параметром **Тайм-аут ожидания запуска (мс)**. По умолчанию тайм-аут неограничен. Если время тайм-аута превышено, выполнение узла завершается с соответствующей ошибкой.

При запуске исполняемого кода на Python в отдельном процессе может выполняться сразу несколько узлов *Python* параллельно, соответственно **Тайм-аут ожидания запуска (мс)** не поддерживается.

> **Примечание:** под Linux не поддерживается режим выполнения Python внутри процесса Loginom, следовательно, нет и настройки *Путь библиотеки*. Узлы *Python*, настроенные на выполнение внутри процесса, на Linux будут выполняться в отдельном процессе.

Поддерживается импорт модулей Python (см. [Component parameters: Python](./../../../admin/parameters.html#parametry-komponenta-python)).

Also refer to [Code editor hotkeys](./hotkeys.md)

## Доступ из кода Python к данным портов и другим встроенным объектам

Для доступа к данным портов и другим встроенным объектам в контексте выполнения кода предусмотрены следующие объекты:

* [Input data sets](./input-tables.md) (`InputTables`, `InputTable`);
* [Input variables](./input-variables.md) (`InputVariables`);
* [Output data set](./output-table.md) (`OutputTable`);
* [Required enumerations](./enum.md) (`DataType`, `DataKind`, `UsageType`).

Вышеуказанные объекты импортируются из встроенного модуля `"builtin_data"`. The import string of these objects is added to the text of the code executed by the node by default.

## Processing of Errors

When calling the *Preview* window or executing the node, the message informing about detected syntactic and execution errors is shown specifying position of the code with an error.

## Особенности использования и ограничения

* Минимальная поддерживаемая версия Python — 3.5.
* Максимальная протестированная версия Python — 3.10.
* Python из дистрибутива Anaconda не поддерживается.
* Не поддерживаются модули пакета [multiprocessing](https://docs.python.org/3/library/multiprocessing.html).
* Создание GUI-интерфейса из кода Python не является целевым назначением компонента *Python* и в некоторых случаях может приводить к неверной работе приложения. For example:
   * работа узла не будет прекращена до завершения работы GUI-приложения. При работе в серверных редакциях Loginom пользователь, как правило, не имеет доступа к окну GUI-приложения.
   * для работы `matplotlib` с бэкэндом [Qt](https://wiki.qt.io/About_Qt) и в целом с [PyQt](https://riverbankcomputing.com/software/pyqt/intro) требуется наличие файла [qt.conf](https://doc.qt.io/qt-5/qt-conf.html) с путями к библиотекам/плагинам Qt. При невозможности их найти, приложение Loginom будет принудительно завершено с сообщением об ошибке.
* Оставленные незавершенными фоновые потоки могут приводить к аварийному завершению приложения.
* В случае критических ошибок python3x.dll может аварийно завершить приложение. Рекомендуется использовать предварительно отлаженный код Python.
* Одновременно может выполняться только один узел *Python*.
* Остановить выполнение узла *Python* можно только между инструкциями интерпретатора.
* [Virtual environments](https://docs.python.org/3/library/venv.html) can be used when setting *Interpreter path*.

Код узла выполняется в модуле `__main__`. Таким образом выполняется условие `__name__ == '__main__'`, которое обычно используется для запуска скриптов.

Поддерживается импорт модулей из [файлового хранилища](./../../../location_user_files.md). В коде узла:

- Если пакет сохранен, то относительный путь к импортируемому модулю указывается от расположения пакета. [sys.path](https://docs.python.org/3/library/sys.html#sys.path) (`sys.path[0]`) содержит путь к директории пакета, в котором находится узел *Python*.
- Если пакет не сохранен, то относительный путь к импортируемому модулю указывается от каталога пользователя. [sys.path](https://docs.python.org/3/library/sys.html#sys.path) (`sys.path[0]`) содержит путь к каталогу пользователя.

В модулях относительный путь указывается от расположения модуля, осуществляющего импорт.

%spoiler%Example:%spoiler%

Относительно сохраненного пакета Loginom расположены следующие модули:

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

При таком расположении модулей импорт и вызов функций этих модулей может осуществляться в узле *Python* следующим образом:

```python
from foo import cube
from foo.module import say_hello

print(say_hello())
print("3 ** 3 =", cube(3))

```

%/spoiler%

В режиме [Предпросмотра](./console.md) результатов значение атрибута `__file__` модуля `__main__` равно `<preview>`, при выполнении узла — `<main>`.

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

Доступна глобальная функция `filestoragepath`, которая принимает путь в [файловом хранилище](./../../../location_user_files.md) и преобразует его в абсолютный путь в файловой системе. Дополнительных импортов для ее применения выполнять не нужно.

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