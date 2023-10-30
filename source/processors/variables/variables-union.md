---
description: Компонент Соединение (переменные) в Loginom. Общие сведения. Объединение двух или более наборов переменных в один. Мастер настройки. Пример. 
---
# ![Соединение-переменные](./../../images/icons/components/unionvariables_default.svg) Соединение (переменные)

Компонент предназначен для объединения двух или более наборов переменных в один набор.

В случае, когда имена переменных из разных наборов совпадают, в выходном наборе имена таких переменных будут дополнены уникальными номерами. Если имя переменной заканчивается на цифру, то в таких случаях в выходном наборе имена таких переменных пронумеруются по возрастающей.

## Порты

### Вход

* ![Входные переменные](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Входные переменные** — необязательный набор переменных;
* ![Добавляемые переменные](./../../images/icons/app/node/ports/inputs/variable_inactive.svg) **Добавляемые переменные** — обязательный набор переменных;
* ![Еще порт](./../../images/icons/app/node/ports/add/add_inactive_default.svg) **Добавление еще одного порта** — создает новые порты входа для последующих наборов переменных.

### Выход

* ![Выходные переменные](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Выходные переменные** — новый набор переменных.

%spoiler%Пример:%spoiler%

Имеется три набора переменных:

* Набор A:

|Имя|Метка|Значение|
|:--|:--|--:|
|a0|a|10|
|b|b|12|

* Набор B:

|Имя|Метка|Значение|
|:--|:--|--:|
|a0|a|20|
|c|c|18|

* Набор C:

|Имя|Метка|Значение|
|:--|:--|--:|
|a1|a|30|
|b|b|25|

Последовательно подключим их к узлу соединения, и на выходе получим такой список переменных (столбец "Примечание" приведен для наглядности, в результирующий набор он включен не будет):

|Имя|Метка|Значение|Примечание|
|:--|:--|--:|:--|
|a0|a|10|из набора A, переменная a0|
|b|b|12|из набора A, переменная b|
|a1|a|20|из набора B, переменная a0|
|c|c|18|из набора B, переменная c|
|a2|a|30|из набора C, переменная a1|
|b_1|b|25|из набора C, переменная b|

Как видно вторая переменная `b` была переименована в `b_1`, в то время как вторая переменная `a0` была переименована в `a1`, и `a1` была переименована в `a2` так как после переименования `a0` в `a1` уже она являлась дублем.

%/spoiler%