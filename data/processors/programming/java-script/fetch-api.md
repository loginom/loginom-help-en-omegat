---
description: Компонент JavaScript в Loginom. Интерфейс для работы с HTTP-запросами и ответами. Примеры.
---
# ![](../../../images/icons/components/javascript_default.svg) Fetch API

`Fetch API` — интерфейс для работы с HTTP-запросами и ответами, предоставляет возможность взаимодействия с веб-сервисами, ресурсами сети непосредственно из узла `JavaScript`.

Интерфейс `Fetch API` включает в себя следующие объекты:

- Headers — заголовки запроса/ответа;
- Request — запрос ресурса сети;
- Response — ответ на запрос;
- fetch() — функция, используемая для получения ресурсов сети.

Перед использованием вышеуказанные объекты должны быть импортированы из встроенного модуля `builtIn/Fetch`:

```javascript
import {fetch, Request, Response, Headers} from "builtIn/Fetch";
```

> **Примечание**: у объектов `Request` и `Response` отсутствует часть методов и свойств, стандартных для браузеров. Полный перечень см. в [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch), а также в описании ниже.

## Описание объектов

### Headers

Представляет итерируемую коллекцию HTTP-заголовков. Методы объекта позволяют получать, устанавливать, добавлять и удалять заголовки из коллекции заголовков запроса.

#### Конструктор

```javascript
let headers = new Headers([init]);
```

где:

- `init` принимает объект типа `HeadersInit` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)). Необязательный параметр.

Создает объект `Headers`(см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Методы Headers

%spoiler%append%spoiler%

**append(name, value)**

- name — имя добавляемого заголовка. Принимает значение типа `string`. Обязательный параметр.
- value — значение заголовка. Принимает значение типа `string`. Обязательный параметр.

Добавляет новое значение к существующему заголовку внутри Headers-объекта или добавляет заголовок, если он еще не существует. Метод возвращает `undefined`.

%/spoiler%

%spoiler%delete%spoiler%

**delete(name)**

- name — имя удаляемого заголовка. Принимает значение типа `string`. Обязательный параметр.

Удаляет заголовок из текущего Headers-объекта.  Метод возвращает `undefined`.

%/spoiler%

%spoiler%entries%spoiler%

**entries()**

Метод возвращает итерируемую коллекцию пар имя/значение заголовков, содержащихся в Headers-объекте. Имя и значение являются строками.

%/spoiler%

%spoiler%forEach%spoiler%

**forEach(callbackfn(value, key, parent)[, thisArg])**

- callbackfn — функция, применяемая к каждому заголовку. Обязательный параметр. В `callbackfn` в указанном порядке передаются параметры:
  - value — значение заголовка. Принимает значение типа `string`.
  - key — имя заголовка. Принимает значение типа `string`.
  - parent — Headers-объект.
- thisArg — значение, используемое как `this` при вызове `callbackfn`. Необязательный параметр.

Метод перебирает коллекцию заголовков в Headers-объекте и выполняет предоставленную функцию для каждого заголовка.

%/spoiler%

%spoiler%get%spoiler%

**get(name)**

- name — имя заголовка. Принимает значение типа `string`. Обязательный параметр.

Возвращает строку, представляющую значение заголовка или `null`, если этот заголовок не установлен.

%/spoiler%

%spoiler%set%spoiler%

**set(name, value)**

- name — имя заголовка. Принимает значение типа `string`. Обязательный параметр.
- value — значение заголовка. Принимает значение типа `string`. Обязательный параметр.

Устанавливает новое значение для существующего заголовка внутри Headers-объекта или добавляет заголовок, если он еще не существует. Метод возвращает `undefined`.

%/spoiler%

%spoiler%has%spoiler%

**has(name)**

- name — имя заголовка. Принимает значение типа `string`. Обязательный параметр.

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

#### Конструктор

```javascript
let request = new Request(input[, init]);
```

где:

- `input` — объект типа `RequestInfo` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)). Обязательный параметр. Принимает URL-адрес запрашиваемого ресурса или объект, реализующий интерфейс `Request`.
- `init` — объект, реализующий интерфейс `RequestInit` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)). Необязательный параметр. Принимает параметры HTTP-запроса . `init`-объект может содержать следующие параметры:
  - `body` — тело HTTP-запроса. Объект типа `BodyInit` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)). `body` может быть строкой или объектом типов `ArrayBuffer`, `ArrayBufferView`.
  - `headers` — заголовки HTTP-запроса. [headers-объект](#headers) (см. также [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)).
  - `method` — строка, содержащая метод HTTP-запроса (`get`, `post` и т.д.).
  - `redirect` — строка, содержащая режим обработки перенаправлений (`follow`, `error`, `manual`).

Создает объект `Request` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Особенности реализации

Разрешена установка HTTP-заголовков `Cookie` и `Cookie2`.

#### Свойства Request

%spoiler%bodyUsed%spoiler%

**bodyUsed**

Содержит логическое значение, указывающее, было ли считано тело запроса (тело запроса может быть считано только один раз).  Возвращает `true` или `false`. Доступно только для чтения.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

Содержит HTTP-заголовки запроса (объект `Headers`). Доступно только для чтения.

%/spoiler%

%spoiler%method%spoiler%

**method**

Содержит метод запроса (GET, POST и т.д.). Возвращает значение типа `string`. Доступно только для чтения.

%/spoiler%

%spoiler%redirect%spoiler%

**redirect**

Содержит режим обработки перенаправлений. Возвращает одно из значений типа `string`:

- `follow`
- `error`
- `manual`

Если свойство не указано при создании запроса, принимает значение по умолчанию `follow`. Доступно только для чтения.

%/spoiler%

%spoiler%url%spoiler%

**url**

Содержит URL-адрес запроса. Возвращает значение типа `string`. Доступно только для чтения.

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

#### Конструктор

Можно создать новый Response-объект с помощью конструктора, но на практике скорее всего встретится объект, возвращаемый функцией [fetch()](#fetch).

```javascript
let response = new Response([body][, init]);
```

где:

- `body` принимает объект типа `BodyInit` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)) или `null`. Необязательный параметр.
- `init` принимает объект, реализующий интерфейс `ResponseInit` (см. [Полное описание API](./api-description.md#fetch-api)). Необязательный параметр.

Создает объект `Response` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)).

#### Особенности реализации

Разрешены заголовки `Set-Cookie` и `Set-Cookie2` для использования совместно с заголовками `Cookie` и `Cookie2` запроса.

#### Свойства Response

%spoiler%bodyUsed%spoiler%

**bodyUsed**

Содержит логическое значение, указывающее, было ли считано тело ответа (тело ответа может быть считано только один раз).  Возвращает `true` или `false`. Доступно только для чтения.

%/spoiler%

%spoiler%headers%spoiler%

**headers**

Содержит HTTP-заголовки ответа (объект `Headers`). Доступно только для чтения.

%/spoiler%

%spoiler%ok%spoiler%

**ok**

Содержит логическое значение, указывающее, был ли ответ успешным (статус в диапазоне 200–299) или нет.  Возвращает `true` или `false`. Доступно только для чтения.

%/spoiler%

%spoiler%redirected%spoiler%

**redirected**

Содержит логическое значение, указывающее, является ли ответ результатом перенаправленного запроса. Возвращает `true` или `false`. Доступно только для чтения.

%/spoiler%

%spoiler%status%spoiler%

**status**

Содержит [код состояния HTTP-ответа](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). Возвращает значение типа `number`. Доступно только для чтения.

%/spoiler%

%spoiler%statusText%spoiler%

**statusText**

Содержит сообщение, соответствующее [коду состояния HTTP-ответа](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). Например, `OK` соответствует коду состояния 200, `Continue` — 100, `Not Found` — 404. Возвращает значение типа `string`. Доступно только для чтения.

%/spoiler%

%spoiler%url%spoiler%

**url**

Содержит URL-адрес ответа. Значение `url` свойства будет конечным URL-адресом, полученным после любых перенаправлений. Возвращает значение типа `string`. Доступно только для чтения.

%/spoiler%

#### Методы Response

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

- resource — принимает объект, реализующий интерфейс `Request`, или строку, содержащую URL запроса. Обязательный параметр.
- init — принимает объект, реализующий интерфейс `RequestInit` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)). Необязательный параметр.

Асинхронная функция `fetch` запускает процесс извлечения ресурса из сети, возвращая promise объекта `Response` (см. [Полное описание API](./api-description.md#vstroennyy-modul-builtinfetch)).


## Примеры

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