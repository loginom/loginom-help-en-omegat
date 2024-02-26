---
description: Пошаговая инструкция по созданию первого сценария обработки данных в аналитической платформе Loginom. Создание и сохранение пакета. Добавление и настройка узлов сценария. Пример сценария.
---
# The First Workflow

It is required to log in before work in case of the supplied [Enterprise](https://loginom.ru/platform/pricing#edition-enterprise), [Standard](https://loginom.ru/platform/pricing#edition-standard) and [Team](https://loginom.ru/platform/pricing#edition-team) editions. For this purpose, it is required to pass the authentication procedure (to enter login and password) using one of the available methods described in detail in the following article: [Authentication in Megaladata](./authentication.md).

There is no authorization for the [Personal](https://loginom.ru/platform/pricing#edition-personal) and [Community](https://loginom.ru/platform/pricing#edition-personal) editions.

After authorization (or after the application start when the desktop edition is used), [«Home»](./../interface/home-page.md) page is opened. It enables to perform the following operations with packages:

* **New package** — creation of the new package. You will be asked to show the path to save the package.
* **New Draft** — creation of the new package without preliminary saving. It is possible to save the package only during the process of work with it.
* **Open Package** — opening of the earlier created package.

> **Important:** By default, packages are not auto saved. When closing the software window (browser tab), all changes will be lost. The auto save option can be enabled in the settings. More detailed information is provided on the ["Packages"](https://help.loginom.ru/userguide/interface/packages.html) page.

Upon creation of the new package/draft, a user will be forwarded to the ["Workflow"](./../interface/workflow.md) page with the Components (1) panel that contains standard components provided by the platform and area of workflow construction (2) to which the components for workflow construction are dragged (added) (refer to Figure 1):

!["Workflow" Page](./first-scenario-2.png)

In the simplest case the workflow will import the data from the external sources, or it will transform them and export (send to report).
Let's create a simple workflow that will form TOP10 list of the best clients.

The workflow will perform the following actions:

* Import of the sales information from the [Sales.txt](./../attach/Sales.txt) file.
* Selection of 10 clients with the highest purchase sums.
* Export of the received results.

To use any component in the workflow, it must be dragged from the component panel to the workflow construction area.

Select the [Text file](./../integration/import/txt-csv.md) component in the Import section and transfer it to the construction area (refer to Figure 1). In this case, the workflow node responsible for import is created. Icons of possible actions will be displayed after mouse click. Call the [Wizard](./../integration/import/txt-csv.md) (refer to Figure 2).

![Call node configuration wizard.](./first-scenario-3.png)

Follow the wizard steps having specified the Sales.txt file location in the File Name parameter.

Execute the node upon its configuration using the menu of possible actions. Now the imported data is present in the output node port. It is possible to view them selecting ![ ](./../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) [Quick View…](./../visualization/preview/quick-view.md) in the context port menu (refer to Figure 3).

![Call Quick View](./first-scenario-4.png)

The next algorithm step is calculation of purchase sum for all clients. For this purpose, trasfer the [Grouping](./../processors/transformation/grouping.md) component to the working workflow area. The sequence of data processing is set by connection of the output port of the import node with the input grouping port (refer to Figure 4).

![Establish Connection](./first-scenario-5.png)

The Client Card field is set as a group, and the Sum is set as a parameter in the [Grouping](./../processors/transformation/grouping.md) Node Wizard. Upon configuration and execution of the grouping node, data about total sums of the clients' purchases are in the output port.

Then this data is sorted in the sum descending order using the [Sorting](./../processors/transformation/sorting.md) component. Then this data is transferred to the node used for selection of the first 10 table rows.  For this purpose, the [Row Filter](./../processors/transformation/row-filter/README.md) component is used. "№ Row number <= 10" criteria is set in its wizard.

The export node is added to the resulting workflow, and/or the [Visualizer](./../visualization/README.md) of results is configured (refer to Figure 5).

![Resulting Workflow](./first-scenario-6.png)

The block of the nodes forming TOP 10 list of clients can be grouped as a separate function by placing them into the [Supernode](./../processors/control/supernode.md). For this purpose, it is required to select these nodes and using ![](./../images/icons/common/toolbar-controls/compose-generic-model_default.svg) button create a supernode (refer to Figure 6-7).

![Selection of the Block of Nodes](./first-scenario-7.png)

![Transformation of the Block of Nodes to the Supernode](./first-scenario-8.png)

Later on, the supernode executing the function set by a user can be published as a derived component and frequently used in other workflows along with standard components. Principles of creation of the solutions based on own components are analysed in the [Design of Workflows](./../workflow/README.md) article.

The package must be *saved* before its closure. It can be done in the Package menu (refer to Figure 8).

![Save Package](./first-scenario-9.png)
