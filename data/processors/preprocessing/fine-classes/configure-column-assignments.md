# Configure Column Usage Types

* **Column Usage Type**:
   * Not selected: the field will not be included into processing but it will be included into the resulting sample without changes.
   * Input: the field values will be used as the input ones.
   * Input (external binning): it appears if *External binning bins* port is set. Parameters of the configured external binning are used for the input field values.
   * Input (locked): it appears upon the first execution and training of the Coarse Classes node. When reconfiguring or retraining the column, only statistics will be recalculated, and the coarse classes binning will be the same for all columns. It is recommended when a user does not intend to change the coarse classes binning taking into account the new data.
   * Output: the field values will be used as the output ones (target).


* **Input Continuous Field Settings**:
   * Prequanting sets the initial quantizing interval count of the input indicator (fine classes) from which the coarse classes will be generated according to the set parameters. It is recommended to use it when there are many unique values in the continuous field.
   * Include upper interval bounds: the upper bound value will be included into the current interval. If the checkbox is inactive, the upper interval bound value relates to the next interval (namely, it is included into it as the lower bound). For example, the checkbox is active: 10 <...≤ 20, the checkbox is inactive: 10 ≤...< 20.
   * Interval count means the prequanting interval count.


* **Input Discrete Field Settings**:
   * Fine classes as binning: the unique values (fine classes) are used as coarse classes. Namely, the coarse classes count will meet the unique values count at the input, maximum possible count - 1000.


* **Configure Output Field**:
   * Custom "event" value: it is required to select the value of the binary target variable that is an event. It is defined by the objective and logics of the performed task. Selection of this parameter affects interpretation of the [WoE analysis](https://wiki.loginom.ru/articles/coefficient-woe.html) results. It is recommended to assign the rare class (such option is offered by default) always as an event.


* **Configure External Binning**:
   * External binning identifier: it appears if "Input (external binning)" usage type is selected, when the binning is taken from the table, and it is not calculated using the algorithm based on the current data (refer to [Configure External Binning](./configuring-an-external-partition.md)).


* **Algorithm Settings**:
   * Minimum class weight, %. Вес класса — это отношение числа наблюдений, для которых значение входного признака попадает в данный класс, к общему числу наблюдений исходного набора данных. 5% is set be default. It is not allowed to generate the classes with the weight that is less than the set one. Малый вес класса указывает на его низкую значимость и целесообразность объединения с некоторым другим классом.
   * Maximum class count. Наибольшее допустимое количество классов, создаваемое обработчиком для столбца. 5 value is set by default. Это значение можно изменить: большое число классов приводит к уменьшению их веса, а малое — к уменьшению информационного индекса. Число сформированных классов может оказаться меньше заданного значения из-за ограничения по весу классов.
   * Uniformity. Определяет способ разбиения диапазона изменения входного признака на классы (интервалы). This parameter is equal to 0 by default, and it can vary from 0 to 1. Значение, равное 0, обеспечивает такое разбиение на классы, которое максимизирует информационный индекс. При значении параметра, равном 1, алгоритм формирует классы таким образом, чтобы в каждый из них попало примерно одинаковое число наблюдений. Таким образом, в первом случае повышается значимость признака, а во втором — интепретируемость конечных классов.
