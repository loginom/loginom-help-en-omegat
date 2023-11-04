---
description: Логирование действий в Loginom. Формат записи в лог. Уровни логирования. Работа с ошибками, поиск информации о проблемах, авариях и сбоях.
---
# Logging

В серверных и настольных редакциях платформы формируется лог-файл — журнал регистрации, в котором фиксируется выполнение каждого узла, что позволяет в случае возникновения ошибки выявить ее местоположение и возможную причину.

Правила формирования лог-файла (имя файла, его максимальный размер, уровень логирования и др.) задаются [параметрами логирования](./parameters.md).

> **Примечание:** До версии 6.5.0 используется кодировка ANSI, соответствующая локали пользователя, из-под которого запущен Loginom Server. Starting from version 6.5.0 — UTF8.

## Logging levels

Уровень логирования — параметр, который позволяет контролировать, какие действия, происходящие в программе, нужно записывать в зависимости от требуемой детализации процесса. С увеличением уровня логирования детализация и занимаемая память будут увеличиваться.

При выборе одного уровня логирования сообщения уровня выше записываться не будут.

| Logging level | Input levels |
|:---------|:--------|
| Trace | Fatal, Error, Warning, Event, Information, Debug, Trace |
| Debug | Fatal, Error, Warning, Event, Information, Debug |
| Information | Fatal, Error, Warning, Event, Information |
| Event | Fatal, Error, Warning, Event |
| Warning | Fatal, Error, Warning |
| Error | Fatal, Error |
| Fatal | Fatal |

The Information level is set by default. Этого уровня достаточно для простого пользования программой, так как уровни выше будут замедлять работу приложения.

Let's consider logging levels:

| Logging level | Displayed commands |
|:---------|:--------|
| Авария | It displays the errors that cause server shut-down |
| Error | All errors are included into the log with the exception of the frequent errors (for example, errors related to the type transformation in the calculator) |
| Warning | Предупреждения о проблемах в конфигурации (возникают при загрузке или копировании/вставке узлов), о несуществующих или лишних колонках при синхронизации колонок, об ошибках в калькуляторе. Errors that provide information on occurrence of the unexpected event. |
| Event | Package opening. Package closing. Package saving. Package version setup. Old version package conversion. |
| Information | Opening (closing) of user sessions. Actions with sessions and packages (closing of packages and sessions) from the Session Manager. Actions with sessions and packages (closing of packages and sessions) from the Session Manager. Change of user (add, delete, move to  group) via administrator. Add (delete) shared folders. Messages from memory manager. Errors while updating the columns in "Table" and "Statistics" visualizers. |
| Debug | Activate (deactivate) nodes. Errors of types transformation for the variable types in the calculator. |
| Trace | All operations, for example, model selection while ARIMAX node training are logged |

Уровень Трассировка чаще всего используется только во время отладки процесса, для обычного пользования достаточно уровня Информация.

## Формат записи в лог

Каждая строка в файле журнала представляет собой сообщение в формате:

`yyyy-mm-ddThh:mm:ss.mss level (process:thread>user:session:[requestID]) — message [paramJSON]`,

where

* `yyyy-mm-ddThh:mm:ss.mss` — дата и время с указанием миллисекунд (дата и время разделены литерой `T`);
* `level` — уровень логирования;
* `process` — имя запущенного процесса;
* `thread` — номер потока;
* `user` — имя пользователя, запустившего процесс;
* `session` — номер сессии;
* `requestID` — идентификатор запроса (необязательный параметр; присутствует, если процесс запущен из внешнего сервиса);
* `message` — текст сообщения;
* `paramJSON` — параметры в формате JSON (необязательный параметр).

%spoiler%Примеры записей лога%spoiler%

`2021-06-10T14:09:39.980 info (Server.exe:4484>user:57:) - Инициализирована сессия для пользователя user{"SessionType": "Интерактивная сессия"}`

`2021-06-17T14:31:58.713 info (Server.exe:3364>service:93:ed331dffafc14923bb7aa43225fd01a5) - Закрыт пакет "/user/test-service.lgp"`

`2021-07-27T12:41:13.899 error (Server.exe:4244>user:23:) - Не удалось загрузить некоторые элементы конфигурации`

%/spoiler%