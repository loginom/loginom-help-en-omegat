# ![ ](../../images/icons/data-sources/file-native-export_default.svg) Экспорт в LGD-файл

Обработчик осуществляет экспорт исходного набора данных в [LGD-файл](../../data-format/lgd-file.md). LGD-файл уже содержит в себе всю необходимую информацию о параметрах полей (имя поля, метка, тип данных и др.), что позволяет выполнять экспорт и импорт наборов данных с минимальными настройками.

Имеется возможность использования сжатия данных различными алгоритмами.

> **Примечание:** Формат хранения LGD разработан специально для использования с Loginom и обеспечивает наивысшую скорость импорта и экспорта данных.

## Ports

### Input

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg)Data source is a data table to be exported.
* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port): it is possible to set values of wizard parameters using variables.

## Wizard

* **File storage** enables to display information on method of connection to the destination file.
* **File name** enables to set a path to the destination file when the connection is local, or a file name when using connection to a folder. ![ ](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) button calls the file selection dialog.
* **Алгоритм сжатия** может применяться для уменьшения размера файла экспорта. Доступны следующие варианты.
   * Without compression
   * [LZO](https://ru.wikipedia.org/wiki/LZO) (рекомендуется, используется по умолчанию).
* **Разрядность** — выводит информацию о разрядности LGD-файла: 64 или 32 бита. Разрядность LGD-файла зависит от разрядности используемого сервера Loginom.
* **Активация и просмотр** — клик по данной кнопке позволяет сразу в мастере настройки увидеть, как будет выглядеть экспортируемая таблица.

> **Примечание:** Следует учитывать, что Loginom использует формат хранения данных в LGD-файлах отличный от использовавшегося ранее в платформе Deductor файлов DDF. Поэтому эти файлы не могут быть импортированы в Deductor 5.3 и ниже.
