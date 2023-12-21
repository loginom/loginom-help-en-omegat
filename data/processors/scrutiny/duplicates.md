---
description: Компонент Дубликаты и противоречия в Loginom. Уменьшение избыточности данных, повышение информативности данных, повышение качества моделей.
---
# ![](./../../images/icons/components/duplicates_default.svg) Duplicates and Contradictions

## Description

The component enables to detect duplicate and contradictory records.

**Duplicates**: table records in which all input and output fields are the same. Duplicates cause redundancy, increase sample size but information capacity is not increased.

**Contradictions**: table records in which all input fields are the same but they differ at least by one output field. Contradictions cause distortion of analysis results and decrease model quality because they violate general data laws detection of which is the scrutiny purpose.

The algorithm searches for the data set records for which the same input fields match the same (dublicates) or different (contradictions) output fields.

%spoiler%Example:%spoiler%

Let's analyse the following data set with respect to duplicates and contradictions. For this purpose, let's set the following usage type: ![](./../../images/icons/common/usage-types/active_default.svg) "Input" for "Field 1" and "Field 2", usage type ![](./../../images/icons/common/usage-types/predicted_default.svg) "Output" for "Field 3" and "Field 4" in the input port settings.

Source table:

| Field 1 | Field 2 | Field 3 | Field 4 |
|:-----------|-------:|-------:|-------:|
| 01.01.2019 | 2 | 1000 | 1500 |
| 21.05.2019 | 3 | 1000 | 1500 |
| 21.05.2019 | 3 | 700 | 1500 |
| 21.05.2019 | 3 | 700 | 1500 |
| 01.09.2019 | 4 | 1200 | 1700 |
| 01.09.2019 | 4 | 1200 | 1700 |

Output table:

| Duplicate | Duplicate group | Contradiction | Contradiction group | Field 1 | Field 2 | Field 3 | Field 4 |
|:---|---:|:---|---:|:---|:---|---:|---:|
| false |   | false |   | 01.01.2019 | 2 | 1 000 | 1 500 |
| false |   | true | 1 | 21.05.2019 | 3 | 1 000 | 1 500 |
| true | 1 | true | 1 | 21.05.2019 | 3 | 700 | 1 500 |
| true | 1 | true | 1 | 21.05.2019 | 3 | 700 | 1 500 |
| true | 2 | false |   | 01.09.2019 | 4 | 1 200 | 1 700 |
| true | 2 | false |   | 01.09.2019 | 4 | 1 200 | 1 700 |

In the result, two groups of duplicates and one group of contradictions are found.

%/spoiler%

## Ports

### Input

* ![](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table). It is required to set ![](./../../images/icons/common/usage-types/active_default.svg) "Input" and ![](./../../images/icons/common/usage-types/predicted_default.svg) "Output" usage type in the settings of this port for the fields that will be used for duplicates and contradictions scrutiny.

> **Note:** at least one input column must be set.

### Output

* ![](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Output data set. The table has the following structure:
   * Required fields:
      * **Duplicate**: the boolean value that defines whether the source string is a duplicate or not.
      * **Duplicate group**: the duplicates with matching input and output columns are included into one group.
      * **Contradiction**: the boolean value that defines whether the source string is a contradiction or not.
      * **Contradiction group**: all contradictions with matching input columns are included into one group of contradictions.

> **Note:** group numbering starts from *1*.
