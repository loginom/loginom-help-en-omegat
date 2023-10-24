---
description: Замена в Loginom. Замена данных по регулярному выражению. Использование Perl regular expressions, regex.
---
# Replacement by Regular Expression

The regular expression is used to search for the set sequence of characters in each column value of the source data set. If the sequence is detected, the value is replaced with the new one. Replacement by regular expression is applied only to the data of the string type.

> **Note:** The regular expression is a template used for search for sequences of characters. It is set using the language of rules based on a subset of [regular expressions ](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%B3%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D0%B5_%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F) Perl (Perl regular expressions, regex).

Значения, не попавшие в *Таблицу замен*, обрабатываются согласно настройке параметра [Заменять остальные](./other-match.md).

%spoiler%**Пример.**%spoiler%

| # | Артикул |
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

Применим к данному набору узел *Замена*, со следующими настройками:

![Настройки Замена по регулярному выражению](./substitution-regexp-match-1.png)

Регулярное выражение `^0102` выделяет все записи, которые начинаются на `0102`.

В параметре **Заменять остальные** установим значение *Не заменять*.

Получаем следующий набор данных:

| # | Артикул Замена | Артикул Заменен |
|:-:|:-:|:-:|
| 1 | 0100597 | false |
| 2 | 0100598 | false |
| 3 | Корректный | true |
| 4 | Корректный | true |
| 5 | Корректный | true |
| 6 | Корректный | true |
| 7 | Корректный | true |
| 8 | Корректный | true |
| 9 | Корректный | true |
| 10 | Корректный | true |

Поменяем теперь настройки. И в параметре **Заменять остальные** выбираем *На значение*. И в качестве значения укажем *Некорректный*.

![Настройки параметра **Заменять остальные**](./substitution-regexp-match-2.png)

В результате получим следующий набор данных:

| # | Артикул Замена | Артикул Заменен |
|:-:|:-:|:-:|
| 1 | Некорректный | true |
| 2 | Некорректный | true |
| 3 | Корректный | true |
| 4 | Корректный | true |
| 5 | Корректный | true |
| 6 | Корректный | true |
| 7 | Корректный | true |
| 8 | Корректный | true |
| 9 | Корректный | true |
| 10 | Корректный | true |

%/spoiler%