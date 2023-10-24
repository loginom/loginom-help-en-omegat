---
description: Импорт данных в Loginom из текстового файла.  Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/file-txt-import_default.svg) Import from the Text File

It is used for data import from the text files with separators. The text file with separators is a standard text file the data columns of which are separated with separating characters of the same type, for example, tab characters, commas, semicolumns, etc.

### Input

* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

### Output

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Data set (data table).

## Wizard

The wizard contains several configuration stages.

### Step 1. Import from the Text File

The following parameters are specified at the first configuration stage:

* **Имя файла/URL** — путь к файлу, содержащему необходимые данные. Также в имени файла можно задавать URL-ссылку для скачивания.
* **Кодовая страница** — кодировка, в которой хранится текст в файле.
* **Заголовок в первой строке** — флаг, определяющий, что метки полей создаваемого набора данных содержатся в первой строке импортируемого текста.
* **Skip rows**: count of the rows from the text beginning that cannot be imported.

### Step 2. Configure Import Formats

**Определить автоматически** — автоматически определяются все разделители и рассчитывается структура полей.

It is required to specify the following parameters at the configuration stage:

* **Column delimiter**: the character separating data of adjacent columns.

> **Примечание:** Есть несколько стандартных разделителей: `tab`, `,`, `;`. Если есть `tab` или `;`, используется тот, который чаще встречается, иначе приоритет отдаётся `,`. Также присутствует возможность задать разделитель вручную, для этого необходимо в строке заменить предложенный в форме ввода текст на нужный разделитель. Если названных разделителей нет, то делается попытка разделить по пробелам.

* **Считать последовательные разделители одним** — установка флага позволит принимать несколько подряд идущих разделителей столбцов за один.
* **Text qualifier**: the character that frames cell values of the downloaded data set. The text following this character and preceding its subsequent occurrence is imported as one value even if the text contains a separating character.
* **Null**: the text that represents the *Null* value.
* **Переменный тип** — установка флага определяет поля, содержащие в себе записи с различными типами данных, как [Переменный тип](./../../data/datatype.md). При неактивном флаге таким полям присваивается [Строковый тип](./../../data/datatype.md).
* **Decimal separator**: the character that separates fractional and integer parts of numeric expressions.
* **Date format**: the parameter enables to set the date format used in the imported text.
* **Date separator**: the character that separates date components.
* **Time separator**: the character that separates time components.

> **Примечание:** Распознавание чисел и даты происходит так: выбирается первый строковый столбец, который преобразуется в нужный тип (целый, вещественный, дата/время). Разделитель, распознанный в этом столбце, будет применяться в остальной таблице.

* **True**: the text that represents the logical *True* value.
* **False**: the text that represents the logical *False* value.

The table part of the wizard window is designated for configuration of import parameters for each data set field.

* ![Обновить все](./../../images/icons/common/toolbar-controls/refresh_default.svg) **Обновить все** — рассчитывает все имена, метки, типы и виды данных полей.
* ![Определить типы данных](./../../images/icons/common/toolbar-controls/refresh-data_default.svg) **Определить типы данных** — рассчитывает заново только типы и виды данных.
* **Row count for analysis** enables to set row count of a data set used for data type analysis. The maximum row count to be displayed is 200.
* **Raw data**: the source (text) version of downloaded data will be displayed in the table wizard part.
* **Result**: result of data transformation will be displayed in the table wizard part, taking into account the set parameters of fields.
* ![Развернуть](./../../images/icons/common/toolbar-controls/maximize_default.svg)**Развернуть** — разворачивает табличную часть мастера настроек.
* ![Свернуть](./../../images/icons/common/toolbar-controls/minimize_default.svg)**Свернуть** — сворачивает табличную часть мастера настроек.

The following settings are used to generate the resulting data set in the manual way:

* **Name**: the unique field name is assigned.
* **Caption**: the user field description is provided.
* **Data type** — [data type](./../../data/datatype.md): the text field value will be transformed.
* **Data kind** — [data kind](./../../data/datakind.md): it is set by a list of values:
   * Continuous
   * Discrete
   * Undefined
* **Use**: checkbox of the field inclusion into the resulting data set.

### Автоматическое определение структуры таблицы

Свойства таблицы, которые могут быть определены автоматически:

* **Заголовок в первой строке**,
* **Ограничитель строк**,
* **Десятичный разделитель**,
* **Разделитель даты**,
* **Разделитель времени**,
* **Формат даты**.
