---
description: Замена в Loginom. Замена данных по регулярному выражению. Использование Perl regular expressions, regex.
---
# Replacement by Regular Expression

The regular expression is used to search for the set sequence of characters in each column value of the source data set. If the sequence is detected, the value is replaced with the new one. Replacement by regular expression is applied only to the data of the string type.

> **Note:** The regular expression is a template used for search for sequences of characters. It is set using the language of rules based on a subset of [regular expressions ](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%B3%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D0%B5_%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F) Perl (Perl regular expressions, regex).

The values not included into the *Replacement table* are processed according to the configured parameter - [Replace other](./other-match.md).

%spoiler%**Example.**%spoiler%

| # | Product item |
|:-:|:-:|
| 1 | 0100597 |
| 2 | 0100598 |
| 3 | 0102341 |
| 4 | 0102342 |
| 5 | 0102392 |
| 6 | 0102478 |
| 7 | 0102491 |
| 8 | 0102492 |
| 9 | 0102493 |
| 10 | 0102548 |

Let's apply the *Replace* node with the following settings to this data set:

![Replace by regular expression settings](./substitution-regexp-match-1.png)

`^0102` regular expression selects all records that start from `0102`.

In **Replace other** parameter let's set *Do not replace* value.

The following data set is obtained:

| # | Product item Replace | Product item Replaced |
|:-:|:-:|:-:|
| 1 | 0100597 | false |
| 2 | 0100598 | false |
| 3 | Correct | true |
| 4 | Correct | true |
| 5 | Correct | true |
| 6 | Correct | true |
| 7 | Correct | true |
| 8 | Correct | true |
| 9 | Correct | true |
| 10 | Correct | true |

Now let's change the settings. In **Replace other** parameter let's select *With value*. Let's specify *Incorrect* as the value.

![Parameter settings**Replace other**](./substitution-regexp-match-2.png)

The following data set is obtained in the result:

| # | Product item Replace | Product item Replaced |
|:-:|:-:|:-:|
| 1 | Incorrect | true |
| 2 | Incorrect | true |
| 3 | Correct | true |
| 4 | Correct | true |
| 5 | Correct | true |
| 6 | Correct | true |
| 7 | Correct | true |
| 8 | Correct | true |
| 9 | Correct | true |
| 10 | Correct | true |

%/spoiler%