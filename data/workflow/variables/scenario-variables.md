---
description: Переменные сценария в аналитической платформе Loginom. Переменные системы. Переменные сессии. Переменные пакета. Приоритет переменных. Пример итогового набора в порту Переменные.
---
# Workflow Variables

The [ports](./../ports/README.md) of the Workflow variables are located in the upper left corner of the Workflow construction area:

* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Variables** represent the final set of all Workflow variables listed below. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **System variables** represent a set of variables of the operating system environment. It is read from the system settings. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Session variables** represent a set of variables of the current session. Variables cannot be edited.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Package variables** represent a set of variables of the current Package. [Предопределенные переменные](./../../workflow/variables/predefined-variables.md#peremennye-paketa) недоступны для редактирования.
* ![ ](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **User variables** represent a set of variables set by the user of the current Workflow.
* ![ ](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) enables to call the action menu of ports of the Workflow variables. It is used during the Workflow debugging.

Для того чтобы добавить Переменную пакета, необходимо:
* нажать кнопку Навигация в главном меню;
* в открывшейся древовидной структуре Пакета выбрать раздел Переменные.

При добавлении новой переменной задаётся Имя, Метка и Тип данных. Значение переменной можно не задавать.

![Добавление Переменной](./add-variable.png)

При выставлении флага **Скрытая** пользователи, у которых отсутствует роль [Проектирование сценариев](./../../admin/users/roles.md#proektirovanie-stsenariev), не видят переменную.

При выставлении флага **Только для чтения** пользователи, у которых отсутствует роль Проектирование сценариев, не могут задавать Значение переменной.

Если у пользователя отсутствует роль Проектирование сценариев, то на редактирование переменных накладываются некоторые ограничения:

* нельзя Удалять/Добавлять/Перемещать переменные;
* нельзя менять Имя/Метку/Тип переменной.

> **Примечание:** Внутри [Подмодели](./../../processors/control/supernode.md) также имеется возможность использовать переменные Сценария. Однако, порт «Переменные пользователя» в этом случае содержит собственный набор переменных, применимых только внутри Подмодели.

The action menu contains the following commands:

* ![ ](./../../images/icons/common/toolbar-controls/launch-node_default.svg) **Start processing** provides the manual ports activations (the activated port contains data).
* ![ ](./../../images/icons/common/toolbar-controls/setup_default.svg) **Settings** enable to open the dialog of configuration of the user variables values.
* ![ ](./../../images/icons/common/toolbar-controls/configure-viewers_default.svg) **Configure visualizers** enables to open the dialog of the visualizers configuration.
* ![ ](./../../images/icons/common/toolbar-controls/rows_default.svg) **Other actions** enable to call the context menu with the extended set of commands.

To call the context menu of the port, it is required to click on the port. The context menu contains the following commands:

* ![ ](./../../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) **Quick view** enables to call the variable [watch window](./../../visualization/preview/quick-view.md). The command is available after the port activation.
* ![ ](./../../images/icons/common/toolbar-controls/setup_default.svg) **Configure port** enables to open the dialog of configuration of the variables values.
* ![ ](./../../images/icons/common/toolbar-controls/edit_default.svg) **Edit port captions** enables to open the dialog of the port caption editing.

The variable with the same name can occur simultaneously in several ports. To exclude conflicts, the following priority is observed:

1. User variables.
2. Package variables.
3. Session variables.
4. System variables.

Thus, user variables have the highest priority.

For example:

* Переменная системы USERNAME=«PC-01$»;
* Переменная пользователя USERNAME=«Иванов».

Итоговый набор в порту «Переменные» содержит перечень всех переменных, их значения вычислены с учетом вышеизложенного приоритета. Значение переменной *USERNAME* в ней будет равно «Иванов».
