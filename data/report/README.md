# Reports

The challenge of knowledge distribution is to give an opportunity to the employees who are not aware of analysis methods and procedure of achievement of a particular result, to receive a response to the analytical requests based on the models provided by the expert. The workflows panel is designated for the expert to build different models in it. The reports panel is designated for the end user.

To create a report, it is required to add the visualizer used to make the report. Then it is required to select this visualizer and press *Add to reports* button. In this case, the report will be added to "Without group" list. To add the report to the definite group, it is required to select the visualizer and open the drop-down list near *Add to reports* menu. It will be asked to choose to place the report to the pre-created group or create the new group.

It is also possible to add the report by clicking on the required visualizer with the right mouse button. Then it is required to select "Add visualizer to reports" menu option. The report can be added without any group. It is required to select already existing group or create the new one.

It is preferable to group the reports according to their semantic content. For example, the "Analytical reports" group can contain different data cubes, whereas the "Forecast" group can contain the forecast charts of some values. Then the end user opens the reports panel, selects the required group and activates the required report in this group. Upon such choice, the program will automatically execute the workflow compliant with this report and provide the result according to the configured report display.

Practically it often happens that the user needs to receive the report on some subset of all available data, for example, data on one supplier or client, several groups of goods or regions. Such subset is called a slice in the terms of the multidimensional data model. The analyst can create reports in the predetermined and most highly-demanded slices but he cannot forecast all kinds of reports that can be necessary to the user. To complete this task, a user can configure the required kind of reports by himself. A user cannot save this setting.

To search for the report created on the basis of the current visualizer, it is required to click on the required visualizer with the right mouse button and select "Show in reports" menu option. In this case, these actions will enable to move to the reports control panel.

To control the created reports, it is required to go to *Reports* group of the package. The reports control panel is designated for creation of new groups of reports, renaming and deletion of existing groups of reports, editing, renaming and deletion of reports. When editing reports, the source visualizer used to make the report is also changed.

The reports in the open state are highlighted in green. Such reports can be updated by pressing *Reread data* button. In this case, all nodes located before the node with the report will be deactivated and activated again. Note: In this case, all other reports located on the deactivated nodes will be also deactivated.