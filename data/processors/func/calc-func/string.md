---
description: Строковые функции Loginom. Функции Chr, Concat, Count, DamLevDist, Find, Format, Left, LevDist, Lower, RegExDomain, RegExEmail, RegExMatch, RegExMatchCount, RegExMatchedExp, RegExReplace, RegExReplaceAll, Repeat, Replace, Right, Space, Str, StrZero, Stuff, SubStr, Trim, Upper, Val
---
# String Functions

## Chr

**Chr(Argument)**

* Argument - numerical code of Unicode character in the range of [0, 65535].

Returns Unicode character according to its code.

## Concat

**Concat(String, String [, ... String])**

* String - string expression.

Combines several strings into one.
Null values are interpreted as the strings with zero length, namely, as "".

## Count

**Count(String)**

* String - string expression.

Returns count of characters in the string.

## DamLevDist

**DamLevDist(String1, String2)**

* String1.
* String2 - expressions of the string type.

Function returns the value of the Damerau–Levenshtein distance for String1, String2. The Damerau–Levenshtein distance is also called the edit distance with reference to transpositions that is the similarity of measurement of the two strings. Its result is the minimum number of the character deletion, insertion, substitution and transposition operations that must be performed in order to convert one string into another.

## Find

**Find(Substring, String[, MatchIndex = 1])**

* Substring - searched substring.
* String - the string in which substring is searched.
* MatchIndex - optional occurrence index of the Substring in the String to be returned. Argument of the numeric type.

Function returns position of the first character of the Substring of the set MatchIndex in the String.
The MatchIndex can be both positive and negative. If the MatchIndex is positive, the search is performed from left to right, if it is negative, the search is performed from right to left.
If there is no occurrence of the set order, the function returns 0.
For example, Find("A", "A000A00A", 2) will return position of the second left occurrence of substring "A" to string "A000A00A", namely, 5;
Find("A", "A000A00A", -1) will return position of the first right occurrence of substring "A" to string "A000A00A", namely, 8.
If the MatchIndex is equal to zero, the function will return the Null value (Null).

## Format

**Format(Format\_string, Expression [, ... Expression])**

* Format\_string - string expression of the special type.
* Expression - arbitrary string expression.

Returns the list of expressions in the given format.
Format\_string is represented below:
[String] %s [String] [... [[String]%s[String]]]
String - string expression
%s - character that is replaced by another Expression from the list.

## Left

**Left(String, Count\_of\_characters)**

* String - expression of the string type.

Returns the given count of characters of the left string part.

## LevDist

**LevDist(String1, String2)**

* String1.
* String2 - expressions of the string type.

Function returns the value of the Levenshtein distance for String1, String2. The Levenshtein distance is also called the edit distance that is the similarity of measurement of the two strings. Its result is the minimum number of the character deletion, insertion and substitution operations that must be performed in order to convert one string into another.

## Lower

**Lower(Argument)**

* Argument - string expression.

Returns the lowercase argument.

## RegExDomain

**RegExDomain(InputString [, OccurenceNumber = 1])**

* InputString - the input string in which Email-address will be searched.
* OccurenceNumber - the index of Email-address in the searched string.

Returns OccurencesNumber site address from the InputString string, not including www till the top level domain, inclusively.
Regular expressions are used for search.

## RegExEmail

**RegExEmail(InputString [, OccurenceNumber = 1])**

* InputString - the input string in which Email-address will be searched.
* OccurenceNumber - the index of Email-address in the searched string.

Extracts OccurencesNumber Email-address from the InputString string.
Regular expressions are used for search.

## RegExMatch

**RegExMatch(RegularExpression, String)**

* RegularExpression - the regular expressions string.
* String - the input string.

Checks the string and regular expression matching.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExMatchCount

**RegExMatchCount(RegularExpression, String)**

* RegularExpression - the regular expressions string.
* String - the input string.

Returns the number of the string parts matching the regular expression.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExMatchedExp

**RegExMatchedExp(RegularExpression, String [, PartNumber = 1])**

* RegularExpression - the regular expressions string.
* String - the input string.
* PartNumber - the part index matching the regular expression, input string. Parameter must be included into the range from 1 to RegExMatchCount.

Returns the string part matching the regular expression.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExMatchedNamedSubExp

**RegExMatchedNamedSubExp(RegularExpression, String, GroupName [, PartNumber = 1])**

* RegularExpression - the regular expressions string.
* String - the input string.
* GroupName - name of the group defined by metacharacters (...).
* PartNumber - the part index matching the regular expression, input string. Parameter must be included into the range from 1 to RegExMatchCount.

Returns the string part group matching the regular expression.
Groups are numbered from left to right according to occurrence of opening brackets.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExMatchedSubExp

**RegExMatchedSubExp(RegularExpression, String, GroupNumber [, PartNumber = 1])**

* RegularExpression - the regular expressions string.
* String - the input string.
* GroupNumber - index number of the group defined by metacharacters (...).
* PartNumber - the part index matching the regular expression, input string. Parameter must be included into the range from 1 to RegExMatchCount.

Returns the string part group matching the regular expression.
Groups are numbered from left to right according to occurrence of opening brackets.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExReplace

**RegExReplace(RegularExpression, InputString, ReplaceString [, PartNumber = 1, ExtendedSyntax = False])**

* RegularExpression - the regular expressions string.
* InputString - the input string that will be replaced.
* СтрокаЗамены - строка, которая будет вставлена вместо части входной строки, соответствующей регулярному выражению;
* PartNumber - the part index matching the regular expression, input string. Parameter must be included into the range from 1 to RegExMatchCount.
* ExtendedSyntax - extended replacement syntax (only for PCRE2).

Returns the InputString in which the PartNumber expression occurrence of the RegularExpression will be replaced with the ReplaceString.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## RegExReplaceAll

**RegExReplaceAll(RegularExpression, InputString, ReplaceString [, ExtendedSyntax = False])**

* RegularExpression - the regular expressions string.
* InputString - the input string that will be replaced.
* ReplaceString - the string that will be inserted instead of the input string parts matching the regular expression.
* ExtendedSyntax - extended replacement syntax (only for PCRE2).

Returns the InputString in which all occurrences of the RegularExpression expression will be replaced with the ReplaceString.
PCRE2 library is used. Syntax and semantics are compatible with the Perl regular expressions.

## Repeat

**Repeat(String, Count\_of\_repeats)**

* String - string expression.
* Count\_of\_repeats - integer.

Returns a string - repeating the given string as many times as necessary.

## Replace

**Replace(String, Old\_template, New\_template [, Replace\_all, Ignore\_case])**

* String - the string in which a replacement is required.
* Old\_template - the replaced substring.
* New\_template - the string with which the Old template will be replaced.
* Replace\_all - flag of replacement of all occurrences of the Old template with the New template. Argument of the logical type.
* Ignore\_case - flag of case sensitivity in the case of replacement. Argument of the logical type.

Function returns the String in which occurrences of the Old template were substituted with the New template.
If "Replace all" flag has the True (true) meaning, then all occurrences of the Old template will be replaced with the New template in the returned string.
If "Replace all" flag has the False (false) meaning, then only the first in order occurrence will be replaced in the returned string.
If "Ignore case" flag has the True (true) meaning, then a search for the replaced fragments (the Old template) will be case insensitive.
If "Ignore case" flag has the False (false) meaning, then a search for the replaced fragments (the Old template) will be case sensitive.
Not stating the last two parameters is permitted.
If "Ignore case" flag is not stated, then a search for the replaced fragments will be case sensitive.
If "Replace all" flag is not stated, then only the first occurrence of the replaced substring will be replaced.
For example, Replace("A000а00A", "А", "B", True, True) will return string "B000B00B", namely, it will replace all occurrences of string "А" with string "В" ignoring the character case;
Replace("A000а00A", "А", "B", True, False) will return string "B000а00B".
Replace("A000а00A", "А", "B") will return string "B000а00A".

## Right

**Right(String, Count\_of\_characters)**

* String - expression of the string type.

Returns the given count of characters of the right string part.

## Space

**Space(Count\_of\_spaces)**

* Count\_of\_spaces - integer.

Returns the given count of spaces..

## Str

**Str(Argument)**

* Argument - expression of the numeric type.

Returns the Argument as a string taking into account locales.

## StrZero

**StrZero(Expression, Total\_length)**

* Expression - numeric expression.
* Total\_length - length of the resulting string.

Adds zeros at the front of the specified expression so that the resulting string length is equal to the Total\_length.

## Stuff

**Stuff(Source, Start\_position, Length [, Inserted_string = ""])**

* Source - string expression.
* Inserted\_string - string expression.
* Start - position of the insert start.
* Length - length of the deleted substring.

Returns the string of the following type. At first, substring is deleted from the Source, starting from the Start position of the Length length. Then instead of the deleted substring, the Inserted\_string is inserted.

## SubStr

**SubStr(Source, Start, Length)**

* Source - string expression.
* Start - position of the substring start.
* Length - the substring length.

Returns substring from string - source, starting from the Start position of the Length length.

## Trim

**Trim(Argument)**

* Argument - string expression.

Returns the Argument without leading and trailing spaces.

## TrimLeft

**TrimLeft(Argument)**

* Argument - string expression.

Returns the Argument without leading spaces.

## TrimRight

**TrimRight(Argument)**

* Argument - string expression.

Returns the Argument without trailing spaces.

## Upper

**Upper(Argument)**

* Argument - string expression.

Returns the uppercase argument.

## Val

**Val(String)**

* String - string expression.

Converts the given string into a number, taking locale into account
