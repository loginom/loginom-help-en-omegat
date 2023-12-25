---
description: Замена в Loginom. Замена данных не попавших в Таблицу замен. Варианты замен.
---
# Substitution of the Values not Included into the Replacement Table

*Replace other* parameter is required for processing of the values that are not included into the *Replacement table* and that are out of the [allowable interval](./exact-match.md#primenenie-dopustimogo-intervala). The parameter has 4 configuration options:

* Do not replace.
* With empty.
* With value.
* With regular expression.

And the row for input of the new value of the records not included into the *Replacement table*.


Let's consider configuration options using the example analysed in [Replacement by Exact Match](./exact-match.md#zamena-po-tochnomu-sovpadeniyu) article.

Let's use the following data set:

| Shop code | Shop name | Number of buyers |
|:-:|:-:|:-:|
| 1253 | Fresh Direct | 170 |
| 7569 | Beauty&Seoul | 295 |
| 1709 | Petal Pushers | 427 |
| 1989 | Bulletproof | 255 |
| 2209 | Autobarn | 389 |

And customize the following settings for the *Replace* node:

![Replace settings for example.](substitution-exact-match-2.png)

## Do not replace

When selecting *Do not replace*, the values not included into the Replacemnt Table are not subject to additional processing:

| Shop code | Shop name Replace | Shop name Replaced | Number of buyers |
|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | true | 170 |
| 007569 | Beauty&Seoul | false | 295 |
| 000709 | Moscow | true | 427 |
| 001989 | Krasnodar | true | 255 |
| 002209 | Autobarn | false | 389 |

## With Empty

When selecting *With empty* option, all values not included into the *Replacement table* will be replaced with the null value `<null>`:

| Shop code | Shop name Replace | Shop name Replaced | Number of buyers |
|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | true | 170 |
| 007569 | `<null>` | false | 295 |
| 000709 | Moscow | true | 427 |
| 001989 | Krasnodar | true | 255 |
| 002209 | `<null>` | false | 389 |

## With Value

*With value* option replaces all values outside the *Replacement table* with the value entered into the row.
Let's specify `*City*` value in the row:

| Shop code | Shop name Replace | Shop name Replaced | Number of buyers |
|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | true | 170 |
| 007569 | City | true | 295 |
| 000709 | Moscow | true | 427 |
| 001989 | Krasnodar | true | 255 |
| 002209 | City | true | 389 |

## With Regular Expression

If *With regular expression* option of *Replace other* parameter is selected, reserved `$1` character is used for the values not detected using the replacement table. `$1` characters will be replaced with the source value in the row that enables to set the new value.

Let's specify `*$1 — Not defined*` value in the row:

| Shop code | Shop name Replace | Shop name Replaced | Number of buyers |
|:-:|:-:|:-:|:-:|
| 001253 | Ryazan | true | 170 |
| 007569 | Beauty&Seoul — Not defined | true | 295 |
| 000709 | Moscow | true | 427 |
| 001989 | Krasnodar | true | 255 |
| 002209 | Autobarn — Not defined | true | 389 |