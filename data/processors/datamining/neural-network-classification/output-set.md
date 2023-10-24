---
description: Компонент Нейросеть (классификация) в Loginom. Выход нейросети. Индекс Джини. Апостериорная вероятность.
---
# Выход нейросети

The following fields are added in the output data set to the input one:

| Caption | Description |
|:-------|:-------|
| ![](./../../../images/icons/common/data-types/string_default.svg) Класс &#124; Прогноз | Обозначение прогнозируемого класса |
| ![](./../../../images/icons/common/data-types/integer_default.svg) ID класса &#124; Прогноз | Идентификатор прогнозируемого класса |
| ![](./../../../images/icons/common/data-types/string_default.svg) Класс &#124; Факт | Фактический класс. Выходное поле обучающего набора данных (данное поле выводится только при обучении *Нейросети*) |
| ![](./../../../images/icons/common/data-types/integer_default.svg) ID класса &#124;Факт | Идентификатор, присвоенный фактическому классу (данное поле выводится только при обучении *Нейросети*). |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Апостериорная вероятность](https://wiki.loginom.ru/articles/posterior-probabilit.html) | Вычисленная по результатам обработки вероятность принадлежности текущего набора параметров прогнозируемому классу |
| ![](./../../../images/icons/common/data-types/float_default.svg) [Индекс Джини](https://wiki.loginom.ru/articles/gini-index.html) | Показывает характер изменения одной величины относительно изменения другой |