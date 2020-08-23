# ![ ](../../images/icons/data-sources/file-native-import_default.svg) Импорт из LGD-файла

Обработчик предназначен для импорта таблицы из [LGD-файла](../../data-format/lgd-file.md). Поддерживается импорт DDF-файлов платформы Deductor.

LGD — специальный формат файлов, оптимизированный для работы в Loginom и обеспечивающий максимальную скорость записи и чтения. Файл хранит в себе настройки полей, что упрощает процесс импорта.

## Ports

### Вход

* ![ ](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) [Control variables](../../scenario/variables/control-variables.md) (optional port) — it is possible to set values of wizard parameters using variables.

### Выход

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg)Imported table

## Wizard

* **Хранилище файлов** — выводит информацию о способе подключения к файлу-источнику.
* **Имя файла** — задает путь к импортируемому файлу при локальном подключении, либо имя файла при использовании подключения к папке. Кнопка ![ ](../../images/extjs-theme/form/open-trigger/open-trigger_default.svg) вызывает диалог выбора файла.
* **Алгоритм сжатия** — отображение информации о методе сжатия LGD-файла, использованном при его создании.
   * Без сжатия.
   * [LZO](https://ru.wikipedia.org/wiki/LZO).
   * [LZ4](https://ru.wikipedia.org/wiki/LZ4).
* **Разрядность** — выводит информацию о разрядности импортируемого файла: 64 или 32 бита.
