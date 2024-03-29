---
description: Визуализатор "Конечные классы" в Loginom. Справка по решению задач по преобразованию данных, сокращению размерности данных, восстановлению пропусков, борьбе с выбросами и аномалиями, упрощению описаний исследуемых объектов.
---
# ![](./../../images/icons/common/view_types/coarseclasses_default.svg) Конечные классы

Визуализатор Конечные классы предназначен для следующих задач:

* преобразование непрерывных и дискретных входных полей, используемых для построения моделей [бинарной классификации](https://wiki.loginom.ru/articles/binary-classification.html), путем [квантования](https://wiki.loginom.ru/articles/binning.html) на основе метода совокупности доказательств или [WoE-анализа](https://wiki.loginom.ru/articles/weight-of-evidence.html) (weights of evidence, WoE);
* сокращение размерности данных за счет исключения признаков с низкой значимостью, снижения разнообразия значений признаков;
* восстановление пропусков, когда пропуски образуют отдельную метку интервала квантования или объединяются с соседним, близким по значению WoE-индекса;
* борьба с выбросами и экстремальными значениями — формирование меток интервала квантования при дискретизации непрерывного поля или объединение редких уникальных значений в одну категорию;
* упрощение описания исследуемых объектов.

Визуализатор включает в себя:

* [Список входных столбцов](#spisok-vkhodnykh-stolbtsov);
* [Область начальных классов](#oblast-nachalnykh-klassov);
* [Область конечных классов](#oblast-konechnykh-klassov).

>**Примечание:** визуализатор *Конечные классы* может использоваться только с узлом [*Конечные классы*](./../../processors/preprocessing/coarse-classes.md).

## Интерфейс

### Операции
Для *Списка входных столбцов* доступна операция ![](./../../images/icons/common/toolbar-controls/fields-list_default.svg)**Скрыть боковую панель**. Нажатие на кнопку скрывает панель со списком входных столбцов, повторное нажатие возвращает панель.

*Область конечных классов* можно представить в виде [таблицы](#tablitsa) ![](./../../images/icons/common/toolbar-controls/table-view_default.svg) **Показать таблицу конечных классов** *(Alt+One*) или в виде [диаграмм](#diagramma) ![](./../../images/icons/common/toolbar-controls/chart_default.svg) **Показать диаграммы конечных классов** (*Alt+Two*).

Также имеется переключатель ![](./../../images/icons/switches/roc/relative_default.svg)**Доли событий** / ![](./../../images/icons/switches/roc/absolute_default.svg)**Количество событий** — для выбора отображения абсолютных и относительных значений.

### Список входных столбцов

* Статус поля:
  * ![](./../../images/icons/common/toolbar-controls/unlocked_default.svg) **Разморожено** — показывает, что данное поле может быть использовано в процессе формирования конечных классов при переобучении модели.
  * ![](./../../images/icons/common/toolbar-controls/locked_default.svg) **Заморожено** — показывает, что при переобучении данное поле не будет использоваться.
  
> **Примечание:** статус поля изменить нельзя, он только отражает настройки в соответствующем узле [*Конечные классы*](./../../processors/preprocessing/coarse-classes.md).

* Метка столбца.
* Оцененный уровень значимости IV (см. рисунок 1).

![Список входных столбцов.](./readme-1.png)

### Область начальных классов

Начальные классы представлены в виде одного варианта отображения — диаграммы.

При наведении курсора мыши на диаграмму в правом верхнем углу появляется кнопка ![](./chart-buttons-3.svg), нажав на которую, диаграмма развернется на всю область визуализатора.

Диаграмма начальных классов может представлять:

* Долю;
* [WoE (вес доказательства)](https://wiki.loginom.ru/articles/weight-of-evidence.html);
* [IV (информационный индекс)](https://wiki.loginom.ru/articles/information-value.html).

Выбор отображения переключается кнопками (см. рисунок 2) в нижней части диаграммы.

![Вариант отображения диаграммы.](./charts-1.png)

При увеличении диаграммы во всю область визуализатора, появляется выпадающий список, в нем можно выбрать поле, для которого будет построена диаграмма (см. рисунок 3).

При наведении на столбец диаграммы появляется всплывающее окно, которое отображает значение поля и значение WoE/IV/Доли (см. рисунок 3).

![Диаграмма начальных классов.](./charts-2.png)

### Область конечных классов

Конечные классы отображаются в виде таблицы или диаграммы WoE (см. рисунок 4) / диаграммы IV. Диаграмма IV может отображать:
  * Количество (см. рисунок 5);
  * Доля (см. рисунок 6).

#### Таблица

При установке переключателя в положение *Количество событий*, таблица будет состоять из следующих полей:

|Поле|Описание|
|:--------------------|:----------|
|№|Номер класса|
|Метка|Совокупность названий начальных классов, которые входят в конечный класс|
|Нижняя|Нижняя граница интервала|
|Верхняя|Верхняя граница интервала|
|События|Одно из состояний бинарной целевой переменной класса|
|Не-события|Противоположное состояние бинарной целевой переменной класса|
|Всего|Сумма событий и не-событий класса|
|Доля|Доля конечного класса от общего объема записей|
|Вес доказательства|Коэффициент WoE|
|[Инф. индекс](https://wiki.loginom.ru/articles/information-value.html)|Величина, определяющая значимость признака в модели [бинарной классификации](https://wiki.loginom.ru/articles/binary-classification.html)|

В нижней части таблицы отображается сумма:

* Событий всех классов;
* Не-событий всех классов;
* Событий и Не-событий всех классов;
* Информационных индексов всех классов.

При установке переключателя в положение *Доли событий*, вместо полей *События* и *Не-события* будут отображаться поля *Доля событий* и *Доля не-событий*.

При этом в нижней части таблицы будет отображаться:

* Доля суммы Событий всех классов ;
* Доля суммы Не-событий всех классов;
* Сумма Событий и Не-событий всех классов;
* Сумма информационных индексов всех классов.


#### Диаграмма

При наведении курсора мыши на диаграмму в правом верхнем углу появляется кнопка ![](./chart-buttons-3.svg), позволяющая развернуть диаграмму на всю область визуализатора.

![Диаграмма WoE.](./charts-3.png)

Диаграммы Количество и Доля переключаются между собой кнопками ![](./chart-buttons-4.png) ![](./chart-buttons-5.png).

![Диаграмма Доля.](./charts-4.png)

![Диаграмма Количество.](./charts-5.png)

При наведении курсора мыши на столбец диаграммы всплывает окно (см. рисунок 7), в котором отображается:

* Для диаграммы WoE:
  * значение WoE.
* Для диаграммы IV:
  * значение IV.
  * количество Событий.
  * количество Не-событий.

![Диаграммы WoE и IV.](./charts-6.png)