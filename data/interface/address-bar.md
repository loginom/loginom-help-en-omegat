---
description: Адресная строка в аналитической платформе Loginom. Элементы навигации по объектам. Ссылка на объект в Loginom.
---
# Address Bar

Address bar is a breadcrumb trail of objects (refer to Figure 1). To move to the objects located higher as far as the nesting level is concerned, it is required to press corresponding object in the trail.

![Address bar.](address-bar-1.png)

Navigation elements:

* ![Go up](./../images/icons/common/toolbar-controls/up_default.svg) **Go up**: transition to the upper level object.
* ![Go back](./../images/icons/common/toolbar-controls/arrow-l_default.svg) **Go back** enables to return to the previous opened object.
* ![Go forward](./../images/icons/common/toolbar-controls/arrow-r_default.svg) **Go forward** enables to cancel *Go back* transition if no other navigation operations have been performed afterwards.
* ![Сохранить пакет](./../images//icons/common/toolbar-controls/toolbar-controls_18x18_save_default.svg) **Сохранить пакет** (Ctrl+S) — сохраняет настройки Пакета, которые актуальны на момент нажатия этой кнопки.

Pressing ![List of subobjects](./../images/icons/common/toolbar-controls/down_default.svg) button, it is possible to go to the subobjects of the complex object (refer to  Figure 2).

![Select complex object](address-bar-2.png)

If required, it is possible to enter the path manually. In order to do that, it is required to press address bar and enter the new/corrected path. For example:

```text
\Packages\Scoring\Score calculation\Workflow
```

## Reference to Object

The multiuser edition enables to receive hyperlink to the current opened object. Pressing ![Share](./../images/icons/common/toolbar-controls/share_default.svg) **Share…**, it is possible to open a window with one or two paths:

* *Absolute* (for joint usage) includes a name of the folder from which a file was downloaded. It is available for different packages.
* *Relative* (for personal usage) contains a point instead of the folder name. It is available only for user packages.

The selected path can be quickly copied using ![Copy](./../images/icons/common/toolbar-controls/copy_default.svg) button. Subsequently, it can be used in the browser address bar for quick transition to the opened object.

> **Note:** When following this link, it is required to enter corresponding login and password (if any).
