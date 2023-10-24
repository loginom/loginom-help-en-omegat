---
description: Замена в Loginom. Замена данных не попавших в Таблицу замен. Варианты замен.
---
# Substitution of the Values not Included into the Replacement Table

*Replace other* parameter is required for processing of the values that are not included into the *Replacement table* and that are out of the [allowable interval](./exact-match.md#primenenie-dopustimogo-intervala). Параметр имеет четыре варианта настройки:

* Do not replace.
* With empty.
* With value.
* With regular expression.

And the row for input of the new value of the records not included into the *Replacement table*.


Рассмотрим варианты настройки на примере, который мы рассматривали в статье [Замена по точному совпадению](./exact-match.md#zamena-po-tochnomu-sovpadeniyu).

Используем набор данных:

| Код магазина | Название магазина | Количество покупателей |
|:-:|:-:|:-:|
| 1253 | Fresh Direct | 170 |
| 7569 | Beauty&Seoul | 295 |
| 1709 | Petal Pushers | 427 |
| 1989 | Bulletproof | 255 |
| 2209 | Autobarn | 389 |

и зададим узлу *Замена* следующие настройки:

![Настройки Замена для примера.](substitution-exact-match-2.png)

## Не заменять

В случае выбора *Не заменять*, к значениям не попавшим в Таблицу замен не применяется дополнительная обработка:

| Код магазина | Название магазина Замена | Название магазина Заменен | Количество покупателей |
|:-:|:-:|:-:|:-:|
| 001253 | Рязань | true | 170 |
| 007569 | Beauty&Seoul | false | 295 |
| 000709 | Москва | true | 427 |
| 001989 | Краснодар | true | 255 |
| 002209 | Autobarn | false | 389 |

## With Empty

При выборе пункта *На пропущенное*, все значения не попавшие в *Таблицу замен* будут заменены на пустое значение `<null>`:

| Код магазина | Название магазина Замена | Название магазина Заменен | Количество покупателей |
|:-:|:-:|:-:|:-:|
| 001253 | Рязань | true | 170 |
| 007569 | `<null>` | false | 295 |
| 000709 | Москва | true | 427 |
| 001989 | Краснодар | true | 255 |
| 002209 | `<null>` | false | 389 |

## With Value

Пункт *На значение* заменяет все значения вне *Таблицы замен* на введенное в строке.
Укажем в строке значение `*Город*`:

| Код магазина | Название магазина Замена | Название магазина Заменен | Количество покупателей |
|:-:|:-:|:-:|:-:|
| 001253 | Рязань | true | 170 |
| 007569 | Город | true | 295 |
| 000709 | Москва | true | 427 |
| 001989 | Краснодар | true | 255 |
| 002209 | Город | true | 389 |

## With Regular Expression

If *With regular expression* option of *Replace other* parameter is selected, reserved `$1` character is used for the values not detected using the replacement table. `$1` characters will be replaced with the source value in the row that enables to set the new value.

Укажем в строке значение `*$1 — Не опеределено*`:

| Код магазина | Название магазина Замена | Название магазина Заменен | Количество покупателей |
|:-:|:-:|:-:|:-:|
| 001253 | Рязань | true | 170 |
| 007569 | Beauty&Seoul — Не определено | true | 295 |
| 000709 | Москва | true | 427 |
| 001989 | Краснодар | true | 255 |
| 002209 | Autobarn — Не определено | true | 389 |