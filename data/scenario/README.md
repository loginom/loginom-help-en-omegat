# Workflows Design

The **Workflow** is the main component of the Module (refer to [package usage type and structure](../quick-start/package.md)). It is a sequence of the data processing steps. The steps are set by the nodes from the standard or [Derived components](./derived-component.md).

The workflow is empty by default and it is filled with required components according to the solved task by their adding to the Workflow area (refer to the [Interactive mode of operation](./interactive-mode.md)).

[Ports](./ports/README.md): method of communication between the nodes.

In Loginom the Workflow nodes accept data via the input ports and give it back via the output ones. The input ports are located to the left on the Workflow node icon, and the output ones - to the right.

To provide more flexible operation of the Workflow, it is possible to use [variables](./variables/README.md). They are objects that contain only one value of the particular type.

In general, there are the following types of variables:

* Workflow variables;
* Node variables.

It is possible to create the Derived Components based on the base ones in the Workflows.
Their peculiarity consists in the fact that they have the base component structure but can also have unique indicators.

When designing the Workflow, it is possible to make our objects (for example, nodes) available to another Workflow (refer to [access modifier](./access-modifier.md)).

Apart from the Workflows execution in the interface (Interactive mode), there is another execution option — [batch mode](./batchlauncher.md). The point of the mode is that the Workflow is launched without interface. It brings about operations with the input data (transformation, transfer and upload of data).

It is also possible to [train/retrain](./training-processors.md) the node. This function is used for the nodes based on the training (Neural networks ([Neural network (Regression)](../processors/datamining/neural-network-regression.md) and [Neural network (Clustering)](../processors/datamining/neural-network-classification.md)), [Clustering](../processors/datamining/clustering.md), etc.). Retraining is particularly important in the cases when the data set is changed, and it is required to retrain the Model on the new data basis.

In Loginom it is possible to set own order of nodes execution according to the subject area peculiarities of the designed Workflow or for the optimization purposes (for example, increase of the execution speed) (refer to [workflow progress control](./run-order.md)).

To avoid repeated calculations, it is possible to save the intermediate calculations in memory (refer to [caching](./caching.md)).

Where applicable, already designed Workflow can be launched in another execution environment. In this case, it is required to keep track of the [local settings](./local-settings.md). Their change can cause the change of the Workflow execution results.
