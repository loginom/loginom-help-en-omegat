---
description: Глобальные функции и их описание в компоненте JavaScript. Loginom.
---

# ![](../../../images/icons/components/javascript_default.svg) Global Functions

## setTimeout

**function setTimeout(callback, delay, ...args)**

* callback — function to be executed. `function` type.
* delay — delay before callback function calling in milliseconds. `number` type.
* args — arguments transferred to callback function. The optional parameter.

It enables to call the function once after a certain time interval. It returns the timeout identifier.

## clearTimeout

**function clearTimeout(timeoutID)**

* timeoutID — timeout identifier to be cancelled. `number` type.

It cancels the timeout set by `setTimeout` call.

## btoa

**function btoa(text, encoding)**

* text — string to be encoded. `string` type.
* encoding — optional parameter that can take the single "utf-8" value meaning that the string is encoded in base64 using utf-8 encoding. If the argument is not specified or it is equal to `undefined`, it means that the string is encoded using latin-1 encoding in base64. `string` type.

It creates ASCII string encoded in base-64 from the binary data "string". It returns the encoded string.

## atob

**function atob(text, encoding)**

* text — string to be encoded. Тип `string`.
* encoding — optional parameter that can take the single "utf-8" value meaning that the string is encoded in base64 using utf-8 encoding. If the argument is not specified or it is equal to `undefined`, it means that the string is encoded using latin-1 encoding in base64. `string` type.

It decodes the string encoded using base-64. It returns the decoded string.