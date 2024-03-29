---
description: Форматирование данных OLAP куба в Loginom. Руководство по работе с интерфейсом, настройке оптимального варианта отображения данных куба. Установка разделителей, денежных знаков, переключение на экспоненциальную форму.
---
# ![Форматирование](./../../images/icons/viewers/cube/cases/case-format_default.svg) Форматирование

Позволяет настроить формат отображения фактов и заголовков измерений в Кубе, выбрав нужный факт или заголовок в соответствующей вкладке в верхнем левом углу окна Форматирование (см. рисунок 1).

![Окно форматирования](./cube-format-fact.png)

На вкладке *Факты* доступны следующие опции форматирования:

* ![Переключатель](./../../images/icons/ext/checkbox-states/checked_default.svg) **Отрицательные красным** — отрицательные значения будут отображаться красным цветом.
* **Выравнивание** — позволяет настроить выравнивание значений в ячейках:
  * **По горизонтали**:
    * ![По левому краю](./../../images/icons/common/toolbar-controls/v-align-left_default.svg) **По левому краю**.
    * ![По правому краю](./../../images/icons/common/toolbar-controls/v-align-right_default.svg) **По правому краю**.
    * ![По центру](./../../images/icons/common/toolbar-controls/v-align-center_default.svg) **По центру**.
* ![Переключатель](./../../images/icons/ext/checkbox-states/checked_default.svg) **Форматирование**:
  * **Число десятичных знаков** — количество отображаемых знаков после запятой.
  * **Разделитель разрядов** — группировка цифр по разрядам.
  * **Денежный знак** — позволяет добавить к отображаемому числу нужный знак.
  * **Экспоненциальная форма** — отображение числа в нормализованной форме (степени числа 10).
  
  * ![Переключатель](./../../images/icons/ext/checkbox-states/checked_default.svg) **Особый формат** — позволяет задать собственный формат отображения фактов, в случае если функционала стандартного форматирования недостаточно. К примеру, можно добавить отображение какого-либо символа.

    >**Примечание:** если форматирование задается через параметр *Особый формат* остальные параметры из группы *Форматирование* становятся недоступными для редактирования.

  В этом же окне выводится текущее настроенное отображение:
  * **Пример** — позволяет ввести пример значения, чтобы проверить корректность настроенного форматирования.
  * **Результат** — итоговое форматирование, применённое к примеру.

Форматирование можно применять одновременно к нескольким фактам. Множественное выделение осуществляется с помощью указателя мыши с зажатой клавишей Ctrl или Shift.

Во вкладке *Измерения* доступны опции форматирования заголовков измерений. Настройка форматирования аналогична *Фактам*, кроме выделения отрицательных значений красным цветом.

Для отображения настроенного форматирования в *Кубе* необходимо нажать кнопку *Применить*.