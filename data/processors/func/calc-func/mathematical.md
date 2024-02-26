---
description: Справка по математическим функциям Loginom. Работа с функциями Abs, AbsErr, ArcCos, ArcSin, ArcTan, Cos, Exp, Factorial, Frac, Int, Ln, Log, Mod, Pi, Pow, RelErr, Round, Sign, Sin, Sqrt, Tan. Описание функций и используемых аргументов.
---
# Mathematical Functions

## Abs

**Abs(Argument)**

* Argument - numeric expression.

Returns the absolute value of argument.

## AbsErr

**AbsErr(Argument1, Argument2)**

* Arguments - any numeric expressions.

Returns the absolute error of two arguments.

## ArcCos

**ArcCos(Value)**

* Value - the cosine value for which it is required to determine the angle.

Returns the value arccosine, namely, the angle in radians the cosine of which is equal to the Value.

## ArcSin

**ArcSin(Value)**

* Value - the sinus value for which it is required to determine the angle.

Returns the value arcsine, namely, the angle in radians the sinus of which is equal to the Value.

## ArcTan

**ArcTan(Value)**

* Value - the tangent value for which it is required to determine the angle.

Returns the value arctangent, namely, the angle in radians the tangent of which is equal to the Value.

## Cos

**Cos(Angle)**

* Angle - angle value in radians.

Returns cosine of the set angle.

## CumulativeSum

**CumulativeSum("FieldName" [, "GroupFieldName"])**

* FieldName: the field by which it is required to get the cumulative sum.
* GroupFieldName: the field by which data is grouped. This parameter is not the required one. If this parameter is specified, the cumulative sums are calculated within groups.

Function returns the cumulative sum by the field.

Note: FieldName and GroupFieldName are string values, namely, explicitly set FieldName and GroupFieldName must be indicated in quotation marks.
For example: CumulativeSum("COL1", "COL2")
## Exp

**Exp(Degree)**

* Degree - numeric expression.

Returns e constant in the given degree.

## Factorial

**Factorial(Argument)**

* Argument - integer positive numeric expression.

Returns the argument factorial.

## Frac

**Frac(Argument)**

* Argument - numeric expression.

Returns the fractional part of the Argument.

## Int

**Int(Argument)**

* Argument - numeric expression.

Returns the integer part of the Argument.

## IsInfinite

**IsInfinite(Argument)**

* Argument - numeric expression.

It defines whether the passed value is an infinite number.

## Ln

**Ln(Argument)**

* Argument - integer positive numeric expression.

Returns the natural argument logarithm.

## Log

**Log(Basis, Argument)**

* Basis - numeric expression;
* Argument - integer positive numeric expression.

Returns the argument logarithm with the given basis.

## Mod

**Mod(Dividend, Divisor)**

* Dividend - integer numerical expression.
* Divisor - integer numerical expression.

Returns remainder from integer division of the Dividend by the Divisor.

## Pi

**Pi()**

* Arguments are absent.

Returns the pi constant value 3.1415926535897932385.

## Pow

**Pow(Argument, Degree)**

* Argument - numeric expression.
* Degree - numeric expression.

Returns the argument in the given degree.

## RelErr

**RelErr(Argument1, Argument2)**

* Arguments - any numeric expressions.

Returns the relative error of two arguments.

## Round

**Round(Argument1 [, Argument2 = 0])**

* Argument1 - numeric expression.
* Argument2 - optional parameter, the number of digits following the decimal point, integer.

Rounds up the real number to the nearest number that has the specified number of digits following the decimal point.

## Sign

**Sign(Argument)**

* Argument - numeric expression.

Returns the argument sign.

## Sin

**Sin(Angle)**

* Angle - angle value in radians.

Returns sinus of the set angle.

## Sqrt

**Sqrt(Argument)**

* Argument - integer positive numeric expression.

Returns the argument square root.

## Tan

**Tan(Angle)**

* Angle - angle value in radians.

Returns tangent of the set angle.
