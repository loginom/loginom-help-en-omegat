---
description: Компонент JavaScript в Loginom. Интерфейс для работы с HTTP-запросами и ответами. Примеры.
---
# ![](../../../images/icons/components/javascript_default.svg) Fetch API

`Fetch API`: interface for working with HTTP requests and responses. It provides an opportunity of interaction with web services, network resources directly from the `JavaScript` node.

`Fetch API` interface includes the following objects:

- Headers — headers of request/response.
- Request — request of the network resource.
- Response — response to the request.
- fetch() — function used to get the network resources.

The objects specified above must be imported from the built-in `builtIn/Fetch` module before use:

```javascript
import {fetch, Request, Response, Headers} from "builtIn/Fetch";
```

> **Note**: there are no some methods and properties standard for browsers for `Request` and `Response` objects. The full list is provided in [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch) and in the description below.

## Objects Description

### Headers

It provides the iterated collection of HTTP headers. The object methods enable to get, set, add and delete headers from the request headers collection.

#### Constructor

```javascript
let headers = new Headers([init]);
```

where:

- `init` takes the object of the `HeadersInit` type (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter.

It creates `Headers` object (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Headers Methods

%spoiler%append%spoiler%

**append(name, value)**

- name — name of the added header. It takes the value of the `string` type. Required parameter.
- value — header value. It takes the value of the `string` type. Required parameter.

It adds the new value to the existing header inside the Headers-object or adds the header if it does not exist yet. The method returns `undefined`.

%/spoiler%

%spoiler%delete%spoiler%

**delete(name)**

- name — name of the deleted header. It takes the value of the `string` type. Required parameter.

It deletes a header from the current Headers-object.  The method returns `undefined`.

%/spoiler%

%spoiler%entries%spoiler%

**entries()**

The method returns the iterated collection of pairs name/value of the headers included into the Headers-object. Name and value are strings.

%/spoiler%

%spoiler%forEach%spoiler%

**forEach(callbackfn(value, key, parent)[, thisArg])**

- callbackfn — function applied to each header. Required parameter. The following parameters are transferred in `callbackfn` in the specified order:
   - value — header value. It takes the value of the `string` type.
   - key — header name. It takes the value of the `string` type.
   - parent — Headers-object.
- thisArg — значение, используемое как `this` при вызове `callbackfn`. The optional parameter.

Метод перебирает коллекцию заголовков в Headers-объекте и выполняет предоставленную функцию для каждого заголовка.

%/spoiler%

%spoiler%get%spoiler%

**get(name)**

- name — header name. It takes the value of the `string` type. Required parameter.

Возвращает строку, представляющую значение заголовка или `null`, если этот заголовок не установлен.

%/spoiler%

%spoiler%set%spoiler%

**set(name, value)**

- name — header name. It takes the value of the `string` type. Required parameter.
- value — header value. It takes the value of the `string` type. Required parameter.

Устанавливает новое значение для существующего заголовка внутри Headers-объекта или добавляет заголовок, если он еще не существует. The method returns `undefined`.

%/spoiler%

%spoiler%has%spoiler%

**has(name)**

- name — header name. It takes the value of the `string` type. Required parameter.

Возвращает `true` или `false` в зависимости от того, содержит ли Headers-объект заголовок с указанным именем.

%/spoiler%

%spoiler%keys%spoiler%

**keys()**

Возвращает итерируемую коллекцию имен заголовков Headers-объекта.

%/spoiler%

%spoiler%values%spoiler%

**values()**

Возвращает итерируемую коллекцию значений заголовков Headers-объекта.

%/spoiler%

### Request

Представляет собой HTTP-запрос.

#### Constructor

```javascript
let request = new Request(input[, init]);
```

where:

- `input` — объект типа `RequestInfo` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). Required parameter. Принимает URL-адрес запрашиваемого ресурса или объект, реализующий интерфейс `Request`.
- `init` — объект, реализующий интерфейс `RequestInit` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter. Принимает параметры HTTP-запроса . `init`-объект может содержать следующие параметры:
   - `body` — тело HTTP-запроса. Объект типа `BodyInit` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). `body` может быть строкой или объектом типов `ArrayBuffer`, `ArrayBufferView`.
   - `headers` — заголовки HTTP-запроса. [headers-object](#headers) (refer to also [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).
   - `method` — строка, содержащая метод HTTP-запроса (`get`, `post` и т.д.).
   - `redirect` — строка, содержащая режим обработки перенаправлений (`follow`, `error`, `manual`).

Создает объект `Request` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Особенности реализации

Разрешена установка HTTP-заголовков `Cookie` и `Cookie2`.

#### Request Properties

%spoiler%bodyUsed%spoiler%

**bodyUsed**

Содержит логическое значение, указывающее, было ли считано тело запроса (тело запроса может быть считано только один раз).  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

Содержит HTTP-заголовки запроса (объект `Headers`). Read-only.

%/spoiler%

%spoiler%method%spoiler%

**method**

Содержит метод запроса (GET, POST и т.д.). It returns the value of the `string` type. Read-only.

%/spoiler%

%spoiler%redirect%spoiler%

**redirect**

Содержит режим обработки перенаправлений. Возвращает одно из значений типа `string`:

- `follow`
- `error`
- `manual`

Если свойство не указано при создании запроса, принимает значение по умолчанию `follow`. Read-only.

%/spoiler%

%spoiler%url%spoiler%

**url**

Содержит URL-адрес запроса. It returns the value of the `string` type. Read-only.

%/spoiler%

#### Методы Request

%spoiler%arrayBuffer%spoiler%

**arrayBuffer()**

Считывает тело запроса и возвращает promise значения типа `ArrayBuffer`.

%/spoiler%

%spoiler%json%spoiler%

**json()**

Возвращает promise с объектом, полученным в результате разбора тела запроса как текста в формате JSON.

%/spoiler%

%spoiler%text%spoiler%

**text()**

Возвращает promise со строкой, полученной в результате интерпретации тела запроса как текста в кодировке UTF-8.

%/spoiler%

%spoiler%clone%spoiler%

**clone()**

Создает копию текущего Request-объекта.

%/spoiler%

### Response

Представляет собой ответ на HTTP-запрос.

#### Constructor

Можно создать новый Response-объект с помощью конструктора, но на практике скорее всего встретится объект, возвращаемый функцией [fetch()](#fetch).

```javascript
let response = new Response([body][, init]);
```

where:

- `body` принимает объект типа `BodyInit` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)) or `null`. The optional parameter.
- `init` принимает объект, реализующий интерфейс `ResponseInit` (см. [Full API Description](./api-description.md#fetch-api)). The optional parameter.

Создает объект `Response` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Особенности реализации

Разрешены заголовки `Set-Cookie` и `Set-Cookie2` для использования совместно с заголовками `Cookie` и `Cookie2` запроса.

#### Свойства Response

%spoiler%bodyUsed%spoiler%

**bodyUsed**

Содержит логическое значение, указывающее, было ли считано тело ответа (тело ответа может быть считано только один раз).  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

Содержит HTTP-заголовки ответа (объект `Headers`). Read-only.

%/spoiler%

%spoiler%ok%spoiler%

**ok**

Содержит логическое значение, указывающее, был ли ответ успешным (статус в диапазоне 200–299) или нет.  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%redirected%spoiler%

**redirected**

Содержит логическое значение, указывающее, является ли ответ результатом перенаправленного запроса. It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%status%spoiler%

**status**

Содержит [код состояния HTTP-ответа](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). Возвращает значение типа `number`. Read-only.

%/spoiler%

%spoiler%statusText%spoiler%

**statusText**

Содержит сообщение, соответствующее [коду состояния HTTP-ответа](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). Например, `OK` соответствует коду состояния 200, `Continue` — 100, `Not Found` — 404. Возвращает значение типа `string`. Read-only.

%/spoiler%

%spoiler%url%spoiler%

**url**

Содержит URL-адрес ответа. Значение `url` свойства будет конечным URL-адресом, полученным после любых перенаправлений. Возвращает значение типа `string`. Read-only.

%/spoiler%

#### Response Methods

%spoiler%arrayBuffer%spoiler%

**arrayBuffer()**

Считывает тело ответа и возвращает promise значения типа `ArrayBuffer`.

%/spoiler%

%spoiler%json%spoiler%

**json()**

Возвращает promise с объектом, полученным в результате разбора тела ответа как текста в формате JSON.

%/spoiler%

%spoiler%text%spoiler%

**text()**

Возвращает promise со строкой, полученной в результате интерпретации тела запроса как текста в кодировке UTF-8.

%/spoiler%

%spoiler%clone%spoiler%

**clone()**

Создает копию текущего Response-объекта.

%/spoiler%

### fetch()

`fetch(resource[, init])`, где

- resource — принимает объект, реализующий интерфейс `Request`, или строку, содержащую URL запроса. Required parameter.
- init — принимает объект, реализующий интерфейс `RequestInit` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter.

Асинхронная функция `fetch` запускает процесс извлечения ресурса из сети, возвращая promise объекта `Response` (см. [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).


## Examples:

### Использование Fetch API

```javascript
import {fetch, Request, Headers} from "builtIn/Fetch";

// Создание объекта заголовков запроса:
let headers = new Headers({"Content-Type": "text/html", "Custom-Header": "delete me"})
// Вывод значения заголовка
console.log("Custom-Header: ", headers.get("Custom-Header"))
// Удаление заголовка
headers.delete("Custom-Header")
// Проверка существования заголовка
console.log(headers.has('Custom-Header'));
// Добавление нового заголовка
headers.append("Accept-Charset", "utf-8")
// Изменение значения заголовка
headers.set("Content-Type", "application/json")

// Создание объекта запроса:
let request = new Request("http://httpbin.org/post", {
    method: "post",
    headers: headers,
    body: "{ \"str\": message }",
    redirect: "follow"
});

// Вывод параметров запроса:
console.log("url: " + request.url);
console.log("bodyUsed: " + request.bodyUsed);
console.log("redirect: " + request.redirect);
console.log("method: " + request.method);
for (let header of headers.entries()) {
    console.log(header[0]+ ': '+ header[1]);
}

// Вызов сервиса httpbin.org и вывод параметров ответа:
fetch(request)
    .then(response => {
        console.log("ok: " + response.ok);
        console.log("status: " + response.status);
        console.log("statusText: " + response.statusText);
        console.log("redirected: " + response.redirected);
        console.log("url: " + response.url);
        headers.forEach(function(value, key) {
            console.log("Name : ", key, " Value : ", value)
        });
        response.text().then(text => console.log(text));
    }).catch(e => console.log(e));

```

### Получение курсов валют ЦБ РФ

```javascript
import {fetch} from "builtIn/Fetch";

// Запрос сервиса ЦБ:
fetch("https://www.cbr-xml-daily.ru/daily_json.js")
    .then(response => {
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status},
                            statusText: ${response.statusText}`);
        }
        return response.json();
    })
    .then(json => console.log(JSON.stringify(json)))
    .catch(e => console.log(e));

```

### Последовательное выполнение запросов

```javascript
import {fetch, Headers} from "builtIn/Fetch";

(async() => {
    try {
        // Запрос 1-ого сервиса
        let response1 = await fetch('https://jsonplaceholder.typicode.com/posts', {
            method: 'POST',
            body: JSON.stringify({
                title: "foo",
                body: "bar",
                userId: 1,
            }),
            headers: new Headers({"Content-type": "application/json; charset=UTF-8"}),
        });
        let payload = await response1.arrayBuffer();

        // Запрос 2-ого сервиса
        let response2 = await fetch('http://httpbin.org/post', {
            method: 'POST',
            headers: new Headers({"Content-Type": "application/json",
                                  "Accept-Charset": "utf-8"}),
            body: payload,
        });
        console.log(await response2.text())        
    } catch(e) {
        console.log(e);
    }
})()

```
