# ![Replace (Variables)](../../images/icons/components/replace-variables_default.svg) Replace (Variables)

The handler replaces the input variables using replacement tables. The replacement tables contain couples of the replaced and new values or regular expressions that enable to compute them.

Sequence of the replacement algorithm actions:

1. First of all, replacement and search are performed by [exact match](../transformation/substitution/exact-match.md#zamena-po-tochnomu-sovpadeniyu) with the values specified in the replacement table.
1. The search among the values not found by exact match is performed by [regular expressions](../transformation/substitution/regexp-match.md). Such expressions will be set in the replacement tables. New values are also computed using regular expressions.
1. Replacement rules are observed for the values not found at the previous steps.

## Ports

### Input

* ![Input variables](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables** denote the variables to be changed.

### Output

* ![Output variables](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables** denote the variables after processing.

## Wizard

The wizard window consists of three areas.

### List of Replacements

It displays the input variables and replacement method for each variable:

* **не заменять** — замены производиться не будут;
* **ввод вручную** — использовать таблицу замен.

### Таблица замен

Область отображает таблицу замен для выбранной переменной.

Для ввода новой строки в таблице замены используется кнопка ![добавить](../../images/icons/toolbar-controls/plus_default.svg). Таблица может содержать строки для поиска и замены по:

* **точному совпадению**;
* **регулярному выражению**.

При вводе таблицы замены доступен ряд действий через панель инструментов области:

* ![Импорт](../../images/icons/toolbar-controls/import_default.svg) **Импорт** – считывает таблицу замен из указанного [текстового файла заданного формата](../transformation/substitution/import-tz.md). Считанные данные заменят те, которые уже были в таблице. Изменения, производимые в дальнейшем с таблицей замен или файлом, не отражаются друг на друге.
* ![Экспорт](../../images/icons/toolbar-controls/export_default.svg) **Экспорт** — сохраняет таблицу замен в указанный текстовый файл.
* ![Сортировать](../../images/icons/toolbar-controls/sort-asc_default.svg) **Сортировать** — сортировка таблицы по полю исходного значения.
* **Изменить тип замены** — позволяет изменить [тип данных](../../data/datatype.md) переменной после произведенной замены. Например, вещественную переменную можно заменить целочисленной или строковой. При этом, если замена не будет произведена, то тип не поменяется (за исключением / кроме случая замены вещественного числа на целочисленное).
* ![Редактировать текущую замену](../../images/icons/toolbar-controls/edit_default.svg) **Редактировать** — отображает область редактирования текущей строки таблицы подстановок.
* ![Получить значения](../../images/icons/toolbar-controls/load-values_default.svg) **Получить значения** — не доступно для переменных.

### Дополнительные параметры

* **Заменять остальные** — содержит варианты замены значений, не найденных при помощи таблицы замен:
   * **не заменять** — замены производиться не будут.
   * **на пропущенное** — значения будут заменены на "NULL".
   * **на значение** — значения будут заменены на указанное.
   * **на регулярное выражение** — новое значение будет вычислено с использованием [синтаксиса регулярного выражения](../transformation/substitution/regexp-match.md).

* **Точность** — для полей целого и вещественного типов задает допустимый интервал от указанных в таблицах замен значений, при котором исходное значение будет заменено. [Применение допустимого интервала](../transformation/substitution/exact-match.md#primenenie-dopustimogo-intervala).
* **Регистрозависимые строки** — флаг устанавливает регистрозависимый режим поиска значений в таблицах замен. По умолчанию данный режим отключен.
