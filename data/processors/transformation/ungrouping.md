# ![Ungroup](../../images/icons/components/ungroup-data_default.svg) Ungroup

The component performs tha action inverse to [aggregation by sum](../func/aggregation-functions.md) used in [Grouping](./grouping.md). To define the groups by which the inverse aggregation of numeric field will be performed, it is required to use the reference table from which the groups as such will be taken and percentage distribution of the numeric field values between them will be considered.

The main use area of ungrouping is detailing of the forecast data according to the available one. For example, if there is data on the effected sales amount for particular goods, this data can be used for ungrouping by the goods listed in the table with the forecast made only for groups of goods.

%spoiler%Example:%spoiler%

Let us consider the sales amount forecast made for two groups of goods, and we need to define the sales amounts for separate goods according to this forecast.

Ungrouped data:

| Group of goods | Amount of sales, thous. rub. |
| :------------- | ----------------------: |
| Goods for summer cottage | 42,00 |
| Household goods | 5,00 |

Data on the sales amount in the previous period will be used as reference data.

Data for calculation of quotas:

| Group of goods | Name of goods | Amount of sales, thous. rub. |
| :------------- | :-------------- | ----------------------: |
| Goods for summer cottage | Rattan chair | 16,00 |
| Goods for summer cottage | Square-point shovel | 23,50 |
| Household goods | Painted sugar bowl | 5,70 |
| Household goods | Glass jug | 4,20 |
| Goods for summer cottage | Steel vacuum flask | 7,60 |
| Goods for summer cottage | Seeds of red tulips | 5,30 |
| Goods for summer cottage | Fire starter fluid | 6,20 |
| Household goods | Pink sparkling water | 1,60 |
| Household goods | Baby soap | 2,90 |

When configuring the ungrouping node, let's select *With calculation of quotas for total sample* method, set rounding up to one decimal place and *Proportional* balance method. Let's link the following fields in the area of the field usage type configuration: `Group of goods` of both tables, `Amount of sales, thous. rub.` field from the ungroupable table will have the *Ungroupable* usage type, and `Name of goods` and `Amount of sales, thous. rub.` fields from the reference table will have the following usage types: *Field with names* and *Field with quotas* correspondingly.

Ungroup output:

| Group of goods | Name of goods | Amount of group sales, thous. rub. | Amount of group sales, thous. rub. &#124; Rounded | Ungrouped value |
| :------------- | :-------------- | -----------------------------: | -----------------------------------------: | -------------------------: |
| Goods for summer cottage | Rattan chair | 42,00 | 42,00 | 11,50 |
| Goods for summer cottage | Square-point shovel | 42,00 | 42,00 | 16,90 |
| Goods for summer cottage | Steel vacuum flask | 42,00 | 42,00 | 5,40 |
| Goods for summer cottage | Seeds of red tulips | 42,00 | 42,00 | 3,80 |
| Goods for summer cottage | Fire starter fluid | 42,00 | 42,00 | 4,40 |
| Household goods | Painted sugar bowl | 5,00 | 5,00 | 1,90 |
| Household goods | Glass jug | 5,00 | 5,00 | 1,50 |
| Household goods | Pink sparkling water | 5,00 | 5,00 | 0,60 |
| Household goods | Baby soap | 5,00 | 5,00 | 1,00 |

* **Amount of group sales, thous. rub.** — amount of sales of the particular group;
* **Amount of group sales, thous. rub. | Rounded**: the values obtained when rounding is used are shown in this field.
* **Ungrouped value**: detailing of the goods sales measured in thous. is shown in this example. rub.

%/spoiler%

## Ports

### Input

* ![Ungrouped data](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Ungrouped data**: the table that contains ungrouping field.
* ![Data for calculation of quotas](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Data for calculation of quotas**: the table from which the values of ungrouping quotas are calculated.

### Output

* ![Ungroup output](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Ungroup output**: the source table after processing. The following fields are added to it:
   * **Field caption|Rounded**: the field contains rounded ungrouped values (when rounding is used).
   * **Ungrouped value**: the field contains the values ungrouped according to the*Ungrouping method*.

If *Ungrouping method: Given time variations and seasonality of the reference data* is used, the following fields are added to this table:

* **Upper bound 95% CI**: the upper bound of 95% [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html).
* **Lower bound 95% CI**: the lower bound of 95% confidence interval.
* **Trend value** means the trend value in this point for this position.
* **Seasonal index value** means the index describing [seasonality](https://wiki.loginom.ru/articles/seasonal-component.html) of this point and this position.
* **Value type code** can take values from 0 to 6 according to the ungrouping results.
* **Value type** contains clarifications concerning each value type code, etc.
   * **0** — нормально разгруппированное значение.
   * **1** — разгруппированное значение, которое изначально было задано как фиксированное, но фиксация была снята алгоритмом.
   * **2** — зафиксированное пользователем значение.
   * **3** — значение, зафиксированное пользователем, но несогласованное с опорной выборкой.
   * **4** — значение, зафиксированное алгоритмом в ходе расчетов.
   * **5** — ошибочное значение.
   * **6** — исключено из обработки.
* ![Показатели качества модели и сезонные индексы](../../images/icons/app/node/ports/inputs/table_inactive.svg) **Показатели качества модели и сезонные индексы** — справочная таблица, составляется только при использовании метода *с учетом временных колебаний и сезонности опорных данных*, содержит поля.
   * **Индекс качества разгруппировки** — принимает значения от 0 (очень плохое качество, результатам нельзя доверять) до 1 ("идеальное" качество, опорная выборка не содержит шума, а разгруппированные значения точно укладываются в прогноз).
   * **Сезонный индекс (1, 2, 3, ...)** — количество полей с сезонными индексами указывается в мастере настройки.

## Wizard

* **Метод разгруппировки** — в выпадающем списке выбирается один из трех методов разгруппировки.
   * **По заданным долям** — метод применяется, когда доли для разгруппировки уже присутствуют в опорной таблице, в типичном случае сумма долей должна быть равна единице, но это условие не является обязательным.
   * **С расчетом долей по всей выборке** — процентное соотношение долей для разгруппировки будет таким же, как и у значений поля опорной таблицы, выбранного для расчета долей.
   * **С учетом временных колебаний и сезонности опорных данных** — применяется для разгруппировки временного ряда данных.
* **Формат округления** — указывается используемый для округления формат.
   * **Не округлять** — данные не округляются при обработке.
   * **Округлять до кратного целому** — округление разгруппированных значений до чисел, кратных заданному целому числу.
   * **Округлять до заданной точности** — округление разгруппированных значений до указанного количества цифр после запятой.
* **Метод балансировки** — подсчитывается разница между округленным разгруппируемым значением и фактической суммой округленных разгруппированных. После этого разница распределяется между всеми разгруппированными значениями в соответствии с выбранным методом балансировки.
   * **Нет балансировки** — распределения разницы не производится.
   * **Все последнему** — прибавляется к последнему разгруппированному значению.
   * **Пропорционально** — разница распределяется частями, пропорциональными величине разгруппированных значений.
   * **Равномерно** — распределяется между разгруппированными значениями поровну.
* **Область настройки назначений полей** — представляет собой две таблицы, в первой находится перечень полей разгруппируемых данных, во второй — перечень полей данных для расчета долей. Возможные варианты назначения полей.
   * ![Группа](../../images/icons/usage-types/group_default.svg) **Группа** — такое назначение выставляется автоматически при связывании полей групп. Связывать следует поля групп, одинаковые для обеих таблиц — для этого достаточно перетащить метку поля из одной таблицы на соответствующую метку поля из другой таблицы, если образованная при этом связь ошибочна, удалить ее можно нажатием на расположенную на ней кнопку ![Удалить](../../images/icons/link-grid/remove-link_hover.svg).
   * ![Разгруппируемое](../../images/icons/usage-types/value_default.svg) **Разгруппируемое** — назначение выставляется полю таблицы разгруппируемых данных, к которому и будет применена разгруппировка.
   * ![Поле с наименование](../../images/icons/usage-types/active_default.svg) **Поле с наименованиями** — выставляется полю опорной таблицы, содержащему наименования, по которым будет производиться разгруппировка.
   * ![Поле с долями](../../images/icons/usage-types/source_default.svg) **Поле с долями** — выставляется полю опорной таблицы, содержащему доли или значения для расчета долей.
   * ![Порядковое поле](../../images/icons/usage-types/transaction_default.svg) **Порядковое поле** — данное назначение доступно только для полей типа *Дата/время* при использовании метода *с учетом временных колебаний и сезонности опорных данных*.

**Настройка порядка следования данных** — этот шаг мастера добавляется при использовании метода *с учетом временных колебаний и сезонности опорных данных*, настройки следующие:

* Seasonality.
   * **Seasonality period**: selection of the seasonality period length if *No seasonality* option is set, forecast configuration options by the count of time series points will be opened, and configuration by the period count will be locked.
   * **Количество рассчитываемых сезонных индексов** — в таблицу выходного порта *Показатели качества модели и сезонные индексы* для каждого индекса будет добавлено поле.
* Разгруппируемый ряд.
   * **Плотность точек редких товаров** — коэффициент может принимать значения от 0,01 до 1, чем он выше, тем больше позиций будет распознано алгоритмом в качестве слишком редких и они будут исключены из прогноза.
   * **Периодов отсутствия для прекращения позиции** — если позиция отсутствует в ряду указанное число периодов, то она исключается из прогноза.
   * **Точек отсутствия для прекращения позиции** — если позиция отсутствует в ряду указанное число точек, то она исключается из прогноза.
   * **Периодов присутствия для новой позиции** — позиции, встречающиеся не чаще указанного числа периодов, будут считаться новыми.
* Depth period.
   * **Максимальное число периодов сезонности** — для построения прогноза будет использовано указанное число последних периодов опорных данных, если задать значение `0`, будут использованы все периоды.
   * **Максимальное число точек каждого ряда** — для построения прогноза будет использовано указанное число последних точек ряда опорных данных, если задать значение `0`, будут использованы все точки.
