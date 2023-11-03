---
description: Справка по работе диспетчера в Loginom. Просмотр открытых сессий и пакетов. Мониторинг и управление активностью сессий, очистка пула пакетов. Общие сведения о колонках таблицы диспетчера.
---
# ![Parameters](./../images/icons/common/admin-system-objects/manager_default.svg) Session Manager

*Session Manager* is designated for view of opened sessions and packages, their activity monitoring and control, package pool clearing.

> **Note:** *Session Manager* is available only in the server Megaladata editions.

The Session Manager page is a table with the information grouped by the following sections:

* *Sessions* — user sessions and packages opened within.
* *Shared packages* — packages not related to specific sessions opened by server by references from other packages. Several packages can refer to one shared package. Shared package cannot be closed until there is at least one reference to it from the executed packages or from the packages located in*Package pool*.
* *Package pool* — packages saved for reuse in the server memory. Package use optimizes application performance by saving resources committed for reused packages loading. The packages called directly from [Loginom Integrator](https://help.loginom.ru/adminguide/windows/integrator/) and [BatchLauncher](./../workflow/batchlauncher.md) are placed into the pool (the packages to which they refer are located in *Shared packages* group). The pool size is set in [server parameters](./parameters.md). When the maximum size is reached, the packages that have not been used for the longest period of time are firstly deleted from the pool. When file changing, all copies of this package are automatically deleted from the pool.

Table columns:

* **Sessions and packages** — session name and packages opened within are displayed. To view packages, it is required to open the list by clicking on "+". The session name consists of user name and unique session identifier (similar to the one displayed in the [logging](./../admin/parameters.md#parametry-logirovaniya) journal of server operation).
* **Activity** — time of the last session activity. When executing the node in the subordinate package, *Activity* is highlighted in green. In this case, the execution progress bar is displayed for the package, and the node activation start time is displayed in the progress bar tip when hovering a cursor over it.
* **Host** — IP address of the client from which session was started. При включении через контекстное меню опции "Разрешать имена по IP", вместо адреса выводится имя хоста.
* **Роль** — роль пользователя в сессии отображается соответствующими иконками:
   * ![Параметры](./../images/icons/admin/user-roles/admin_default.svg) — Администрирование;
   * ![Параметры](./../images/icons/admin/user-roles/design_default.svg) — Проектирование сценариев;
   * ![Параметры](./../images/icons/admin/user-roles/viewer_default.svg) — Просмотр отчетов,
   * ![Параметры](./../images/icons/admin/user-roles/execute_default.svg) — Пакетное выполнение, выполнение из интегратора

   Если у пользователя есть несколько ролей, то показывается наиболее привилегированная.
* **Версия** — версия пакета в формате [семантического версионирования](https://semver.org/lang/ru/).
* **Создан** — дата/время создания файла пакета или сессии. Значение отсутствует у черновика пакета.
* **Сохранен** — дата/время последнего сохранения файла пакета. Значение отсутствует у черновика пакета.
* **Путь** — полный путь пакета в [файловом хранилище](./../location_user_files.md). Значение отсутствует у черновика пакета.

Все колонки, за исключением *Сессии и пакеты*, можно скрывать. У пакетов, входящих в узел *Общие пакеты*, также отображается количество сессий, которые ссылаются на данный пакет, включая ссылку из самого сервера. Количество ссылок отображается цифрой справа от имени пакета.

В верхней части страницы расположены кнопки:

* ![Обновить](./../images/icons/common/toolbar-controls/refresh_default.svg) **Обновить** — обновляет список сессий или пакетов. При этом из списка могут удалиться уже закрытые сессии/пакеты или добавиться новые. Обновление также происходит автоматически каждые 5 сек. Горячая клавиша для действия %kbd Alt F5 %
* ![Остановить](./../images/icons/common/toolbar-controls/stop_default.svg) **Остановить** — доступно для сессий и пакетов в состоянии "Выполнение". Останавливает выполнение выбранных в таблице сессии или пакета. При этом для сессии останавливаются все принадлежащие ей пакеты, а остановка пакета может привести к остановке сессии, если после этого у неё будут отсутствовать выполняемые пакеты. Действие запрашивает подтверждение у пользователя.
* ![Закрыть](./../images/icons/common/toolbar-controls/close_default.svg) **Закрыть** — закрывает и удаляет выбранные в таблице сессию или пакет. Действие запрашивает подтверждение у пользователя. Горячая клавиша для действия %kbd Delete %
* ![Поиск](./../images/icons/common/toolbar-controls/zoom_default.svg) **Поиск** — вызывает меню поиска по таблице *Диспетчера*. Также доступен поиск по каждой колонке через меню в заголовке колонки. Горячая клавиша для действия %kbd Ctrl F %

Эти действия также доступны из контекстного меню, вызываемого правой кнопкой мыши. Кроме перечисленных контекстное меню содержит действия:

* ![Разрешать имена по IP](./../images/icons/common/toolbar-controls/close_default.svg) **Разрешать имена по IP** — при включении этой опции для всех сессий выводится имя хоста. По умолчанию выводится IP-адрес хоста.
* ![Очистить пул пакетов](./../images/icons/common/toolbar-controls/zoom_default.svg) **Очистить пул пакетов** — удаляет все пакеты из пула пакетов.
