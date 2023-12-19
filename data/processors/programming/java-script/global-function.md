---
description: Глобальные функции и их описание в компоненте JavaScript. Loginom.
---

# ![](../../../images/icons/components/javascript_default.svg) Global Functions

## setTimeout

**function setTimeout(callback, delay, ...args)**

* callback — function to be executed. `function` type.
* delay — задержка перед вызовом callback-функции в миллисекундах. `number` type.
* args — аргументы, передаваемые в callback-функцию. The optional parameter.

Позволяет вызвать функцию один раз через определённый интервал времени. It returns the timeout identifier.

## clearTimeout

**function clearTimeout(timeoutID)**

* timeoutID — идентификатор таймаута, который вы хотите отменить. `number` type.

Отменяет таймаут, установленный вызовом `setTimeout`.

## btoa

**function btoa(text, encoding)**

* text — string to be encoded. `string` type.
* encoding — необязательный параметр, который может принимать единственное значение "utf-8", что означает, что в base64 кодируется строка в кодировке utf-8. Если аргумент не указан или равен `undefined`, то это означает, что в base64 кодируется строка в кодировке latin-1. `string` type.

Создаёт ASCII строку, закодированную в base-64 из "строки" бинарных данных. It returns the encoded string.

## atob

**function atob(text, encoding)**

* text — string to be encoded. Тип `string`.
* encoding — необязательный параметр, который может принимать единственное значение "utf-8", что означает, что в base64 была закодирована строка в кодировке utf-8. Если аргумент не указан или равен `undefined`, то это означает, что в base64 была закодирована строка в кодировке latin-1. `string` type.

Декодирует строку, закодированную с использованием base-64. Возвращает декодированную строку.