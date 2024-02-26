---
description: Создание ссылки на внешний пакет в аналитической платформе Loginom. Узел-ссылка. Выполнение узла. Производный компонент. Общий пакет.
---
# References to Other Packages

This mechanism is required for use of objects and/or receipt of the data sets from other packages. Workflow nodes, connections, derived components can be used as such objects. To make these objects available in other packages, "Public" visibility area must be set for them (available in all packages) which is set by the following object parameter: «[Access modifier](./access-modifier.md)».

It is required to perform the following actions when creating the reference:

1. Select "References" item on the "Navigation" toolbar.
2. Select "Add" item in the context menu of the "References" item. "Add reference to package" window will be opened.
3. Set the path to the package access to which objects it is required to receive in "Path to the package file" parameter.
4. Press "Apply".

It is possible to perform the following actions upon creation of the Reference to the external Package:
* Refer to its objects using [Reference node](./../processors/control/reference-node.md), [Node execution](./../processors/control/execute-node.md) nodes.
* Use the [Derived components](./derived-component.md) created in it.

The first two are used if it is not required to change the data processing logics, the latter one if correction is required for the algorithm.

All options can be used for the public Packages, and only Reference node and Node execution are used for the private ones.

## Additional Information
Recurring fragments can occur in the components of the connected Package. Separately they are of no interest and are designated for use in the connected Package. They are **service components**. As a rule, they are nested relative to the main components of the connected Package, and prefix is included into their name in the form of the double underscore. It is not possible to disable their visibility.

## Shared Package

When opening the package referring to another package (hereafter referred to as the external package) that is not opened in this session, the latter will be opened as the *Shared package*. It is represented in [Administration](./../admin/README.md) on the [Session Manager](./../admin/dispatcher.md) page. The package will be located in *Shared* until at least one reference from other packages is active.

> **Important:** When the *Reference node* referring to the node of another package is used, it is required to bear in mind that the data requested in the *shared package* will be downloaded/calculated only once.
> * In this case, all corresponding nodes will be locked until calculations are finished!
> * In the case of the repeated request the data received earlier will be returned. Thus, recalculation will not be performed!

If data recalculation is required, it is possible to perform the following actions:

* Close all packages referring to the external and downloaded as the *shared* package.
* It is also possible to change the date of the external package creation (for example, by saving it). It will enable to create the second already updated copy in the Shared Packages.
* It is also possible to open the external package in the current user session. In this case it will be opened as the *shared* one.

Then, it is required to open the work package again.

%spoiler%Example:%spoiler%

![Example of Work with the External lib Package](./common-package.png)

Several users have opened packages referring to the external *lib* package.

The first user (*Albert*) opened the external *lib* package and then the work one. His external package will work with the data in his session irrespective of the opened packages of other users.

Other users (*Alisa* and *Jeanette*) opened only work packages in their sessions. That is why the external *lib* package has been downloaded as the *shared* one (counter displays the number of sessions that refer to this package), and in all cases access of these users will be directed to the *shared* package. Results in corresponding Reference Nodes will be identical for these users in their sessions.

%/spoiler%
