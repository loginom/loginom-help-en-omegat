---
description: Настройка доступа к объектам аналитической платформы Loginom. Модификатор доступа (закрытый, защищенный, внутренний, открытый, опубликованный). Ссылка на пакет.
---
# Access Modifier

The access modifier defines the object availability on different Package levels and between the Packages. The objects for which it is possible to set the access modifier are the Workflow connections and nodes.

To provide the accessibility setup, it is required to click on the selected object with the right mouse button and select ![](./../images/icons/common/toolbar-controls/access-rights_default.svg) "Configure visibility" option in the context menu. The window of settings selection will be opened:

| Name | Icon | Visibility area |
:----|:----:|:----
| Private | It is available only in the current Module |
| Secure | ![](./../images/icons/app/node/controls/visibility_private_ex.svg) | It is available only in the current Module and its [Supernodes](./../processors/control/supernode.md) |
| Internal | ![](./../images/icons/app/node/controls/visibility_internal.svg) | It is available only in the current Package |
| Public | ![](./../images/icons/app/node/controls/visibility_public.svg) | It is available in all Packages (to use the object from another Package, it is required to create a Reference to this Package) |
| Published | ![](./../images/icons/app/node/controls/visibility_published.svg) | It is available in all Packages and in the Web Service form (this access modifier is set when publishing the node in the Web Service form) |

The *name is set* for the node designated for publication. It will be the  Web Service method access modifier. The node name can be also used as a parameter while [Workflow batch processing](./batchlauncher.md)
(refer to */Node* parameter).

It should be noted that if the node that must be made available is located inside the Supernodes hierarchy, all these Supernodes must also be available (namely, they must have their own access modifier).

> **Note:** The Package module has the "Public" (available in all packages) access modifier by default.

Thus, when it is required to use the objects (for example, the Workflow nodes, Connections, [Derived components](./derived-component.md)) from other Packages, *references to other packages* must be used.

To make these objects available in other Packages, the "Public" (available in all packages) area of visibility must be set for them. This area is set by the "Access modifier" object parameter.

It is required to perform the following actions when creating the reference:

1. Select ![](./../images/icons/common/system-object/link_default.svg) Reference item on the "Navigation" panel.
2. Select ![](./../images/icons/app/node/ports/add/add_inactive_default.svg) "Add" option in the context menu of the Reference item. "Add reference to package" window will be opened.
3. Set the path to the Package access to which objects it is required to receive in "Path to the package file" parameter.
4. Press "Apply".

Upon creation of the Reference to the external Package, it is possible to use the Derived Components created in it and refer to its objects using [Reference node](./../processors/control/reference-node.md), [Node execution](./../processors/control/execute-node.md) nodes.
