---
description: Компонент Конечные классы в Loginom. Настройка назначений столбцов.
---
# Configure Column Usage Types

* **Column Usage Type**:
   * **Не выбрано** — поле не будет участвовать в обработке, но будет включено в результирующую выборку без изменений.
   * **Входное** — значения поля будут использоваться как входные.
   * **Входное (внешнее разбиение)** — появляется, если задан порт *Внешние диапазоны квантования*. Parameters of the configured external binning are used for the input field values.
   * **Входное (замороженное)** — появляется после первого выполнения и обучения узла Конечные классы. When reconfiguring or retraining the column, only statistics will be recalculated, and the coarse classes binning will be the same for all columns. It is recommended when a user does not intend to change the coarse classes binning taking into account the new data.
   * **Выходное** — значения поля будут использоваться как выходные (целевые).


* **Input Continuous Field Settings**:
   * **Предварительное квантование** — задает начальное число интервалов квантования входного признака (начальные классы) из которых, в соответствии с настроенными параметрами, будут сформированы конечные классы. It is recommended to use it when there are many unique values in the continuous field.
   * **Включить верхние границы интервала** — верхнее значение границы будет включено в текущий интервал. If the checkbox is inactive, the upper bin bound value relates to the next bin (namely, it is included into it as the lower bound). For example, the checkbox is active: 10 <...≤ 20, the checkbox is inactive: 10 ≤...< 20.
   * **Количество интервалов** — количество интервалов предварительного квантования.


* **Input Discrete Field Settings**:
   * **Начальные классы в качестве разбиения** — уникальные значения (начальные классы) используются в качестве конечных классов. Namely, the coarse classes count will meet the unique values count at the input, maximum possible count - 1000.


* **Configure Output Field**:
   * **Настраиваемое значение "события"** — требуется выбрать значение бинарной целевой переменной, которое является событием. It is defined by the objective and logics of the performed task. Установка данного параметра влияет на интерпретацию результатов [WoE-анализа](https://wiki.loginom.ru/articles/weight-of-evidence.html). It is recommended to assign the rare class (such option is offered by default) always as an event.


* **Configure External Binning**:
   * **Идентификатор внешнего разбиения** — появляется, если выбрано назначение *Входное (внешнее разбиение)*, где разбиение берется из таблицы, а не рассчитывается алгоритмом на основе текущих данных (см. [Настройка внешнего разбиения](./configure-external-binning.md)).


* **Algorithm Settings**:
   * **Минимальная доля класса, %** — это отношение числа наблюдений, для которых значение входного признака попадает в данный класс, к общему числу наблюдений исходного набора данных (вес класса). 5% is set be default. It is not allowed to generate the classes with the weight that is less than the set one. The low class weight denotes its low significance and necessity of union with another class.
   * **Максимальное количество классов** — наибольшее допустимое количество классов, создаваемое узлом для столбца. Value 5 is set by default. This value can be changed. The high count of classes causes decrease of their weight, whereas the low one brings about decrease of information value. The count of generated classes can be less than the set value due to the class weight restriction.
   * **Равномерность** — определяет способ разбиения диапазона изменения входного признака на классы (интервалы). This parameter is equal to 0 by default, and it can vary from 0 to 1. The value that is equal to 0 provides for such partitioning into classes that maximizes the information value. When the parameter value is equal to 1, the algorithm generates classes in such a way to include roughly the same number of observations into each of them. Thus, in the first case, the indicator significance is increased, whereas in the second case, interpretability of the coarse classes is increased.
