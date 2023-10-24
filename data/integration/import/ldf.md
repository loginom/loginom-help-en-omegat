---
description: Импорт данных в Loginom из LGD-файла. Импорт данных в Loginom из DDF-файла. Мастер настройки.
---
# ![ ](./../../images/icons/common/data-sources/file-native-import_default.svg) Import from the LGD File

Узел предназначен для импорта таблицы из [LGD-файла](./../../data-format/lgd-file.md). The DDF files import from the Deductor platform is supported.

LGD: the special format of files optimized for work in Loginom. It provides the maximum writing and reading speed. The file includes settings of fields that simplifies the import process.

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](./../../workflow/variables/control-variables.md) (optional port): it is possible to set values of the wizard parameters using variables.

### Output

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg)Imported data set

## Wizard

* **File name** enables to set a path to the imported file when the connection is local, or a file name when using connection to a folder. ![ ](./../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Сжатие** — отображает информацию о методе сжатия LGD-файла, использованном при его создании:
   * None
   * [LZO](https://ru.wikipedia.org/wiki/LZO).
   * [LZ4](https://ru.wikipedia.org/wiki/LZ4).
* **Bitness** enables to display information on bitness of the imported file: 64 or 32 bits.
* **Контрольная сумма** — информация о контрольной сумме сжатия файла:
   * Сжатых данных — записана контрольная сумма сжатых данных после каждого блока.
   * Сжатых и несжатых данных — записана контрольная сумма сжатых данных после каждого блока, а также контрольная сумма всех несжатых данных в конце файла.
   * Нет — нет контрольной суммы.
* **Проверять контрольную сумму** — если флаг установлен, то будет выполняться проверка контрольной суммы, если она есть в файле. Это страхует пользователя от незаметных искажений и от Access Violation, если файл по какой-то причине оказался испорчен. В этом случае чтение происходит медленнее на 2%, если контрольная сумма была от сжатых данных, и до 7%, если были оба вида контрольной суммы. По умолчанию проверка контрольной суммы выполняется (флаг установлен).
