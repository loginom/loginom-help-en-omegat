# Replacement by Regular Expression

The regular expression is used to search for the set sequence of characters in each column value of the source data set. If the sequence is detected, the value is replaced with the new one. Replacement by regular expression is applied only to the data of the string type.

> **Note:** The regular expression is a template used for search for sequences of characters. It is set using the language of rules based on a subset of [regular expressions ](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%B3%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D0%B5_%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F) Perl (Perl regular expressions, regex).

For example:

Only digits must be used in the bank BIC. The regular expression `\D` denotes all characters that are not digits. There are `О` and `З` letters instead of digits in some BIC values. These values are replaced with `Wrong BIC` row.

<table>
 <tr><th>Source data</th><th colspan="2">Values of the replacement table fields</th><th>Replacement result</th></tr>
 <tr><td>Bank BIC</td><th>Replace</th><th>Value</th><td>Replace bank BIC</td></tr>
 <tr><td>40147О00</td><td rowspan="4" valign="top">\D</td><td Rowspan="4" valign="top">Wrong BIC</td><td>Wrong BIC</td></tr>
 <tr><td>40147781</td><td>40147781</td></tr>
 <tr><td>40155000</td><td>40155000</td></tr>
 <tr><td>4017З001</td><td>Wrong BIC</td></tr>
</table>

The values not included into the *Replacement table* are processed according to the configured parameter - [Replace other](./other-match.md).