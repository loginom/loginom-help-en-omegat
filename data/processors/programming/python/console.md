---
description: Компонент Python в Loginom. Панель вывода сообщений. Примеры.
---
# ![](./../../../images/icons/components/python_default.svg) Message Display Panel

On the *Display* panel of the [Preview](./../../../visualization/preview/preview.md) window the *standard display* (`sys.stdout`) and *standard display of errors* (`sys.stderr`) messages are displayed.
The panel is collapsed by default ![ ](./../../../images/icons/common/toolbar-controls/up_default.svg) and ![ ](./../../../images/icons/common/toolbar-controls/down_default.svg) buttons are used for its display/collapsing.

## Examples:

```python
import sys, warnings

#outputting to stdout
print(sys.path[0])
sys.stdout.write(str(99) + '\n')

#outputting to stderr
warnings.warn("Error!")
try:
    а = 10 / 0
except ZeroDivisionError as err:
    sys.stderr.write(str(ZeroDivisionError))

```
