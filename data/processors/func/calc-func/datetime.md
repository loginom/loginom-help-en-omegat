# Function Date/Time

## AddDay

**AddDay(Date, Count)**

* Date - argument of the Date/Time type.
* Count - argument of the integer type.

Function returns the Date argument value, increased by the specified Number of days. The number can also be negative. In this case, the function will return the date to the given number of days before the specified date.

## AddMonth

**AddMonth(Date, Count)**

* Date - argument of the Date/Time type.
* Count - argument of the integer type.

Function returns the Date argument value, increased by the specified Number of months. The number can also be negative. In this case, the function will return the date to the given number of months before the specified date.

If the specified day of the month exceeds the last day of the resulting month, the function will set the date to the last day of the resulting month.

## AddQuarter

**AddQuarter(Date, Count)**

* Date - argument of the Date/Time type.
* Count - argument of the integer type.

Function returns the Date argument value, increased by the specified Number of quarters. The number can also be negative. In this case, the function will return the date to the given number of quarters before the specified date.

If the specified day of the month exceeds the last day of the month of the resulting quarter, the function will set the date to the last day of the month of the resulting quarter.

## AddWeek

**AddWeek(Date, Count)**

* Date - argument of the Date/Time type.
* Count - argument of the integer type.

Function returns the Date argument value, increased by the specified Number of weeks. The number can also be negative. In this case, the function will return the date to the given number of weeks before the specified date.

## AddYear

**AddYear(Date, Count)**

* Date - argument of the Date/Time type.
* Count - argument of the integer type.

Function returns the Date argument value, increased by the specified Number of years. The number can also be negative. In this case, the function will return the date to the given number of years before the specified date.

## DateTimeToStr

**DateTimeToStr(Date\_time [, Format\_of date [, Format\_of time]])**

* Date_time - expression of the date/time type..
* Date_format - optional parameter date format in terms of D, M, Y.
* Time_format - optional parameter time format in terms of H, N, S, Z.

Returns the string representation of the Date\_time argument.
Examples of the date format:
"DD.MM.YY" - converts the date into the "day.month.year" format ("25.12.04")
"MM/DD/YYYY" - converts the date into the "month.day.year" format ("12/25/2004")
Examples of the time format:
"H:NN" - converts the time into the "hours:minutes" format ("9:53")
"HH:NN:SS" - converts the time into the "hours:minutes:seconds" format ("09:05:53")

## DateToStr

**DateToStr(Date [, Format\_of date])**

* Date - expression of the date/time type.
* Date_format - optional parameter date format in terms of D, M, Y.

Returns the string representation of the Date argument
Examples of the date format::
"DD.MM.YY" - converts the date into the "day.month.year" format ("25.12.04")
"MM/DD/YYYY" - converts the date into the "month.day.year" format ("12/25/2004")

## Day

**Day(Date)**

* Date - the date type field.

Returns the day according to the specified date.

## DayOfWeek

**DayOfWeek(Date)**

* Date - the date type field.

Returns the week day according to the specified date.

## DaysBetween

**DaysBetween(Date1, Date2)**

* Date1, Date2 - the date type fields.

Returns the total number of days between two dates.

## EncodeDate

**EncodeDate(Year, Month, Day)**

* Year - year in the form of number,
* Month - month in the form of number,
* Day - day in the form of number.

Function returns the date formed from the specified arguments.

## EncodeDateTime

**EncodeDateTime(Year, Month, Day, Hours, Minutes, Seconds)**

* Year - year in the form of number,
* Month - month in the form of number,
* Day - day in the form of number,
* Hours - hours in the form of number,
* Minutes - minutes in the form of number,
* Seconds - seconds in the form of number.

Function returns the date and time formed from the specified arguments.

## EncodeTime

**EncodeTime(Hours, Minutes, Seconds)**

* Hours - hours in the form of number,
* Minutes - minutes in the form of number,
* Seconds - seconds in the form of number.

Function returns the time formed from the specified arguments.

## Hour

**Hour(DateTime)**

* DateTime - the date/time type field.

Returns the hour according to the specified date/time.

## Minute

**Minute(DateTime)**

* DateTime - the date/time type field.

Returns minutes according to the specified date/time.

## Month

**Month(Date)**

* Date - the date type field.

Returns the month according to the specified date.

## MonthsBetween

**MonthsBetween(Date1, Date2)**

* Date1, Date2 - the date type fields.

Returns the total number of months between two dates.

## Now

**Now()**

* Arguments are absent.

Returns the current date and time.
As the current date and time are the time of the expression calculation that is calculated each time when getting the expression value. For example, when viewing result in the tabular form or executing data export, it is generally recommended to activate this option if there is "Cache the calculated expression values" expression parameter.

## Second

**Second(DateTime)**

* DateTime - the date/time type field.

Returns seconds according to the specified date/time.

## StartOfTheWeek

**StartOfTheWeek(Date)**

* Date - argument of the Date/Time type.

Function returns the date of the specified week start according to ISO 8601 standard subject to which the week starts from Monday and ends with Sunday.

## StrToDate

**StrToDate(Argument [, Format])**

* Argument - the string expression containing date/time
* Format - optional parameter date/time format in terms of D, M, Y, H, N, S, Z

Function converts the string containing the date into the "Date/Time" format.
The format examples:
"DD.MM.YY" - means that the Argument contains strings of the following type: "25.12.04";
"DD/MM/YY/HH:NN:SS" - means that the Argument contains strings of the following type: "25/12/04/12:44:54";

## Today

**Today()**

* Arguments are absent.

Returns the current date.
Так как текущая дата - это дата вычисления выражения, которое считается каждый раз при получении значения этого выражения, например, при просмотре результата в виде таблицы или при выполнении экспорта данных, то можно, при наличии параметра выражения "Кэшировать рассчитанные значения выражения" включить эту опцию.

## Week

**Week(Дата)**

* Date - the date type field.

Возвращает номер недели в году по заданной дате в соответствии со стандартом ISO 8601, по которому неделя начинается с понедельника и заканчивается воскресеньем. Первая неделя года начинается с понедельника, для дней с 1 января по первый понедельник возвращается номер последней недели предыдущего года.

## Year

**Year(Дата)**

* Date - the date type field.

Возвращает год по заданной дате.

## YearsBetween

**YearsBetween(Дата1, Дата2)**

* Date1, Date2 - the date type fields.

Возвращает полное количество лет между двумя датами.
