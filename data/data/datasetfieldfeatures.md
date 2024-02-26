---
description: Доступные параметры для полей наборов данных. Перечень назначений, которые может принимать параметр, в зависимости от индивидуальных особенностей узла в Loginom.
---
# Features of Data Set Field

* **Name**: the unique column name for one data set. It can consist of the following characters:
   * Capital or low case Latin characters.
   * Underscore characters.
   * Digits (it cannot be the first character).
* **Caption**: random field description.
* **Data type**: one of the possible [data types](./datatype.md).
* **Data kind**: one of the possible [data kinds](./datakind.md).
* **Usage type** — to be filled in for some nodes while configuring the input port. The list of usage types that can be taken by the parameter is individual for each node. It sets the column data feature in the context of the algorithm executed by the node.