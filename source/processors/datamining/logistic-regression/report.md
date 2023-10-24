---
description: Компонент Логистическая регрессия в Loginom. Сводка. Критерии Акаике, Байеса, Ханна-Квина. P-значение модели.
---
# Сводка

Переменные, которые отдает порт *Сводка*, представлены в таблице:

| Переменная (Метка) | Описание |
|:-------|:-------|
| Всего [примеров](https://wiki.loginom.ru/articles/training-sample.html) | Общее число примеров, поданных на вход [модели](https://wiki.loginom.ru/articles/taught-model.html) |
| Всего отобранных примеров | Число примеров, используемое в модели |
| Примеров в [обучающем множестве](https://wiki.loginom.ru/articles/training-set.html) | Число примеров, на котором обучается модель |
| [Среднеквадратическая ошибка](https://wiki.loginom.ru/articles/standard-estimation-error.html) на обучающем множестве | Ошибка обучения, показывающая [точность](https://wiki.loginom.ru/articles/precision.html) настройки модели на обучающем множестве  |
| Процент ошибок [классификации](https://wiki.loginom.ru/articles/classification.html) на обучающем множестве | Процент неправильного отнесение объектов (наблюдений, событий) к одному из заранее известных классов |
| Средняя перекрестная [энтропия](https://wiki.loginom.ru/articles/maximum-entropy-method.html) на обучающем множестве | Количественная оценка разницы между двумя распределениями вероятностей |
| Порог отсечения при [обучении](https://wiki.loginom.ru/articles/training.html) модели | Расчетное значение уравнения [регрессии](https://wiki.loginom.ru/articles/regression.html) (изменяется от 0 до 1) |
| -2 Логарифма [функции правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html) | Функция, которая определяет [вероятность](https://wiki.loginom.ru/articles/prior-probability.html) появления значений параметров  регрессионной модели для заданного значения [независимой переменной](https://wiki.loginom.ru/articles/input-variable.html) *x* |
| [Коэффициент детерминации](https://wiki.loginom.ru/articles/coefficient-of-determination.html) | Величина связи между переменными регрессионной модели (изменяется от 0 до 1) |
| [Скорректированный коэффициент детерминации](https://wiki.loginom.ru/articles/coefficient-determ-adj.html) | Величина связи между переменными регрессионной модели (изменяется от 0 до 1). Отличается от нескорректированного коэффициента детерминации тем, что скорректированный коэффициент может уменьшаться при введении в регрессионную модель переменных, не оказывающих существенного влияния на [зависимую переменную](https://wiki.loginom.ru/articles/output-variable.html). |
| [Хи-квадрат](https://wiki.loginom.ru/articles/chi-square-test.html) | [Критерий согласия](https://wiki.loginom.ru/articles/fitting-criterion.html) для [проверки гипотезы](https://wiki.loginom.ru/articles/hypotesis-testing.html) о законе распределения исследуемой случайной величины |
| [Число степеней свободы](https://wiki.loginom.ru/articles/degrees-of-freedom.html) модели | Число независимо варьируемых значений [признака](https://wiki.loginom.ru/articles/attribute.html) |
| [Информационный критерий Акаике](https://wiki.loginom.ru/articles/aic.html) | Критерий используется для сравнения моделей с разным числом параметров, когда требуется выбрать наилучший набор [объясняющих](https://wiki.loginom.ru/articles/input-variable.html) переменных |
| [Информационный критерий Акаике скорректированный](https://wiki.loginom.ru/articles/aicc.html) | Модифицированный критерий Акаике, применяемый для [выборок](https://wiki.loginom.ru/articles/sample.html) малого размера, когда отношение числа содержащихся в ней примеров к числу параметров модели меньше 40 |
| [Информационный критерий Байеса](https://wiki.loginom.ru/articles/bic.html) | Критерий основан на использовании [функции правдоподобия](https://wiki.loginom.ru/articles/plausibility-function.html) и тесно связан с информационным критерием Акаике |
| [Информационный критерий Ханнана-Квина](https://wiki.loginom.ru/articles/hq.html) | Наряду с критерием Акаике и критерием Байеса, выдается в результатах оценки моделей с [дискретными](https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F) и ограниченными зависимыми переменными |
| [P-значение модели](https://wiki.loginom.ru/articles/p-value.html) | Оценка точности модели. Представляет собой вероятность того, что значение проверочной статистики используемого критерия, вычисленное по [выборке](https://wiki.loginom.ru/articles/sample.html), превысит установленное p-значение. |