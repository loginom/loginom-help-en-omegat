# Configure Coarse Classes

To start assessment and adjustment of results of fine and coarse classes generation, it is required to press *Activate* button that is located to the right from *Input status* field. To enable the editing mode, ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_manual-editing_default.svg) *Edit binning* button is used. To save introduced changes, it is required to press *Apply* button if it is not required to save changed settings, press *Cancell* button.

The following commands are available on the toolbar:

* ![](./../../../images/icons/common/toolbar-controls/fields-list-settings_default.svg) **Hide side bar**: press this button to hide the bar with a list of input columns, press it again to return the bar.
* ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_manual-editing_default.svg) **Edit binning**: the fields used for editing of the coarse classes parameters become available by pressing this button.
* ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_merge-left_default.svg) **Merge with previous**: enables to merge the coarse class selected in the chart or detailing table with the previous (located more to the left) class (the button is available in the binning editing mode, namely, when ![Edit binning](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_manual-editing_default.svg) button has been pressed).
* ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_merge-right_default.svg) **Merge with next**: enables to merge the coarse class selected in the chart or detailing table with the next (located more to the right) class (the button is available in the binning editing mode).
* ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_table-view_default.svg) **Show coarse class table**: the coarse class area will be represented in the table form (it can be also called by pressing *Alt+One*).
* ![](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_chart_default.svg) **Показать диаграммы конечных классов** — область конечных классов будет представлена в виде диаграмм (*Alt+Two*);
* ![](./../../../images/icons/switches/roc/relative_default.svg)**Доли событий** / ![](./../../../images/icons/switches/roc/absolute_default.svg)**Количество событий** — переключение для отображения абсолютных и относительных значений.

All listed commands are also available in the contex menu (the right mouse button). Besides, the following commands are also available in the context menu:
* **Bound split**: enables to set the new additional bound and, thus, increase the coarse classes count by 1 (this operation is opposed to *Merge with next/Merge with previous* commands).
* **Lock selected**: enables to change the field status to *Locked* (thus, the field will not be used during retraining). The command is also available by pressing ![Locked](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_locked_default.svg) button to the left of each input column.
* **Unlock selected**: enables to change the field status to *Unlocked* (thus, the field can be used in the process of the coarse classes generation while retraining). The command is also available by pressing ![Unlocked](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_unlocked_default.svg) button to the left of each input column.

The following parameters can be edited:

* ** Coarse сlasses**:
   * **Минимальная доля, %** — это отношение числа наблюдений, для которых значение входного признака попадает в данный класс, к общему числу наблюдений исходного набора данных (вес класса). 5% is set be default. It is not allowed to generate the classes with the weight that is less than the set one. The low class weight denotes its low significance and necessity of union with another class.
   * **Максимальное количество** — наибольшее допустимое количество классов, создаваемое узлом для столбца. Value 5 is set by default. This value can be changed. The high count of classes causes decrease of their weight, whereas the low one brings about decrease of information value.
   * **Установить...** — показывает зависимость [IV](https://wiki.loginom.ru/articles/information-value.html) от количества классов и позволяет выбрать их число для настройки максимального количества. После нажатия на кнопку *Рассчитать* пересчитываются показатели в соответствии с выбранным количеством классов.

* **Optimization**:
   * **Равномерность, %** — определяет способ разбиения диапазона изменения входного признака на классы (интервалы). This parameter is equal to 0 by default, and it can vary from 0 to 1. The value that is equal to 0 provides for such partitioning into classes that maximizes the information value. When the parameter value is equal to 1, the algorithm generates classes in such a way to include roughly the same number of observations into each of them. Thus, in the first case, the indicator significance is increased, whereas in the second case, interpretability of the coarse classes is increased.


   Any introduced changes are immediately displayed in the chart and detailing table.

   It is possible to sort and filter records in the *List of input columns*. Для этого нужно открыть выпадающее меню, нажав кнопку ![Открыть выпадающее меню](./../../../images/icons/common/toolbar-controls/toolbar-controls_18x18_down_default.svg), которая появляется при наведении курсора на заголовок *Столбец* или *IV*.
