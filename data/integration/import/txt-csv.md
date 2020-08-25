# ![ ](../../images/icons/data-sources/file-txt-import_default.svg) Импорт из текстового файла

Используется для импорта данных из текстовых файлов c разделителями. Текстовый файл с разделителями представляет собой обычный текстовый файл, столбцы данных в котором разделены однотипными символами-разделителями, например, символами табуляции, запятыми, точками с запятой и т. д.

### Вход

* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port) — it is possible to set values of wizard parameters using variables.

### Выход

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Набор данных (таблица данных).

## Wizard

The wizard contains several configuration stages.

### Step 1. Импорт из текстового файла

The following parameters are specified at the first configuration stage:

* **Хранилище файлов** — выводит информацию о способе подключения к файлу-источнику;
* **Имя файла** — путь к файлу, содержащему необходимые данные;
* **Кодовая страница** — кодировка, в которой хранится текст в файле;
* **Заголовок в первой строке** — флаг, определяющий, что метки полей создаваемого набора данных содержатся в первой строке импортируемого текста;
* **Пропустить строк** — количество строк с начала текста, не подлежащее импорту.

### Step 2. Настройки форматов импорта

На этапе настройки указываются:

* Разделители:
   * **Ограничитель строк** – символ, обрамляющий значения ячейки загружаемого набора данных. Текст, следующий за этим символом и предшествующий следующему его вхождению, импортируется как одно значение, даже если текст содержит символ-разделитель.
   * **Десятичный разделитель** – символ, разделяющий дробную и целую части числовых значений.
   * **Разделитель даты** – символ, разделяющий компоненты даты.
   * **Разделитель времени** – символ, разделяющий компоненты времени.
* Представление значений:
   * **Истина** – текст, представляющий логическое значение *Истина*.
   * **Ложь** – текст, представляющий логическое значение *Ложь*.
   * **Пусто** – текст, представляющий значение *Null*.
* Форматы:
   * **Формат даты** – параметром задается формат даты, используемый в импортируемом тексте.

### Step 3. Параметры импорта с разделителями

It is required to specify the following parameters at the configuration stage:

* **Разделитель столбцов** — символ, разделяющий данные соседних столбцов.
* **Принимать несколько подряд разделителей за один** — установка флага позволит принимать несколько подряд идущих разделителей столбцов за один.
* It is required to display the following data:
   * **Result**: result of data transformation will be displayed in the table wizard part, taking into account the set parameters of fields.
   * **Исходные данные** — в табличной части окна мастера будет показан исходный (текстовый) вариант загружаемых данных.

The table part of the wizard window is designated for configuration of import parameters for each data set field.

* **Кол-во строк для анализа** — задает количество строк набора, по которым будет проводиться анализ типа данных. При этом максимальное число строк для отображения 200.
* ![Обновить все](../../images/icons/toolbar-controls/refresh_default.svg) **Обновить все** — перечитывает указанное количество строк в таблицу и производит автоматическое формирование результирующего набора данных.
* ![Refresh data](../../images/icons/toolbar-controls/refresh-data_default.svg) **Refresh data** only rereads the specified row count into a table.

The following settings are used to generate the resulting data set in manual way:

* **Name**: the unique field name is assigned.
* **Caption**: the user field description is provided.
* **Data type** — [data type](../../data/datatype.md): the text field value will be transformed.
* **Data kind** — [data kind](../../data/datakind.md): it is set by a list of values:
   * Continuous
   * Discrete
   * Undefined
* **Use**: flag of the filed inclusion into the resulting data set.
