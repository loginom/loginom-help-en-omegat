---
description: Замена в Loginom. Таблицы замен. Замена по регулярным выражениям. Мастер настройки
---
# ![Replace](./../../../images/icons/components/replace-columns_default.svg) Replace

Компонент заменяет данные исходного набора, используя таблицы замен. The replacement tables contain couples of the replaced and new values or regular expressions that enable to compute them. Эти таблицы можно задать вручную в мастере настройки (внутренние) или подать на вход узла (внешние).

Sequence of the replacement algorithm actions:

1. Вначале производится поиск и замена по [точному совпадению](./exact-match.md) со значениями, указанными в таблице замен.
2. The search among the values not found by exact match is performed by [regular expressions](./regexp-match.md). Such expressions can be set in the internal replacement tables. New values are also computed using regular expressions.
3. Replacement rules are observed for the values not found at the previous steps.

### Input

* ![Входной источник данных](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Входной источник данных** (таблица данных) — набор данных, подлежащий изменению.
* ![Набор данных](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Присоединяемая таблица [N]** (таблица данных) — набор данных, содержащий таблицу замен.
* ![Add port](./../../../images/icons/app/node/ports/add/add_inactive_default.svg) **Add another port.** As several replacement tables are possible, the ports required for them can be added by a user.

### Output

* ![Output data set](./../../../images/icons/app/node/ports/inputs/table_inactive.svg) **Output data set** (data table). When configuring port columns mapping, it is possible to select columns replacement or addition options.

## Wizard

The wizard window consists of three areas:

1. [Способы замен](#sposoby-zamen).
2. [Таблица замен](#tablitsa-zamen).
3. [Additional parameters](#dopolnitelnye-parametry).

### Replacement Methods

Replacement method is set for each field of the source data set:

* **Не заменять** — выходной набор данных замены производиться не будут.
* **Ввод вручную** — используется внутренняя таблица замен.
* **Replacement table** (Replacement table N): the external replacement table is used. Данный способ присутствует в настройках, если на входной порт узла подаются данные внешней таблицы замен.

**Replacement table N**: the name of the table accepting port.

### Replacement Table

It displays the external or internal replacement table for the selected field of the source data set.

#### Configuration of the Internal Table

To enter the new row into the replacement table, it is required to use ![Add row](./../../../images/icons/common/toolbar-controls/plus_default.svg) button. The table can contain rows for search and replacement according to the following requirements:

* [Точному совпадению](./exact-match.md).
* [Regular expression](./regexp-match.md) (it is applied only to the data of the string type).

> **Important:** In the case of replacement of the numeric data, it is required to consider the intervals into which this or that replaced value is included.

%spoiler%Example%spoiler%

Let's consider the following table:

| Value |
|:--------:|
| 5 |
| 10 |
| 15 |

There are the following replacement types: 1) `5 => -5`; 2) `15 => -15`.

And precision is equal to `5`.

In this case, the output table will be as follows:

| Value |
|:--------:|
| -5 |
| -15 |
| -15 |

So, there are two half-intervals: [5, 10) and [10, 15).
Thus, the bound values are included into the interval in which they are the initial ones.

%/spoiler%

When entering the replacement table manually, the following actions are available by means of the area toolbar:

* ![Импорт](./../../../images/icons/common/toolbar-controls/import_default.svg) **Импорт** — импорт таблицы замен из текстового файла определенной [структуры](./import-tz.md).
* ![Экспорт](./../../../images/icons/common/toolbar-controls/export_default.svg) **Экспорт** — экспорт таблицы замен в текстовый файл.
* ![Сортировка](./../../../images/icons/common/toolbar-controls/sort-asc_default.svg) **Сортировка** — сортировка таблицы по полю исходного значения.
* **Изменить тип замены** — задает тип данных столбца с новыми значениями.
* ![Редактировать текущую замену](./../../../images/icons/common/toolbar-controls/edit_default.svg) **Редактировать текущую замену** — отображает область редактирования текущей строки таблицы подстановок.
* ![Get values](./../../../images/icons/common/toolbar-controls/load-values_default.svg) **Get values** enables to load the drop-down list called by ![ ](./../../../images/icons/common/toolbar-controls/down_default.svg) button to the *Value* field in the case of the manual input of the replacement table.

> **Note:** Replacement by exact match prevails over replacement by regular expression.

#### Configuration of the External Table

It is required to select **Usage type** for the table fields from the following options:

* ![Не используется](./../../../images/icons/common/usage-types/unspecified_default.svg) **Не используемое** — поле таблицы замен не будет использоваться.
* ![Значение](./../../../images/icons/common/usage-types/source_default.svg) **Значение** — поле содержит заменяемые значения.
* ![Замена](./../../../images/icons/common/usage-types/replace-by_default.svg) **Замена** — поле содержит новые значения.
* ![Info](./../../../images/icons/common/usage-types/unspecified_default.svg) **Info**: the field contains an additional option of the new value. Additional replacement options are displayed in the resulting data set in the form of a separate column.

> **Note:** If one value can be replaced according to conditions of several replacement table rows, the first one must prevail. Thus, **table sorting can have an impact on the processing result**. This rule is not applied when using the [allowable interval](./exact-match.md#primenenie-dopustimogo-intervala) (refer to *Precision* parameter).

### Additional Parameters

* **Replace other** contains replacement options of the values that have not been found using the replacement table.
   * **Do not replace**: no replacement is performed.
   * **With empty**: values will be replaced with Null.
   * **With value**: values will be replaced with the specified value.
   * **With regular expression**: the new value will be calculated using the [regular expression](./regexp-match.md) syntax.
* **Precision**: enables to set the [allowable interval](./exact-match.md#primenenie-dopustimogo-intervala) based on the values specified in the replacement tables for the integer and real fields. In this case, the source value will be replaced.
* **Case-sensitive strings**: the checkbox installs the case-sensitive mode of values search in the replacement tables. This mode is not used by default.

### Выходной набор данных

В результирующий набор данных для каждого поля, по которому производилась замена, будет добавлен столбец логического типа с именем "`Имя поля`_Replaced" и меткой "`Метка поля` Заменен".

При настройках по умолчанию замена будет произведена в исходном столбце, а к метке поля будет добавлено слово "Замена". Имя столбца не изменится.

В результирующем наборе данных можно оставить исходный столбец без изменений, а замененные значения выводить в отдельном столбце. Для этого в окне *Настройка соответствия между столбцами* мастера настройки узла *Замена* (шаг 2) на панели инструментов списка "Входные" необходимо указать ![](./../../../images/icons/common/toolbar-controls/tune_default.svg) *Тип создания производных столбцов* ![](./../../../images/icons/common/toolbar-controls/plus_default.svg) **Добавление** (см. также [Интерфейс "Связи"](./../../../workflow/ports/connections-interface.md)).

В этом случае в результирующий набор будет включен дополнительный столбец, к имени которого будет добавлен постфикс  "_Replace", а к метке слово "Замена".
