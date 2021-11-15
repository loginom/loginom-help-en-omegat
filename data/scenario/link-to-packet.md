# References to Other Packages

This mechanism is required for use of objects and/or receipt of the data sets from other packages. Workflow nodes, connections, derived components can be used as such objects. To make these objects available in other packages, "Public" visibility area must be set for them (available in all packages) which is set by the following object parameter: «[Access modifier](access-modifier.md)».

It is required to perform the following actions when creating the reference:

1. Select "References" item on the "Navigation" toolbar.
2. Select "Add" item in the context menu of the "References" item. "Add reference to package" window will be opened.
3. Set the path to the package access to which objects it is required to receive in "Path to the package file" parameter.
4. Press "Apply".

It is possible to perform the following actions upon creation of the Reference to the external Package:
* Refer to its objects using [Reference node](../processors/control/unit-link.md), [Node execution](../processors/control/execute-node.md) nodes.
* Use the [Derived components](../scenario/derived-component.md) created in it.

The first two are used if it is not required to change the data processing logics, the latter one if correction is required for the algorithm.

All options can be used for the public Packages, and [Reference node](../processors/control/unit-link.md) and [Node execution](../processors/control/execute-node.md) are used for the private ones.

## Additional Information
Recurring fragments can occur in the components of the connected Package. Separately they are of no interest and are designated for use in the connected Package. They are **service components**. As a rule, they are nested relative to the main components of the connected Package, and prefix is included into their name in the form of the double underscore. It is not possible to disable their visibility.


