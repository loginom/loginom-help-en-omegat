# SUMMARY

* [Главная](./README.md)
  * [Компоненты платформы](./components-platform.md)
  * [Сравнение редакций](./compare-editions.md)
* [Начало работы](./quick-start/README.md)
  * [Аутентификация](./quick-start/authentication.md)
  * [Назначение и структура пакета](./quick-start/package.md)
  * [Первый сценарий](./quick-start/first-workflow.md)
  * [Принципы проектирования](./quick-start/design-principles.md)
  * [Интеграция с базами данных](./quick-start/database.md)
  * [Использование переменных](./quick-start/variables.md)
* [Интерфейс](./interface/README.md)
  * [Страница «Вход»](./interface/login-page.md)
  * [Страница «Начало»](./interface/home-page.md)
  * [Главное меню](./interface/main-menu.md)
  * [Пакеты](./interface/packages.md)
  * [Адресная строка](./interface/address-bar.md)
  * [Страница «Сценарий»](./interface/workflow.md)
    * [Инспектор свойств](./interface/property-inspector.md)
  * [Панель «Процессы»](./interface/processes-panel.md)
  * [Версия Loginom](./interface/version.md)
* [Проектирование сценариев](./workflow/README.md)
  * [Интерактивный режим работы](./workflow/interactive-mode.md)
  * [Порты](./workflow/ports/README.md)
    * [Автоматическая синхронизация полей](./workflow/ports/automapping-of-fields.md)
    * [Интерфейс «Связи»](./workflow/ports/connections-interface.md)
    * [Интерфейс «Таблица»](./workflow/ports/table-interface.md)
    * [Служебные порты](./workflow/ports/service-ports.md)
  * [Переменные](./workflow/variables/README.md)
    * [Управляющие переменные](./workflow/variables/control-variables.md)
    * [Переменные сценария](./workflow/variables/scenario-variables.md)
    * [Предопределенные переменные](./workflow/variables/predefined-variables.md)
  * [Производный компонент](./workflow/derived-component.md)
  * [Модификатор доступа](./workflow/access-modifier.md)
  * [Управление ходом выполнения](./workflow/workflow-progress-control.md)
  * [Режим активации узла](./workflow/node-activation-mode.md)
  * [Пакетное выполнение сценариев](./workflow/batchlauncher.md)
  * [Обучение (переобучение) узла](./workflow/training-processors.md)
  * [Кэширование](./workflow/caching.md)
  * [Настройка локали](./workflow/local-settings.md)
  * [Ссылка на пакет](./workflow/reference-to-package.md)
  * [Заметки](./workflow/note.md)
  * [Горячие клавиши](./workflow/hotkeys.md)
* [Интеграция](./integration/README.md)
  * [Подключения](./integration/connections/README.md)
    * [BigQuery](./integration/connections/list/bigquery.md)
    * [ClickHouse](./integration/connections/list/clickhouse.md)
    * [Firebird](./integration/connections/list/firebird.md)
    * [Interbase](./integration/connections/list/interbase.md)
    * [MS Access](./integration/connections/list/msaccess.md)
    * [MS Excel](./integration/connections/list/excel.md)
    * [MS SQL](./integration/connections/list/mssql.md)
    * [MySQL](./integration/connections/list/mysql.md)
    * [ODBC](./integration/connections/list/odbc.md)
    * [Oracle](./integration/connections/list/oracle.md)
    * [PostgreSQL](./integration/connections/list/postgresql.md)
    * [SQLite](./integration/connections/list/sqlite.md)
    * [Kafka](./integration/connections/list/kafka.md)
    * [REST-сервис](./integration/connections/list/rest-service.md)
    * [SOAP-сервис](./integration/connections/list/soap-service.md)
    * [Набор XSD-схем](./integration/connections/list/schemes.md)
    * [Deductor Warehouse [Firebird]](./integration/connections/list/wh-firebird.md)
    * [Deductor Warehouse [MS SQL]](./integration/connections/list/wh-mssql.md)
    * [Deductor Warehouse [Oracle]](./integration/connections/list/wh-oracle.md)
    * [1C:Предприятие 8](./integration/connections/list/1c.md)
  * [Импорт данных](./integration/import/README.md)
    * [1C Запрос](./integration/import/1c-db.md)
    * [База данных](./integration/import/database.md)
    * [Текстовый файл](./integration/import/txt-csv.md)
    * [Deductor Warehouse](./integration/import/warehouse.md)
    * [Excel-файл](./integration/import/excel/README.md)
      * [Примеры импорта из Excel-файла](./integration/import/excel/excel-examples.md)
    * [Kafka](./integration/import/kafka.md)
    * [LGD-файл](./integration/import/ldf.md)
    * [XML-файл](./integration/import/xml.md)
  * [Экспорт данных](./integration/export/README.md)
    * [База данных](./integration/export/database.md)
      * [Создание новой таблицы](./integration/export/database/new-table-design.md)
    * [Текстовый файл](./integration/export/txt-csv.md)
      * [Пользовательский формат дата/время](./integration/export/txt-csv/datetime-formats.md)
    * [Deductor Warehouse](./integration/export/warehouse.md)
    * [Excel-файл](./integration/export/excel.md)
    * [LGD-файл](./integration/export/ldf.md)
    * [Kafka](./integration/export/kafka.md)
    * [XML-файл](./integration/export/xml.md)
  * [Веб-сервисы](./integration/web-services/README.md)
    * [Создание и публикация веб-сервисов](./integration/web-services/publishing-web-service.md)
    * [Редактирование веб-сервиса](./integration/web-services/package-publishing-wizard.md)
    * [Страница Веб-сервисы](./integration/web-services/administration-web-services.md)
* [Обработка данных](./processors/README.md)
  * [Стандартные компоненты](./processors/standard-components.md)
    * [Трансформация](./processors/transformation/README.md)
      * [Группировка](./processors/transformation/grouping.md)
      * [Дата и время](./processors/transformation/trans-datatime/README.md)
        * [Формат](./processors/transformation/trans-datatime/syntax.md)
      * [Дополнение данных](./processors/transformation/enrich-data.md)
      * [Замена](./processors/transformation/substitution/README.md)
        * [Точное совпадение](./processors/transformation/substitution/exact-match.md)
        * [Регулярное выражение](./processors/transformation/substitution/regexp-match.md)
        * [Структура файла замен](./processors/transformation/substitution/import-tz.md)
        * [Заменять остальное](./processors/transformation/substitution/other-match.md)
      * [Калькулятор](./processors/transformation/calc/README.md)
        * [Выражение](./processors/transformation/calc/expression.md)
        * [JavaScript](./processors/transformation/calc/javascript.md)
      * [Кросс-таблица](./processors/transformation/cross-table.md)
      * [Объединение](./processors/transformation/union.md)
      * [Параметры полей](./processors/transformation/fields-features.md)
      * [Разгруппировка](./processors/transformation/ungrouping.md)
      * [Свёртка столбцов](./processors/transformation/collapse-columns.md)
      * [Скользящее окно](./processors/transformation/lag.md)
      * [Слияние](./processors/transformation/join/README.md)
        * [Полное соединение](./processors/transformation/join/cross.md)
        * [Внутреннее соединение](./processors/transformation/join/inner.md)
        * [Левое соединение](./processors/transformation/join/left.md)
        * [Правое соединение](./processors/transformation/join/right.md)
        * [Разность](./processors/transformation/join/difference.md)
      * [Соединение](./processors/transformation/column-union.md)
      * [Сортировка](./processors/transformation/sorting.md)
      * [Фильтр строк](./processors/transformation/row-filter/README.md)
        * [Условия фильтрации](./processors/transformation/row-filter/filtering-criteria.md)
        * [Буфер обмена](./processors/transformation/row-filter/filterdata-paste-from-clipboard.md)
    * [Управление](./processors/control/README.md)
      * [Выполнение узла](./processors/control/execute-node.md)
      * [Подмодель](./processors/control/supernode.md)
      * [Узел-ссылка](./processors/control/reference-node.md)
      * [Условие](./processors/control/condition.md)
      * [Цикл](./processors/control/loop.md)
    * [Исследование](./processors/scrutiny/README.md)
      * [Автокорреляция](./processors/scrutiny/autocorrelation.md)
      * [Дубликаты и противоречия](./processors/scrutiny/duplicates.md)
      * [Корреляционный анализ](./processors/scrutiny/correlation-analysis.md)
      * [Факторный анализ](./processors/scrutiny/factor-analysis.md)
    * [Предобработка](./processors/preprocessing/README.md)
      * [Заполнение пропусков](./processors/preprocessing/imputation.md)
      * [Квантование](./processors/preprocessing/binning.md)
        * [Внешние диапазоны](./processors/preprocessing/binning/external-ranges.md)
        * [Структура результирующего набора](./processors/preprocessing/binning/calculated-columns.md)
        * [Параметры диапазонов квантования](./processors/preprocessing/binning/parameters-of-binning-ranges.md)
      * [Конечные классы](./processors/preprocessing/coarse-classes.md)
        * [Настройка внешнего разбиения](./processors/preprocessing/coarse-classes/configure-external-binning.md)
        * [Настройка назначений столбцов](./processors/preprocessing/coarse-classes/configure-column-usage-types.md)
        * [Настройка конечных классов](./processors/preprocessing/coarse-classes/configure-coarse-classes.md)
      * [Разбиение на множества](./processors/preprocessing/partitioning.md)
      * [Редактирование выбросов](./processors/preprocessing/eliminate-outliers.md)
      * [Сглаживание](./processors/preprocessing/smoothing.md)
      * [Сэмплинг](./processors/preprocessing/sampling.md)
    * [Data Mining](./processors/datamining/README.md)
      * [Ассоциативные правила](./processors/datamining/association-rules.md)
      * [Кластеризация](./processors/datamining/clustering.md)
      * [Кластеризация транзакций](./processors/datamining/transaction-clustering.md)
      * [Линейная регрессия](./processors/datamining/linear-regression/README.md)
        * [Сводка](./processors/datamining/linear-regression/report.md)
        * [Коэффициенты регрессии](./processors/datamining/linear-regression/coef-regression.md)
      * [Логистическая регрессия](./processors/datamining/logistic-regression/README.md)
        * [Сводка](./processors/datamining/logistic-regression/report.md)
        * [Коэффициенты регрессии](./processors/datamining/logistic-regression/coef-regression.md)
      * [Нейросеть (классификация)](./processors/datamining/neural-network-classification.md)
        * [Выход нейросети](./processors/datamining/neural-network-classification/output-set.md)
        * [Сводка](./processors/datamining/neural-network-classification/report.md) 
      * [Нейросеть (регрессия)](./processors/datamining/neural-network-regression.md)
        * [Сводка](./processors/datamining/neural-network-regression/report.md)
      * [Самоорганизующиеся сети](./processors/datamining/self-organizing-network.md)
      * [ARIMAX](./processors/datamining/arimax.md)
      * [EM Кластеризация](./processors/datamining/em-clustering.md)
    * [Программирование](./processors/programming/README.md)
      * [JavaScript](./processors/programming/java-script/README.md)
        * [Внешние модули](./processors/programming/java-script/external-modules.md)
        * [Входные наборы](./processors/programming/java-script/input-tables.md)
        * [Входные переменные](./processors/programming/java-script/input-variables.md)
        * [Выходной набор](./processors/programming/java-script/output-table.md)
        * [Глобальные функции](./processors/programming/java-script/global-function.md)
        * [Перечисления](./processors/programming/java-script/enum.md)
        * [Функции Калькулятора](./processors/programming/java-script/calc-functions.md)
        * [Fetch API](./processors/programming/java-script/fetch-api.md)
        * [File Storage API](./processors/programming/java-script/fileapi.md)
        * [Консоль отладки кода](./processors/programming/java-script/console.md)
        * [Описание API](./processors/programming/java-script/api-description.md)
        * [Горячие клавиши](./processors/programming/java-script/hotkeys.md)
      * [Python](./processors/programming/python/README.md)
        * [Входные наборы](./processors/programming/python/input-tables.md)
        * [Входные переменные](./processors/programming/python/input-variables.md)
        * [Выходной набор](./processors/programming/python/output-table.md)
        * [Перечисления](./processors/programming/python/enum.md)
        * [Панель вывода](./processors/programming/python/console.md)
        * [Описание API](./processors/programming/python/api-description.md)
        * [Горячие клавиши](./processors/programming/python/hotkeys.md)
    * [Переменные](./processors/variables/README.md)
      * [Замена (переменные)](./processors/variables/variables-replace.md)
      * [Калькулятор (переменные)](./processors/variables/variables-calc.md)
      * [Переменные в таблицу](./processors/variables/variables-to-table.md)
      * [Соединение (переменные)](./processors/variables/variables-union.md)
      * [Таблица в переменные](./processors/variables/variables-from-table.md)
    * [Дерево данных](./processors/data-trees/README.md)
      * [Дерево в таблицу](./processors/data-trees/tree-to-table.md)
      * [Таблица в дерево](./processors/data-trees/table-to-tree.md)
    * [Интеграция](./processors/integration/README.md)
      * [Выполнение программы](./processors/integration/exec-program.md)
      * [Разбор XML](./processors/integration/extracting-xml.md)
      * [Формирование XML](./processors/integration/xml-generation.md)
      * [REST-запрос](./processors/integration/rest-request.md)
      * [SOAP-запрос](./processors/integration/soap-request.md)
  * [Функции](./processors/func/README.md)
    * [Функции калькулятора](./processors/func/calc-func/README.md)
      * [Дата/время](./processors/func/calc-func/datetime.md)
      * [Логические функции](./processors/func/calc-func/logic.md)
      * [Математические функции](./processors/func/calc-func/mathematical.md)
      * [Модели](./processors/func/calc-func/model.md)
      * [Статистические функции](./processors/func/calc-func/statistical.md)
      * [Строковые функции](./processors/func/calc-func/string.md)
      * [Финансовые функции](./processors/func/calc-func/financial.md)
      * [Прочие функции](./processors/func/calc-func/other.md)
    * [Функции агрегации данных](./processors/func/aggregation-functions.md)
  * [Нормализация](./processors/normalization/README.md)
    * [Нормализация непрерывных данных](./processors/normalization/normalization-continuous.md)
    * [Нормализация дискретных данных](./processors/normalization/normalization-discrete.md)
  * [Валидация моделей](./processors/validation.md)
* [Визуализаторы](./visualization/README.md)
  * [Диаграмма](./visualization/chart/README.md)
    * [Общие настройки](./visualization/chart/general-settings.md)
    * [Настройки осей](./visualization/chart/axis-settings.md)
    * [Настройки серий](./visualization/chart/series-settings.md)
  * [Качество данных](./visualization/data-quality/README.md)
  * [Куб](./visualization/cube/README.md)
    * [Вычисляемый факт](./visualization/cube/calculated-measure.md)
    * [Детализация](./visualization/cube/details.md)
    * [Диаграмма](./visualization/cube/chart.md)
    * [Добавить факт](./visualization/cube/add-measure.md)
    * [Настроить измерения](./visualization/cube/configure-axis.md)
    * [Настроить факты](./visualization/cube/configure-measures.md)
    * [Панель инструментов](./visualization/cube/toolbar.md)
    * [Фильтровать факты](./visualization/cube/filter-measures.md)
    * [Форматирование](./visualization/cube/format-measures.md)
  * [Статистика](./visualization/statistics/README.md)
    * [Статистические показатели](./visualization/statistics/statistics-description.md)
  * [Таблица](./visualization/table/README.md)
    * [Фильтрация](./visualization/table/filter.md)
    * [Формат](./visualization/table/format.md)
    * [Поиск](./visualization/table/search.md)
    * [Настройка сортировки](./visualization/table/sorting.md)
    * [Дубликаты и противоречия](./visualization/duplicates/README.md)
    * [Основная таблица](./visualization/duplicates/main-table.md)
    * [Фильтрация](./visualization/duplicates/filter.md)
    * [Формат](./visualization/duplicates/format.md)
    * [Поиск](./visualization/duplicates/search.md)
    * [Настройка сортировки](./visualization/duplicates/sorting.md)
  * [Конечные классы](./visualization/coarse-classes/README.md)
  * [Профили кластеров](./visualization/cluster-profiles/README.md)
    * [Основная таблица](./visualization/cluster-profiles/main-table.md)
    * [Панель фильтрации](./visualization/cluster-profiles/filtration-panel.md)
    * [Панель сравнения кластеров](./visualization/cluster-profiles/comparison-panel.md)
    * [Панель инструментов](./visualization/cluster-profiles/toolbar.md)
    * [Детализация](./visualization/cluster-profiles/details.md)
  * [Отчет по линейной регрессии](./visualization/linear-regression/README.md)
  * [Отчет по регрессии](./visualization/regression/README.md)
  * [Качество бинарной классификации](./visualization/binary-classification/README.md)
  * [Быстрый просмотр](./visualization/preview/quick-view.md)
  * [Предпросмотр](./visualization/preview/preview.md)
* [Отчеты](./report/README.md)
* [Данные](./data/README.md)
  * [Типы данных](./data/datatype.md)
  * [Совместимость типов данных](./data/compatibility.md)
  * [Параметры поля набора данных](./data/datasetfieldfeatures.md)
  * [Вид данных (непрерывный, дискретный)](./data/datakind.md)
* [Фирменные источники данных](./data-format/README.md)
  * [Loginom Data File](./data-format/lgd-file.md)
  * [Deductor Warehouse](./data-format/data-warehouse.md)
* [Файловое хранилище](./location_user_files.md)
* [Администрирование](./admin/README.md)
  * [LDAP](./admin/ldap.md)
  * [Пользователи](./admin/users/README.md)
    * [Роли пользователей](./admin/users/roles.md)
    * [Матрица доступа](./admin/users/access-matrix.md)
  * [Общие папки](./admin/shared-folder.md)
  * [Параметры](./admin/parameters.md)
  * [Логирование](./admin/log.md)
  * [Диспетчер](./admin/dispatcher.md)