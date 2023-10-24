---
description: Компонент Нейросеть (классификация) в Loginom. Сводка.
---
# Сводка

Переменные, которые отдает порт *Сводка*, представлены в таблице:

| Переменная (Метка) | Описание |
|:-------|:-------|
| ![](./../../../images/icons/common/data-types/integer_default.svg) Всего [примеров](https://wiki.loginom.ru/articles/training-sample.html) | Общее число примеров, поданных на вход [модели](https://wiki.loginom.ru/articles/taught-model.html) |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Всего отобранных примеров | Число примеров, используемое в модели |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Примеров в [обучающем множестве](https://wiki.loginom.ru/articles/training-set.html) | Число примеров, на котором обучается модель |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Среднеквадратическая ошибка](https://wiki.loginom.ru/articles/standard-estimation-error.html) на обучающем множестве | Ошибка обучения, показывающая [точность](https://wiki.loginom.ru/articles/precision.html) настройки модели на обучающем множестве  |
| ![](./../../../images/icons/common/data-types/float_default.svg) Процент ошибок [классификации](https://wiki.loginom.ru/articles/classification.html) на обучающем множестве | Процент неправильного отнесение объектов (наблюдений, событий) к одному из заранее известных классов |
| ![](./../../../images/icons/common/data-types/float_default.svg) Средняя перекрестная [энтропия](https://wiki.loginom.ru/articles/maximum-entropy-method.html) на обучающем множестве | Количественная оценка разницы между двумя распределениями вероятностей |
| ![](./../../../images/icons/common/data-types/float_default.svg) Входное поле &#124; [G-тест](https://ru.qwe.wiki/wiki/G-test) | Значение статистики G-теста |
| ![](./../../../images/icons/common/data-types/integer_default.svg) Входное поле &#124; [Число степеней свободы](https://wiki.loginom.ru/articles/degrees-of-freedom.html) G-теста | Количество независимых элементов данных, которые используются при оценке статистической характеристики |
| ![](./../../../images/icons/common/data-types/float_default.svg) Входное поле &#124; [P-значение](https://ru.wikipedia.org/wiki/P-%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D0%B5) G-теста |  Определяемое предыдущими двумя показателями P-значение. Меньшие P-значения соответствуют "более значимым" факторам |                          
| ![](./../../../images/icons/common/data-types/float_default.svg) Входное поле &#124; [Взаимная информация](https://ru.wikipedia.org/wiki/%D0%92%D0%B7%D0%B0%D0%B8%D0%BC%D0%BD%D0%B0%D1%8F_%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F) | Объем взаимной информации между указанными факторами (в битах). Большие значения взаимной информации соответствуют "более значимым" факторам |
