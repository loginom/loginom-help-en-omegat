---
description: Компоненты аналитической платформы Loginom, использующие самообучающиеся алгоритмы. Обучение (переобучение) узлов. Обучение вручную. Автоматическое обучение.
---
# Node Training (Retraining)

Self-training algorithms are used in some components: [Clustering](./../processors/datamining/clustering.md), [Self-organising maps](./../processors/datamining/self-organizing-network.md), [Binning](./../processors/preprocessing/binning.md), etc. Initial training is required for such nodes. Retraining can be also required, for example, in the cases when the Model is not a relevant task anymore, or the new source data starts to fall outside the limits of the sample used for training earlier.
Training (retraining) of the nodes can be performed as follows:

* **Manually**: the special procedure of the node retraining is performed during the Workflow configuration.
* **Auto**: in the [batch processing](./batchlauncher.md) mode.

Advantage of the manual retraining is that control of the Model retraining parameters and view of the received results are possible. At the same time, the automatic method is much faster and it is well-suited when the changes in the source data are insignificant.

## Manual Training

The manual training is used when creating (editing) Workflows. While attempting to execute some nodes initially without preliminary training, the following warning appears: "Model is not trained. It is required to train the node before its use". It is required to perform the following actions for the Model training or retraining:

1. It is required to make sure that the [activation mode](./node-activation-mode.md) settings allow for the node training.
2. It is required to select ![](./../images/icons/common/toolbar-controls/batch-mode_default.svg) Retrain node option in the context menu of the node.

Thus, it is possible to retrain all nested nodes of the [Supernode](./../processors/control/supernode.md) or [Loop](./../processors/control/loop.md). For this purpose, it is required to call the specified above procedure for the upper level node in the nesting hierarchy. If the default settings are used by the subordinate nodes for the activation mode (Specified mode of node activation = "Defined by the context of the current processing process"), the retraining is performed for all subordinate nodes irrespective of the nesting depth.

For example, the Supernode in which the iteration actions are performed is considered to be subordinate for the Loop node. This Supernode can also include hierarchy of Supernodes and subnodes. The Loop retraining of the highest level will cause retraining of all nested nodes and Supernodes.

## Automatic Training

The automatic training of the Models can be performed while batch processing of the workflows in which it is possible to set the following execution options for each of the nodes:

* The node will not be executed.
* The Node is executed without retraining of the Model.
* The Node is executed with retraining of the Model.