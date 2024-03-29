---
description: Справка по прочим функциям Loginom. Работа с функциями CRC32, CreateGUID, Data, DisplayName, MD5, Null, Random, RowCount, RowNum, SHA1. Описание функций и используемых аргументов.
---
# Прочие функции

## CRC32

**CRC32(Строка)**

* Строка - строка, для которой расcчитывается CRC32 значение.

Функция возвращает число - значение CRC32 рассчитанное от заданной строки.
Расчеты производятся над последовательностью символов Строки в кодировке UTF-8.

## CreateGUID

**CreateGUID([Формат = "B", ВерхнийРегистр = True])**

* Формат - способ строкового представления GUID ("N", "D", "B", "P").
* ВерхнийРегистр - аргумент логического типа, определяющий регистр символов шестнадцатеричных цифр.

Функция возвращает строковое представление GUID в указанном формате:
  "N" - 32 цифры;
  "D" - 32 цифры, разделенные дефисами;
  "B" - 32 цифры, разделенные дефисами и заключенные в фигурные скобки;
  "P" - 32 цифры, разделенные дефисами и заключенные в круглые скобки;
Если формат не указан, то используется формат "B". По умолчанию шестнадцатеричные цифры записываются в верхнем регистре.
Так как GUID будет генерироваться каждый раз при получении значения выражения, например, при просмотре результата в виде таблицы или при выполнении экспорта данных, то в общем случае рекомендуется при наличии параметра выражения "Кэшировать" включить эту опцию.

## Data

**Data("ИмяСтолбца",НомерСтроки)**

* ИмяСтолбца - имя столбца, данные которого необходимо получить
* НомерСтроки - номер строки, значение которой необходимо получить

Функция возвращает значение поля ИмяСтолбца взятое из строки НомерСтроки.
При использовании данной функции необходимо в окне "Параметры выражения" установить флаг "Кэшировать рассчитанные значения выражения".

## DisplayName

**DisplayName(["Имя"])**

* Имя - имя поля, переменной или выражения

Функция возвращает метку (отображаемое имя) по имени поля, переменной или выражения.
Если функция вызывается без аргументов, то она возвращает метку текущего вычисляемого выражения.

## MD5

**MD5(Строка)**

* Строка - строка, для которой расcчитывается MD5 значение.

Функция возвращает HEX значение MD5 рассчитанное от заданной строки.
Расчеты производятся над последовательностью символов Строки в кодировке UTF-8.

## Null

**Null()**

* Аргументы отсутствуют.

Функция возвращает пустое значение.

## Random

**Random()**

* Аргументы отсутствуют.

Возвращает псевдослучайное равномерно распределенное число, большее или равное 0 и меньше 1.
Так как случайное число будет генерироваться каждый раз при получении значения выражения, например, при просмотре результата в виде таблицы или при выполнении экспорта данных, то в общем случае рекомендуется при наличии параметра выражения "Кэшировать" включить эту опцию.

## RowCount

**RowCount()**

* Аргументы отсутствуют.

Функция возвращает число строк в источнике данных.

## RowNum

**RowNum()**

* Аргументы отсутствуют.

Функция возвращает номер текущей записи источника данных.

## SHA1

**SHA1(Строка)**

* Строка - строка, для которой раcсчитывается SHA1 значение.

Функция возвращает HEX значение SHA1 рассчитанное от заданной строки.
Расчеты производятся над последовательностью символов Строки в кодировке UTF-8.
