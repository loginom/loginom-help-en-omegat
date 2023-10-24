---
description: Качество бинарной классификации в Loginom. Выбор диаграммы - ROC-кривая, PR-кривая, диаграмма точности, равновесия, роста, отклика, выигрыша. Разбивка на тестовое и обучающее множества, установка порога отсечения. Оценки классификации с помощью коэффициентов "Gini", "KS", "AUC".
---
# ![Binary Classification Assessment](./../../images/icons/common/view_types/roc_default.svg) Binary Classification Assessment

*Binary classification assessment*: charts and tables with results of the performed classification based on the [logistic regression](./../../processors/datamining/logistic-regression/README.md) are constructed in this visualizer.

The visualizer is divided into 3 areas:

* [Area of settings](#oblast-nastroek) is designated for the chart selection and configuration.
* [Область диаграммы](#oblast-diagrammy) — отображает диаграмму, выбранную в области настроек;
* [Area of classification assessments](#oblasti-otsenok-klassifikatsii) contains the tables with classification assessments.

> **Примечание**: *Область оценок классификации* можно изменить в размерах, если потянуть за линию-разделитель левой кнопкой мыши. При двойном щелчке по линии-разделителю или одинарном посередине линии, область будет скрыта. It is possible to hide the area also for *Area of settings*.

## Area of Settings

It is located in the left part of the visualizer and contains three groups of parameters: *Chart type*, *Sets* and *Cutoff*.

### Chart Type

The group contains nine switches each of which calls the definite chart in the visualizer center:

* **[ROC curve](https://wiki.loginom.ru/articles/roc-analysis.html)**: dependence of *TPR* on *FPR*.
* **PR curve**: dependence of *TPR* on *PPV*.
* **Базовые показатели** — на диаграмме строятся графики: *TPR*, *TNR*, *FPR*, *FNR*, и отображается порог отсечения.
* **Диаграмма точности** — на диаграмме строятся графики *PPV*, *NPV*, *OPR*, *OCR*, и отображается порог отсечения.
* **Диаграмма равновесия** — на диаграмме строятся графики *PPV*, *TPR*, и отображается порог отсечения.
* **% captured response**: according to the selected *Cumulative* checkbox shows as follows:
   * ![☑](./../../images/icons/ext/checkbox-states/checked_default.svg): cumulative % of events of the total number of events according to the sample size.
   * ![☐](./../../images/icons/ext/checkbox-states/unchecked_default.svg): % of events that are in the bin of the total number of events according to the bin number.
* **Lift chart**: according to the selected *Cumulative* checkbox shows as follows:
   * ![☑](./../../images/icons/ext/checkbox-states/checked_default.svg): cumulative Lift value according to the sample size.
   * ![☐](./../../images/icons/ext/checkbox-states/unchecked_default.svg): Lift values for the bin according to the bin number.
* **Response chart**: according to the selected *Cumulative* checkbox shows as follows:
   * ![☑](./../../images/icons/ext/checkbox-states/checked_default.svg): cumulative % of events in the sample according to the sample size.
   * ![☐](./../../images/icons/ext/checkbox-states/unchecked_default.svg): % of events in the bin according to the bin number.
* **Gain chart**: Gain value according to the sample size.

> **Примечание**: посмотреть расшифровку сокращений можно в статье [Метрики качества моделей бинарной классификации](https://loginom.ru/blog/classification-quality).

*Cumulative* checkbox becomes active when selecting the following charts: *% captured response*, *Lift chart* and *Response chart*. The checkbox is selected by default. When deselecting the checkbox, it becomes possible to select the bins in the drop-down list. Available values:

* **10 bins**: divide a set into 10 equal parts. This set of bins is used by default.
* **20 bins**: divide a set into 20 equal parts.
* **50 bins**: divide a set into 50 equal parts.

### Априорная доля событий
Возможно использование поправки на априорную вероятность, определенную в мастере настроек узла "Логистическая регрессия" до того, как будут получены результаты обработки данных с помощью классификатора. Для этого необходимо, чтобы флажок "Априорная доля событий" был проставлен.
Использование поправки на априорную вероятность может изменить количество правильно классифицированных событий и не-событий, что приведёт к изменению значений в таблице с оценками классификации и в матрице ошибок.
Если после проставления или снятия флажка "Априорная доля событий" никаких изменений не произошло, то необходимо проверить корректность настроек "Поправки на долю событий" в мастере настройки "Логистической регрессии". После внесения изменений в настройки узел необходимо переобучить.

### Sets

It contains two checkboxes:

* **Train**: when the checkbox is selected, it enables to display the graphic chart of the training set on the chart.
* **Test**: when the checkbox is selected, it enables to display the graphic chart of the test set on the chart.

It is possible to select only one set for the following charts: *Basic rates*, *Precision chart* and *Break even chart*.

### Cutoff

Представляет собой выпадающий список, содержащий следующие значения:

* **Из настроек узла** — используется порог, заданный узлом *Логистическая регрессия*.
* **Set** enables to set the own cutoff. The cutoff is entered in the *Value* field, or it is set by moving the slider under the field.
* **Баланс (TPR = TNR)** — задает порог отсечения, при котором *TPR* и *TNR* равны.
* **Максимум (TPR + TNR)** — задает порог отсечения, при котором сумма *TPR* и *TNR* имеет максимальное значение.
* **Точка равновесия (TPR = PPV)** — задает порог отсечения, при котором *TPR* и *PPV* равны.
* **Максимум общей точности** — задает порог отсечения, при котором значение *OCR* максимально.
* **Максимум F1 Score** — задает порог отсечения, при котором значение F<sub>1</sub> Score максимально.
* **Коэффициент Мэтьюса (MCC)** — задает порог отсечения, при котором значение MCC максимально.

## Chart Area

The area contains the following elements:

* **Header** shows the name of the displayed chart.
* **Событие** — выводит метку выходного поля и значение, являющееся событием.
* **Chart** places the chart into the center. It is always located in the area center and has the same height and width.
* **Легенда** — содержит названия серий, выводимых на диаграмме. When pressing the series in the legend, it is possible to hide or display it on the chart.

> **Примечание**: в зависимости от свободного пространства области легенда будет располагаться под диаграммой или справа от нее.

## Areas of Classification Assessments

Располагается в правой стороне экрана и содержит таблицы, описывающие результаты классификации. Data in these tables is updated with *Cutoff* change.

### Classification Scores

The table contains the columns:

* **Value** displays the name of the calculated item.
* **Sets**: the group from two columns:
   * **Обучающее** — в столбце выводятся значения оценки показателей, рассчитанных для обучающего множества.
   * **Тестовое** — в столбце выводятся значения оценки показателей, рассчитанных для тестового множества.

The table is divided into two areas and includes the following rows:

* **Оценки классификации** — эта часть содержит оценки, которые рассчитываются для всей модели и не зависят от *Порога отсечения*:
   * **AUC ROC** shows the [area under the ROC curve](https://wiki.loginom.ru/articles/auc.html).
   * **AUC PR** shows the area under the PR curve. It is defined similar to ROC curve, and Precision and Recall but not FPR and TPR are set on the axes.
   * **Gini index**: [Gini index](https://ru.wikipedia.org/wiki/Коэффициент_Джини).
   * **KS**: [Kolmogorov-Smirnov statistics](https://wiki.loginom.ru/articles/ks-test.html).
* **Порог отсечения** — в этой части расположены оценки, зависящие от *Порога отсечения*. Название порога выводится после двоеточия, например, *Порог отсечения: Заданный*:
   * **Value** shows the used *Cutoff* value.
   * **TPR (Sensitivity)** shows *TPR* value for the used cutoff.
   * **TNR (Specificity)** shows *TNR* value for the used cutoff.
   * **FPR (1-Specificity)** shows *FPR* value for the used cutoff.
   * **PPV** shows *PPV* value for the used cutoff.
   * **F1 Score** shows *F1 Score* value for the used cutoff.
   * **MCC** shows the Matthews correlation coefficient value for the used cutoff.

> **Примечание**: если множество данных отсутствует, то соответствующие ему ячейки таблиц будут серыми, и в них ничего не будет выводиться.

### Confusion Matrices

Содержит [матрицы ошибок](https://wiki.loginom.ru/articles/error-matrix.html) для обучающего и тестового множества и имеет следующий вид:

<table>
<tr><th align="left" rowspan="2">Predicted</th><th align="left" colspan="2">Actually</th><th rowspan="2" align="left">Total</th></tr>
<tr><th align="left">Event</th><th align="left">Non-event</th></tr>
 <tr><th align="left">Set</th><td>P</td><td>N</td><td></td></tr>
 <tr><td>Event</td><td>TP</td><td>FP</td><td>TP+FP</td></tr>
 <tr><td>Non-event</td><td>FN</td><td>TN</td><td>FN+TN</td></tr>
</table>

> **Примечание**: над верхним правым углом таблицы расположен переключатель ![ ](./../../images/icons/switches/roc/absolute_default.svg)/![ ](./../../images/icons/switches/roc/relative_default.svg)*Абсолютные или относительные значения*, при переключении которого данные в таблице будут представлены в процентах или в количестве записей, попавших в категорию.

### Recognized

В данной таблице показано отношение правильно распознанных событий к общему количеству событий во множествах. The table consists of two fields:

* **Set**: the set type is displayed in this column.
* **Recognized**: the number of captured response from the total number of events. It is defined using the following formula: $$\mathsf{\frac{TP+TN}{TP+TN+FP+FN}}$$

> **Примечание**: над верхним правым углом таблицы расположен переключатель ![ ](./../../images/icons/switches/roc/absolute_default.svg)/![ ](./../../images/icons/switches/roc/relative_default.svg)*Абсолютные или относительные значения*, при переключении которого данные в таблице будут представлены в процентах или в количестве записей, попавших в категорию.
