---
description: Импорт данных в Loginom из базы данных 1С:Предприятие 8.x. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/crm-1cv8-import_default.svg) Импорт из 1C:Предприятие 8.x

Компонент предназначен для импорта из базы данных 1С.

> **Важно:** Для работы узла требуется предварительно создать [подключение к платформе 1C:Предприятие 8.x](./../connections/list/1c.md) и связать его с входным портом *Подключение*. Подключение происходит аналогично [подключению с БД](./../../quick-start/database.md).

## Порты

### Входные порты

* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Подключение — принимает параметры подключения к базе данных;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Управляющие переменные](./../../workflow/variables/control-variables.md) (необязательный порт) — переменными можно задать значения параметров мастера настройки.

### Выходные порты

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Импортированная таблица.

## Мастер настройки

Мастер настройки содержит следующие параметры:

* **Подключение** – отображает строку подключения к источнику данных. Не доступна для редактирования;
* **Текст запроса** – поле ввода запроса к базе, определяющего структуру и содержание импортируемой таблицы. Поддерживается как кириллический синтаксис 1С, так и синтаксис SQL.

Кнопка [Предпросмотр…](./../../visualization/preview/preview.md) позволяет оценить корректность запроса, отображая до 100 первых строк результирующей таблицы.

## Применение параметров в запросах

Возможно использование параметров в запросах в синтаксисе 1С.

Пример 1.

```
ВЫБРАТЬ
КурсыВалют.Валюта.Код,
КурсыВалют.Валюта.Наименование,
КурсыВалют.Период КАК Период,
КурсыВалют.Курс,
КурсыВалют.Кратность
ИЗ
РегистрСведений.КурсыВалют КАК КурсыВалют
ГДЕ
КурсыВалют.Период МЕЖДУ &start_date И &end_date
УПОРЯДОЧИТЬ ПО
Период УБЫВ
```

В Примере 1 `&start_date` и `&end_date` – конструкции подстановки значений входных переменных `start_date` и `end_date` узла импорта. Если данные переменные не будут определены во входном порту узла импорта, то возникнет исключение. При использовании данной конструкции в запросе учитывается тип данных передаваемой переменной, он должен соответствовать типу данных, ожидаемых запросом 1С.

Особенностью применения данной конструкции подстановки является то, что в запрос через переменные могут передаваться значения только простых типов данных: логический, строковый, числовой, дата/время. Возможность получения и использования в запросах внутренних идентификаторов объектов добавлена в версии платформы 1С 8.3.22. Для версий платформы ниже 1С 8.3.22 передача в запрос внутренних объектных переменных 1С (например, объектов или ссылок справочников и документов) невозможна. Это необходимо учитывать при построении запросов.

Пример 2.

```sql
SELECT
Период, Номенклатура.Наименование, Количество
FROM
InformationRegister.КалендарныеПотребностиВНоменклатуре.SliceLast(&Date, Количество > &Count) AS Потребности
INNER JOIN
Catalog.Номенклатура
ON
Catalog.Номенклатура.Ссылка = Потребности.Номенклатура
WHERE %CONDITION%
```

В Примере 2 `%CONDITION%` – конструкция подстановки значения входной переменной `CONDITION` узла импорта. Конструкция `%CONDITION%` в тексте запроса будет заменена на строковое значение переменной `CONDITION`. Если переменная будет содержать значение: `Номенклатура.Артикул = "4561"`, то результирующий запрос будет иметь вид:

```sql
SELECT
Период, Номенклатура.Наименование, Количество
FROM
InformationRegister.КалендарныеПотребностиВНоменклатуре.SliceLast(&Date, Количество > &Count) AS Потребности
INNER JOIN
Catalog.Номенклатура
ON
Catalog.Номенклатура.Ссылка = Потребности.Номенклатура
WHERE Номенклатура.Артикул = "4561"
```

Такая конструкция подстановки дает возможность динамически в ходе выполнения сценария формировать текст запроса.