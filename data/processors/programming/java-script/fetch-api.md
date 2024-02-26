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

It represents the iterated collection of HTTP headers. The object methods enable to get, set, add and delete headers from the request headers collection.

#### Constructor

```javascript
let headers = new Headers([init]);
```

where:

- `init` takes the object of the `HeadersInit` type (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter.

It creates the `Headers` object (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

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
- thisArg — values used as `this` when calling `callbackfn`. The optional parameter.

The method iterates over collection of headers in the Headers-object and executes the provided function for each header.

%/spoiler%

%spoiler%get%spoiler%

**get(name)**

- name — header name. It takes the value of the `string` type. Required parameter.

It returns the string that represents the header value or `null` if this header is not set.

%/spoiler%

%spoiler%set%spoiler%

**set(name, value)**

- name — header name. It takes the value of the `string` type. Required parameter.
- value — header value. It takes the value of the `string` type. Required parameter.

It sets the new value for the existing header inside the Headers-object or adds the header if it does not exist yet. The method returns `undefined`.

%/spoiler%

%spoiler%has%spoiler%

**has(name)**

- name — header name. It takes the value of the `string` type. Required parameter.

It returns `true` or `false` depending on the fact whether the Headers-object contains the header with the specified name.

%/spoiler%

%spoiler%keys%spoiler%

**keys()**

It returns the iterated collection of names of the Headers-object headers.

%/spoiler%

%spoiler%values%spoiler%

**values()**

It returns the iterated collection of values of the Headers-object headers.

%/spoiler%

### Request

It represents HTTP request.

#### Constructor

```javascript
let request = new Request(input[, init]);
```

where:

- `input` — object of the `RequestInfo` type (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). Required parameter. It takes URL address of the requested resource or object that implements the `Request` interface.
- `init` — object that implements the `RequestInit` interface (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter. It takes parameters of HTTP request. `init`-object can include the following parameters:
   - `body` — HTTP request body. Object of the `BodyInit` type (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). `body` can be represented by a string or object related to `ArrayBuffer`, `ArrayBufferView` types.
   - `headers` — HTTP request headers. [headers-object](#headers) (refer to also [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).
   - `method` — string that contains the HTTP request method (`get`, `post`, etc).
   - `redirect` — string that contains the redirecting processing mode (`follow`, `error`, `manual`).

It creates the `Request` object (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Implementation Features

It is allowed to set `Cookie` and `Cookie2` HTTP-headers.

#### Request Properties

%spoiler%bodyUsed%spoiler%

**bodyUsed**

It contains the logical value that enables to define whether the request body was read or not (the request body can be read only once).  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

It contains HTTP headers of request (`Headers` object). Read-only.

%/spoiler%

%spoiler%method%spoiler%

**method**

It contains the request method (GET, POST и т.д.). It returns the value of the `string` type. Read-only.

%/spoiler%

%spoiler%redirect%spoiler%

**redirect**

It contains the redirecting processing mode. It returns one of the `string` type values:

- `follow`
- `error`
- `manual`

If the property is not specified when creating a request, it takes the default `follow` value. Read-only.

%/spoiler%

%spoiler%url%spoiler%

**url**

It contains the request URL address. It returns the value of the `string` type. Read-only.

%/spoiler%

#### Request Methods

%spoiler%arrayBuffer%spoiler%

**arrayBuffer()**

It reads the request body and returns the promise values of the `ArrayBuffer` type.

%/spoiler%

%spoiler%json%spoiler%

**json()**

It returns promise with the object received in the result of the request body parsing as the text in the JSON format.

%/spoiler%

%spoiler%text%spoiler%

**text()**

It returns promise with the string received in the result of the request body interpretation as the text in UTF-8 encoding.

%/spoiler%

%spoiler%clone%spoiler%

**clone()**

It creates copy of the current Request object.

%/spoiler%

### Response

It represents response to HTTP request.

#### Constructor

It is possible to create the new Response-object using constructor but practically and most likely the object returned by the  [fetch()](#fetch) function will occur.

```javascript
let response = new Response([body][, init]);
```

where:

- `body` takes the object of the `BodyInit` type (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)) or `null`. The optional parameter.
- `init` takes the object that implements the `ResponseInit` interface (refer to [Full API Description](./api-description.md#fetch-api)). The optional parameter.

It creates the `Response` object (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Implementation Features

`Set-Cookie` and `Set-Cookie2` headers are allowed for use with `Cookie` and `Cookie2` headers of the request.

#### Response Properties

%spoiler%bodyUsed%spoiler%

**bodyUsed**

It contains the logical value that enables to define whether the response body was read or not (the response body can be read only once).  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

It contains HTTP headers of response (`Headers` object). Read-only.

%/spoiler%

%spoiler%ok%spoiler%

**ok**

It contains the logical value that enables to define whether the response was successful (status in the range from 200 to 299) or not.  It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%redirected%spoiler%

**redirected**

It contains the logical value that enables to define whether the response was the redirected request result. It returns `true` or `false`. Read-only.

%/spoiler%

%spoiler%status%spoiler%

**status**

It contains the [HTTP response status code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). It returns the value of the `number` type. Read-only.

%/spoiler%

%spoiler%statusText%spoiler%

**statusText**

It contains the message that matches the [HTTP response status code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). For example, `OK` matches status code 200, `Continue` — 100, `Not Found` — 404. It returns the value of the `string` type. Read-only.

%/spoiler%

%spoiler%url%spoiler%

**url**

It contains the response URL address. `url` value of property will be the final URL address received after any redirectings. It returns the value of the `string` type. Read-only.

%/spoiler%

#### Response Methods

%spoiler%arrayBuffer%spoiler%

**arrayBuffer()**

It reads the response body and returns the promise values of the `ArrayBuffer` type.

%/spoiler%

%spoiler%json%spoiler%

**json()**

It returns promise with the object received in the result of the response body parsing as the text in the JSON format.

%/spoiler%

%spoiler%text%spoiler%

**text()**

It returns promise with the string received in the result of the request body interpretation as the text in UTF-8 encoding.

%/spoiler%

%spoiler%clone%spoiler%

**clone()**

It creates copy of the current Response object.

%/spoiler%

### fetch()

`fetch(resource[, init])`, где

- resource takes the object that implements the `Request` interface or the string that contains the request URL. Required parameter.
- init takes the object that implements the `RequestInit` interface (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)). The optional parameter.

Asynchronous `fetch` function starts the process of resource extraction from network returning promise of the `Response` object (refer to [Full API Description](./api-description.md#vstroennyy-modul-builtinfetch)).


## Examples:

### Fetch API Use

```javascript
import {fetch, Request, Headers} from "builtIn/Fetch";

// Create request header object:
let headers = new Headers({"Content-Type": "text/html", "Custom-Header": "delete me"})
// Display header value
console.log("Custom-Header: ", headers.get("Custom-Header"))
// Delete header
headers.delete("Custom-Header")
// Check header availability
console.log(headers.has('Custom-Header'));
// Add new header
headers.append("Accept-Charset", "utf-8")
// Change header value
headers.set("Content-Type", "application/json")

// Create request object:
let request = new Request("http://httpbin.org/post", {
    method: "post",
    headers: headers,
    body: "{ \"str\": message }",
    redirect: "follow"
});

// Display of request parameters:
console.log("url: " + request.url);
console.log("bodyUsed: " + request.bodyUsed);
console.log("redirect: " + request.redirect);
console.log("method: " + request.method);
for (let header of headers.entries()) {
    console.log(header[0]+ ': '+ header[1]);
}

// Calling of httpbin.org service and display of response parameters:
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

### Receipt of exchange rates of the Central Bank of the Russian Federation

```javascript
import {fetch} from "builtIn/Fetch";

// CB service request:
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

### Sequential execution of requests

```javascript
import {fetch, Headers} from "builtIn/Fetch";

(async() => {
    try {
        // 1-st service request
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

        // 2-nd service request
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
