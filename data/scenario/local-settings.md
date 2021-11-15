# Local Settings

These settings contain information on the language standards, number, time, date formats. For example, one of the sources of these settings for Windows users for the Loginom server are "Language and regional standards" settings.

> **Note:** In Windows 7 these settings can be set as follows: Control panel -> Hours, language and region -> Language and regional standards.

In such handlers as [Sorting](../processors/transformation/sorting.md), [Export to the text file](../integration/export/txt-csv.md),
etc. These settings can be used as the default values, and their change can cause change of the data processing results. It is required to take this fact into account when changing the Workflows execution environment (transfer of the Workflows to other servers, switch of the Window user, etc.)
