# Обработка

## Основные понятия

**Сценарий** - последовательность действий, которые необходимо провести для анализа данных. Сценарий обработки представляет собой комбинацию узлов обработки данных, настраиваемую пользователем для решения конкретной задачи.

Последовательность обработки задается соединением выхода предыдущего узла сценария со входом последующего. Входом и выходом узла являются **входные** и **выходные порты**.

![](../quick-start/readme-1.png)

*Пример сценария*

**Узел** сценария выполняет отдельную операцию над данными. Перечень возможных операций представлен палитрой готовых **компонентов**. Таким образом, **компонент** является прообразом или шаблоном будущего узла сценария. Для того, чтобы создать узел сценария, выполняющий нужную операцию над данными, необходимо мышью перенести соответствующий компонент из панели компонентов в область построения сценария (подробнее см. ["Первый сценарий"](../quick-start/first-scenario.md)).

The workflow nodes are created from 2 types of components :

* Стандартные компоненты - предоставляются в рамках платформы;
* [Производные компоненты](../scenario/derived-component.md) - создаются и настраиваются пользователем. Производный компонент можно создать из комбинации узлов сценария, реализующей произвольную логику обработки.

Таким образом набор средств для реализации различной логики обработки данных не ограничивается стандартными компонентами платформы и может быть расширен самим пользователем.

The [supernode](./control/submodel.md) is most commonly used to create the derived component. The supernode is a special node that can include other workflow nodes. Реализованная в Подмодели логика может быть произвольной, при этом разработчик сценария может рассматривать её как «черный ящик».

The supernode accepts information by means of input ports, performs processing and sends results to output ports. Input and output ports are set by a user.

От обработчика к обработчику могут передаваться как наборы данных - таблицы, так и переменные - объекты, содержащие лишь одно значение. Статистические данные таблиц (например, сумма по столбцу, среднее значение и т.д.) при помощи специального обработчика могут быть преобразованы в переменные.

Переменные, в свою очередь, могут применяться в обработчиках для преобразования таблиц. Поскольку таблицы и переменные имеют разную структуру, то соответствующие им порты не могут быть соединены друг с другом и имеют разное обозначение.

## Стандартные компоненты

### [Transformation](./transformation/README.md)

Набор компонентов для первоначальной подготовки и простой обработки исходных наборов данных.

* [Grouping](./transformation/grouping.md)
* [Date and time](./transformation/trans-datatime/README.md)
* [Enrich data](./transformation/supplementation.md)
* [Replace](./transformation/substitution/README.md)
* [Calculator](./transformation/calc/README.md)
* Калькулятор JS
* [Cross table](./transformation/cross-table.md)
* [Union](./transformation/union.md)
* [Parameters of fields](./transformation/fields-parameters.md)
* [Ungroup](./transformation/ungrouping.md)
* [Collapse columns](./transformation/rollup-columns.md)
* [Lag](./transformation/sliding-window.md)
* [Join](./transformation/join/README.md)
* [Connection](./transformation/addition.md)
* [Sort](./transformation/sorting.md)
* [Row filter](./transformation/row-filter/README.md)

### [Control](./control/README.md)

Компоненты группы предназначены для оптимизации сценариев путем создания подмоделей и повторного использования узлов, а также формирования логики выполнения сценариев при помощи условий и циклов.

* [Node execution](./control/execute-node.md)
* [Supernode](./control/submodel.md)
* [Reference node](./control/unit-link.md)
* [Antecedent](./control/condition.md)
* [Loop](./control/cycle.md)

### [Research](./scrutiny/README.md)

С помощью этих обработчиков можно оценить и/или визуализировать структуру и статистические характеристики данных. Также с их помощью проводятся разведочный и описательный анализы.

* [Autocorrelation](./scrutiny/autocorrelation.md)
* [Correlation analysis](./scrutiny/correlation-analysis.md)
* [Factor analysis](./scrutiny/factor-analysis.md)

### [Preprocessing](./preprocessing/README.md)

Предварительная обработка данных для их дальнейшего использования в алгоритмах Data Mining. Применяются такие методы, как заполнение пропусков, сэмплинг, редактирование выбросов и другие.

* [Imputation](./preprocessing/filling-omissions.md)
* [Binning](./preprocessing/quantization.md)
* [Coarse classes](./preprocessing/fine-classes.md)
* [Partitioning](./preprocessing/separating-to-multiplicity.md)
* [Eliminate outliers](./preprocessing/editing-of-emissions.md)
* [Smoothing](./preprocessing/smoothing.md)
* [Sampling](./preprocessing/sampling.md)

### [Data Mining](./datamining/README.md)

Обработчики, выделенные в эту группу, являются инструментами для реализации различных методов Data Mining: кластеризация, ассоциативные правила и другие.

* [EM clustering](./datamining/em-clustering.md)
* [Association rules](./datamining/associative-rules.md)
* [Clustering](./datamining/clustering.md)
* [Transaction clustering](./datamining/clustering-transactions.md)
* [Logistic regression](./datamining/logistic-regression/README.md)
* [Neural network (classification)](./datamining/neural-network-classification.md)
* [Neural network (regression)](./datamining/neural-network-regression.md)
* [Self-organizing networks](./datamining/self-organizing-network.md)

### [Variables](./variables/README.md)

В Loginom имеется возможность создавать и использовать переменные. Обработчики этой группы позволяют проводить различные операции над ними: изменение, создание переменных из таблицы, расчет новых переменных с помощью различных функций.

* [Replace (variables)](./variables/variables-replace.md)
* [Calculator (variables)](./variables/variables-calc.md)
* [Variables to table](./variables/variables-to-table.md)
* [Union (variables)](./variables/variables-union.md)
* [Table to variables](./variables/variables-from-table.md)

### [Integration](./integration/README.md)

Механизмы интеграции предназначены для обмена данными между платформой Loginom и сторонними внешними системами.

* [SOAP request](./integration/soap-request.md)
* [REST request](./integration/rest-request.md)
* [Program execution](./integration/exec-program.md)
* [XML Extraction](./integration/extracting-xml.md)