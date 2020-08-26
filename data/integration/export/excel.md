# ![ ](../../images/icons/data-sources/file-excel-export_default.svg) Экспорт в Excel-файл

Обработчик экспортирует таблицы данных в файлы для программы Microsoft Excel. Можно задать формат файла:

* Excel 2003 (расширение .xls);
* Excel 2007 (расширение .xlsx).

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Источник данных — таблица данных, подлежащая экспорту;
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port) — it is possible to set values of wizard parameters using variables.

## Wizard

* **Хранилище файлов** — выводит информацию о способе подключения к файлу-приемнику.
* **Имя файла** — задает путь к файлу-приемнику при локальном подключении, либо имя файла при использовании подключения к папке. ![ ](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Имя листа для экспорта** — то, как будет называться лист в файле Excel, содержащий экспортируемую таблицу. Значение по умолчанию — *Лист 1*.
* **Строка заголовков** — определение заголовков для таблицы в Excel.
   * Нет строки заголовков.
   * Имена полей.
   * Метки полей.
* **Тип файла Excel**
   * Excel 2003 (расширение .xls).
   * Excel 2007 (расширение .xlsx).
* **Активация и просмотр** — клик по данной кнопке позволяет сразу в мастере настройки увидеть, как именно будет выглядеть таблица в Excel, и, если необходимо, изменить какие-либо параметры.
