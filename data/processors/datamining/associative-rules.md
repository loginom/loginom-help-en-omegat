# ![ ](../../images/icons/components/assnrules_default.svg) Association Rules

## Description

The handler detects [association rules](https://wiki.loginom.ru/articles/association-rules.html) in the [transaction data](https://wiki.loginom.ru/articles/transaction.html). To provide an example of such rule, it is observed that a consumer who buys "Bread" (*condition of rule*), will buy "Milk" as well (*consequence of rule*) with a probability of 75%. Транзакцией в данном примере является чек продажи, содержащий список приобретенных товаров, а каждый товар в чеке является элементом транзакции. При поиске ассоциативных правил применяется алгоритм [FP-Growth](https://basegroup.ru/community/articles/fpg).

Наряду с анализом основных данных транзакций возможно учитывать и вспомогательные. Например, если транзакцией является чек, а элементами — товары, то в качестве вспомогательных данных могут быть использованы: пол покупателя, возраст, регион, сезон и т.д. Фактически вспомогательные данные рассматриваются алгоритмом как еще одни элементы транзакций, и обозначение "вспомогательные" они имеют лишь в контексте аналитической задачи. Поскольку вспомогательные данные чаще представляются в источниках данных как дополнительные атрибуты транзакций, обработчик имеет отдельный вход для их приема.

Для получения результирующих наборов требуется предварительное [обучение обработчика](../../scenario/training-processors.md).

### Input

* ![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) — **Входной источник данных** (таблица данных). Необязательный.<br>
   Порт ожидает набор данных со столбцами идентификаторов и элементов транзакций.
* ![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) — **Вспомогательные данные** (таблица данных). Необязательный.<br>
   Принимает дополнительные элементы транзакций, которые возможно учитывать при расчете ассоциативных правил.

#### Requirements to the Received Data

%spoiler%Examples of input data sets:%spoiler%

Input data source:

| Transaction identifier | Transaction items |
| -------- | -------- |
| Check No 000001 | Bread |
| Check No 000001 | Milk |
| Check No 000001 | Butter |
| Check No 000002 | Bread |
| Check No 000003 | Bread |
| Check No 000003 | Milk |

В отличии от таблицы, принимаемой портом "Входной источник данных", элементы транзакций вспомогательных данных должны располагаться в строках, а не в столбцах. Таким образом, структура таблицы предполагает наличие одного поля идентификатора транзакций и одного или более полей элементов транзакций.

Auxiliary data:

| Transaction identifier | Sex of consumer | Age | Region | Season |
| -------- | -------- | -------- | -------- | -------- |
| Check No 000001 | m | 20-30 | The Moscow Region | 1 |
| Check No 000002 | f | 40-50 | The Kaliningrad Region | 2 |
| Check No 000003 | f | 30-40 | The Orel Region | 1 |

%/spoiler%

It is required to set ["Usage type" parameter](../../data/datasetfieldoptions.md) for the fields included into processing in the ports settings. The parameter can take the following values: *Unused, Transaction, Item*. Identifiers and transaction items can be represented only by [discrete](../../data/datatype.md) data.

### Output

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — **Frequent sets** (data table). The itemsets most frequently occurring in transactions (frequent itemsets).
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — **Association rules** (data table). Detected association rules and their parameters: [support](https://wiki.loginom.ru/articles/association-rule-support.html), [confidence](https://wiki.loginom.ru/articles/rule-confidence.html), [lift](https://wiki.loginom.ru/articles/lift-of-association-rule.html).
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) — **Apply rules** (data table). Содержит транзакции входного набора данных, в которых срабатывают выявленные правила.

## Wizard

includes the follwing groups of parameters:

### Frequent Itemsets

Задаются условия, по которым определяются *частые предметные наборы* — наборы элементов, наиболее часто встречающиеся в транзакциях. В дальнейшем только эти наборы участвуют в формировании правил:

* **Минимальная поддержка, %** — минимальная частота, с которой набор встречается в транзакциях (значение 0 до 100).
* **Исключать элементы с поддержкой, больше максимальной** — элементы, которые слишком часто встречаются в транзакциях, как правило, не несут информации о закономерностях сочетания с ними других элементов. Для их определения и исключения из частых наборов задается:
   * **Максимальная поддержка, %** — максимальная частота, с которой элемент встречается в транзакциях (значение от 0 до 100).
* **Содержащие выбранные элементы** — задает поля вспомогательного набора данных, содержащие дополнительные элементы транзакций.
* **Исключать одиночные наборы** — исключает наборы из одного элемента;
* **Максимальное число элементов** — задает максимальное количество элементов в наборе (максимальная мощность набора).

### Association Rules

В результирующий набор попадают правила, удовлетворяющие следующим условиям:

* **Минимальная достоверность правила, %** — позволяет отсеять наименее точные правила (значение от 0 до 100).
* **Минимальный лифт правила** — значение лифта > 1 косвенно подтверждает значимость правила, поскольку говорит о положительной связи двух предметных наборов (условия и следствия правила). Значение лифта, равное или меньшее 1, говорит об отсутствии или отрицательной связи. Задавая минимальную величину лифта, можно отсеять наименее значимые правила.
* **Максимальное число следствий** — максимальное количество элементов в наборе, представляющем следствие правила.
