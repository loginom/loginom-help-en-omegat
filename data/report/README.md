---
description: Создание отчётов в Loginom. Справка по созданию и редактированию отчётности. Добавление различных табличных, статистических и графических визуализаторов при построении отчётов. Обновление ранее созданных отчётов.
---
# Reports

The challenge of knowledge distribution is to give an opportunity to the employees who are not aware of analysis methods and procedure of achievement of a particular result, to receive a response to the analytical requests based on the models provided by the expert. The workflows panel is designated for the expert to build different models in it. The reports bar is designated for the end user (Navigation - Reports).

![Reports Bar](./navigation.png)

There are two methods to create reports:

* to click on the required visualizer with the right mouse button. Then it is required to hover a cursor over "Add visualizer to reports" menu option where it is possible to select the following options:
   * already existing group;
      * it is possible to select subgroup or create a new subgroup in the additional drop-down context menu;
   * without group;
   * to create a new group.

![Define visualizer to report group](./add-to-report.png)

* to select visualizer;
   * to press *Add to reports* button, and the report will be added to "Without group" list;
   * to open the drop-down list near the button where it will be asked to place it to the pre-created group or create the new one;
      * it is possible to select subgroup or create a new subgroup in the additional drop-down context menu.

![Define visualizer to report group](./add-main-panel.png)

It is possible to handle groups and subgroups of reports as follows:
* to make groups of reports and reports as such placing them to a separate group;
* to transfer groups of reports or reports to any nesting level of subgroups;
* to create subgroups of reports of any nesting level.


It is preferable to group the reports according to their semantic content. For example, the "Analytical reports" group can contain different data cubes, whereas the "Forecast" group can contain the forecast charts of some values. Such grouping is very convenient because the end user opens the reports bar, selects the required group and activates the required report. Upon such choice, the program automatically executes the workflow and provides the result according to the configured display.

To control the created reports, it is required to go to *Reports* group of the package. The control panel is designated for creation of new groups of reports, renaming and deletion of existing groups of reports, editing, renaming and deletion of reports. When editing, the source visualizer used to make the report is also changed.

The reports in the open state are highlighted in green. They can be updated by clicking on *Reread data* button. In this case, all nodes located before the node with the report will be deactivated and activated again. Note: In this case, all other reports located on the deactivated nodes will be also deactivated.

![Reports Control](./control-green-reports.png)

Practically it often happens that the user needs to receive the report on some subset of all available data, for example, data on one supplier or client, several groups of goods or regions. Such subset is called a slice in the terms of the multidimensional data model. The analyst can create reports in the predetermined and most highly-demanded slices but he cannot forecast all kinds of reports that can be required. To complete this task, a user can configure the required kind of reports by himself. A user cannot save this setting.

To search for the report created on the basis of the current visualizer, it is required to click on it with the right mouse button and select "Show in reports" menu option. In this case, these actions will enable to move to the reports control panel.

![Search for report from the current visualizer](./see-in-reports.png)