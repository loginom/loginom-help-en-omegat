---
description: Логирование действий в Loginom. Формат записи в лог. Уровни логирования. Работа с ошибками, поиск информации о проблемах, авариях и сбоях.
---
# Logging

Log file is generated in the server and desktop editions of the platform. It is a registration log in which execution of each node is fixed that enables to detect location and possible reason of the occurred error.

The log file generation rules (file name, its maximum size, logging level, etc.) are set by [logging parameters](./parameters.md).

> **Note:** ANSI encoding is used up to 6.5.0 version. It complies with the user locale that started Megaladata Server. Starting from version 6.5.0 — UTF8.

## Logging levels

Logging level is a parameter that enables to control what actions occurring in the program are to be recorded according to the required process detailing. With an increase in the logging level detailing and occupied memory will be also increased.

When selecting one logging level, the messages relating to the higher level won't be recorded.

| Logging level | Input levels |
|:---------|:--------|
| Trace | Fatal, Error, Warning, Event, Information, Debug, Trace |
| Debug | Fatal, Error, Warning, Event, Information, Debug |
| Information | Fatal, Error, Warning, Event, Information |
| Event | Fatal, Error, Warning, Event |
| Warning | Fatal, Error, Warning |
| Error | Fatal, Error |
| Fatal | Fatal |

The Information level is set by default. This level is sufficient for the normal program use as the higher levels will slow down the application operation.

Let's consider logging levels:

| Logging level | Displayed commands |
|:---------|:--------|
| Fatal | It displays the errors that cause server shut-down |
| Error | All errors are included into the log with the exception of the frequent errors (for example, errors related to the type transformation in the calculator) |
| Warning | The warnings on the problems concerning configuration (they occur while loading or copying/pasting nodes), nonexistent or extra columns while columns synchronization, errors in the calculator. Errors that provide information on occurrence of the unexpected event. |
| Event | Package opening. Package closing. Package saving. Package version setup. Old version package conversion. |
| Information | Opening (closing) of user sessions. Actions with sessions and packages (closing of packages and sessions) from the Session Manager. Actions with sessions and packages (closing of packages and sessions) from the Session Manager. Change of user (add, delete, move to  group) via administrator. Add (delete) shared folders. Messages from memory manager. Errors while updating the columns in "Table" and "Statistics" visualizers. |
| Debug | Activate (deactivate) nodes. Errors of types transformation for the variable types in the calculator. |
| Trace | All operations, for example, model selection while ARIMAX node training are logged |

The Trace level is most frequently used only during the process debugging, the Information level is sufficient for normal use.

## Format of record to log

Each string in the log file is a message in the following format:

`yyyy-mm-ddThh:mm:ss.mss level (process:thread>user:session:[requestID]) — message [paramJSON]`,

where

* `yyyy-mm-ddThh:mm:ss.mss` — date and time specifying milliseconds (date and time are separated with letter `T`);
* `level` — logging level;
* `process` — name of the started process;
* `thread` — thread number;
* `user` — name of the user who started the process;
* `session` — session number;
* `requestID` — request identifier (optional parameter; it is available when the process has been started from the external service);
* `message` — message text;
* `paramJSON` — parameters in JSON format (optional parameter).

%spoiler%Examples of log records%spoiler%

`2021-06-10T14:09:39.980 info (Server.exe:4484>user:57:) - Session for user was initialized {"SessionType": "Interactive session"}`

`2021-06-17T14:31:58.713 info (Server.exe:3364>service:93:ed331dffafc14923bb7aa43225fd01a5) - Package "/user/test-service.lgp" was closed`

`2021-07-27T12:41:13.899 error (Server.exe:4244>user:23:) - Failed to load some configuration items`

%/spoiler%