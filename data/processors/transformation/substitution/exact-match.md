---
description: Замена в Loginom. Замена по точному совпадению. Допустимый интервал.
---
# Replacement by Exact Match

To perform Replacement by Exact Match, it is required to set the value of the *Manual input* replacement method for the required field in the Wizard.

![Wizard. Manual input](./substitution-exact-match-1.png)

**Exact match**: the va;ue to be replaced.

**Regular expression**: the value is set using the [regular expression](./regexp-match.md). It is available only for the [String](./../../../data/datatype.md) data type.

**Replace**: the value to be replaced with.

%spoiler%**Example**%spoiler%

| Shop code | Shop name | Number of buyers |
|:-:|:-:|:-:|
| 1253 | Fresh Direct | 170 |
| 7569 | Beauty&Seoul | 295 |
| 1709 | Petal Pushers | 427 |
| 1989 | Bulletproof | 255 |
| 2209 | Autobarn | 389 |

Let's apply the following settings to the source data set:

![Replacement settings for example.](substitution-exact-match-2.png)

In [Replace other](./other-match.md) parameter it is required to select *Do not replace.*

The following set is obtained:

| Shop code | Shop name Replace | Shop name Replaced | Number of buyers |
|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | true | 170 |
| 007569 | Beauty&Seoul | false | 295 |
| 000709 | Moscow | true | 427 |
| 001989 | Krasnodar | true | 255 |
| 002209 | Autobarn | false | 389 |

%/spoiler%


## Use of the Allowable Interval

It is possible to specify the allowable search interval when searching among [Real](./../../../data/datatype.md) and [Integer](./../../../data/datatype.md) data. *Precision* parameter is required for its configuration. Intervals are calculated as follows: `from <Replace field value>-<Precision> to <Replace field value>+<Precision>`, including the interval bounds. If several matches are found taking into account the interval, the closest match to the source one will be used.

%spoiler%**Example**%spoiler%

Let's take the data set from the previous example.

| Shop code | Shop name | Number of buyers |
|:-:|:-:|:-:|
| 1253 | Fresh Direct | 170 |
| 7569 | Beauty&Seoul | 295 |
| 1709 | Petal Pushers | 427 |
| 1989 | Bulletproof | 255 |
| 2209 | Autobarn | 389 |

And customize the following settings.

![Replacement settings for example.](substitution-exact-match-3.png)

In the **Precision** parameter it is required to set the value equal to *85*.
In **Replace other** parameter it is required to set *Do not replace* value.

The following set is obtained:

| Shop code | Shop name | Number of buyers Replacement | Number of buyers Replaced | Number of buyers deviation |
|:-:|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | Good | true | 85,00 |
| 007569 | Beauty&Seoul | Good | true | -40,00 |
| 000709 | Moscow | 427 | false | |
| 001989 | Krasnodar | Good | true | 0,00 |
| 002209 | Autobarn | 389 | false | |

%/spoiler%

The values included neither into the *Replacement table*, nor into *Allowable intervals*, are processed according to the configured parameter - [Replace other](./other-match.md).