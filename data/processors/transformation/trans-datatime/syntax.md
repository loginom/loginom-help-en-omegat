---
description: Трансформация даты/времени в Loginom. Синтаксис строки форматирования даты/времени.
---
# Syntax of the Date/Time Formatting Strings

When setting the user format, it is possible to use a combination of user-defined text and pre-defined markers.

List and Usage Type of Markers:

* **Day.**
   * **%d** — day of the month with leading zero.
   * **%j** — day of the month.
   * **%z** — day number in the year.
   * **%q** — day number in the quarter.
   * **%N** — day number in the week.
   * **%D** — short name of the week day.
   * **%l** — full name of the week day.
* **Week.**
   * **%W** — week number in the year.
   * **%e** — week number in the quarter.
   * **%w** — week number in the month.
* **Month.**
   * **%M** — short name of the month.
   * **%F** — full name of the month.
   * **%m** — month number with leading zero.
   * **%n** — month number.
* **Quarter.**
   * **%Q** — quarter number.
* **Year.**
   * **%Y** — year, 4 digits.
   * **%y** — year, 2 digits.
* **Hours.**
   * **%g** — hours in 12-hour format.
   * **%G** — hours in 24-hour format.
   * **%h** — hours in 12-hour format with leading zero.
   * **%H** — hours in 24-hour format.
* **Minutes.**
   * **%i** — minutes with leading zero.
* **Seconds.**
   * **%s** — seconds with leading zero.
* **Milliseconds.**
   * **%u** — milliseconds with leading zeros.
* **Date.**
   * **%L** — date in the long format.
   * **%S** — date in the short format.
* **Time.**
   * **%T** — time in the long format.
   * **%t** — time in the short format.

%spoiler%Example:%spoiler%

Perform transformation: `11.08.2017 13:50` → `any Aug text, another text 2017, 13`.

Formatting string: `"any text %M, another text %Y, %G"`, result `"any Aug text, another text 2017, 13"`.

%/spoiler%