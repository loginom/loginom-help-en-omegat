---
description: Экспорт данных из Loginom в XML-файл. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/file-xml-export_default.svg) Экспорт в XML-файл

Компонент предназначен для экспорта таблиц данных в файлы формата XML.

> **Важно:** Для работы узла требуется предварительно создать [подключение к XSD-схеме](./../connections/list/schemes.md) и связать его с входным портом *Подключение*. Подключение происходит аналогично [подключению с БД](./../../quick-start/database.md).

## Порты

### Вход

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Источник данных — таблица данных, подлежащая экспорту;
* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Управляющие переменные](./../../workflow/variables/control-variables.md) (необязательный порт) — переменными можно задать значения параметров мастера настройки;
* ![ ](./../../images/icons/app/node/ports/inputs/link_inactive.svg) Подключение к источнику XSD-схемы (обязательный порт) — подключение настроенного ранее *Подключения к набору XSD-схем*.

## Мастер настройки

### Шаг 1. Настройка файла экспорта

* **Имя файла** — задает путь к файлу-приемнику при локальном подключении, либо имя файла при использовании подключения к папке. Кнопка ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) вызывает диалог выбора файла.
* **Настройка форматирования** — область включает следующие флаги.
  * **Записывать Byte Order Mark** — записывать [маркер последовательности байтов](https://ru.wikipedia.org/wiki/Маркер_последовательности_байтов).
  * **Добавлять отступы и переводы строк** — в файле экспорта каждой строке будет соответствовать один элемент, перед которым будет стоять позиция табуляции.
  * **Экранировать табуляции и переводы строк в атрибутах** — замена в атрибутах выходного файла символов табуляции на обозначение *`&#x9;`* и символа перевода строк на *`&#xA;`*
  * **Экранировать одинарные и двойные кавычки** — замена в выходном файле одинарных кавычек на обозначение *`&apos;`* и двойных на *`&quot;`*.

### Шаг 2. Сопоставление полей для экспорта

* **Подключение** — состояние подключения к XSD-схеме.
* **Корневой элемент** — выбор корневого элемента XSD-схемы, в соответствии с которым данные будут экспортироваться.
* **Связывание объектов** — список полей экспортируемой таблицы и иерархической структуры XML, которые необходимо соотнести друг с другом. Типы данных поля таблицы и связываемого объекта должны совпадать. Списки можно связать автоматически, воспользовавшись кнопкой ![ ](./../../images/icons/common/toolbar-controls/auto-connect_default.svg) *Связать автоматически*. Если связь между полем и объектом была установлена неправильно, ее можно удалить, нажав на кнопку ![ ](./../../images/icons/link-grid/remove-link_hover.svg) на линии связи. При необходимости удаления всех связей используется кнопка ![ ](./../../images/icons/common/toolbar-controls/remove-all-links_default.svg) *Удалить все связи*. Поля таблицы, которые уже соотнесены с каким-либо элементом, подсвечиваются жирным шрифтом. Помимо автоматического, возможно связывание полей и объектов XML вручную двумя способами.
  * **Методом Drag-and-drop** — перетащить метку поля на элемент.
  * Выбрать элемент для связи и в колонке *Связанные поля* щелкнуть левой кнопкой мыши по его ячейке. Откроется окно для выбора полей, пригодных для связывания. Кнопка-переключатель в состоянии фильтра ![ ](./../../images/icons/ext/filter-switcher/filterswitch-on_default.svg) предоставляет в окне выбора только те поля, которые еще не связаны с какими-либо элементами, а в простом состоянии ![ ](./../../images/icons/ext/filter-switcher/filterswitch-off_default.svg) предоставляет к выбору все поля.
* **Наличие временной зоны** — указание для данных формата дата/время временной зоны машины, на которой производится экспорт.
  * Не указывать.
  * Не указывать для даты — не указывать временную зону для элементов типа Date.
  * Указывать всегда.