---
description: Пошаговая инструкция по получению данных из какой-либо базы данных для последующего анализа в аналитической платформе Loginom. Настройка подключения к базе данных. Импорт данных из базы данных.
---
# Интеграция с базами данных

Для работы с данными из какой-либо базы данных, необходимо выполнить несколько подготовительных действий.

## Шаг 1. Создание подключения

Для работы с базой данных, предварительно необходимо создать [Подключение](./../integration/connections/README.md) соответствующего типа, в зависимости от того к какой базе нужно подключиться.

## Шаг 2. Создание узла подключения в сценарии

Созданное подключение необходимо поместить в сценарий,  для этого необходимо создать узел, выходными данными которого будут являться параметры подключения к источнику данных.

Для создания узла:

1. Открыть сценарий для редактирования и развернуть панель Подключения, в которой содержится перечень всех созданных в пакете подключений.
2. Выделить необходимое подключение в панели и, вызвав кликом правой кнопки мыши его контекстное меню, воспользоваться одним из предложенных способов (см. рисунок 1):
   * ![ ](./../images/icons/common/toolbar-controls/show-reference-links_default.svg) Добавить ссылку на Подключение в Сценарий — в сценарий будет добавлен [Узел-ссылка](./../processors/control/reference-node.md) (1) на подключение. Также создать узел-ссылку можно при помощи функции Drag-and-drop, перетащив мышью выбранное подключение в область построения сценария.
   * ![ ](./../images/icons/common/toolbar-controls/derive-node_default.svg) Добавить узел Подключения в Сценарий — в сценарий будет добавлен производный узел (2), унаследованный от выбранного подключения. Производный узел будет иметь те же настройки, что и выбранное подключение, однако, их возможно переопределить в мастере настройки узла (при этом настройки подключения, от которого был унаследован узел, не изменятся).
   * Перейти к подключению — переход к окну с доступными подключениями.

![Создание узла подключения в сценарии](./database-1.png)

Параметры подключения к источнику данных используются узлами [импорта](./../integration/import/README.md)/[экспорта](./../integration/export/README.md) данных. Для этого выходные данные порта ![ ](./../images/icons/app/node/ports/outputs/link_inactive.svg) узла подключения необходимо подать на входной порт ![ ](./../images/icons/app/node/ports/inputs/link_inactive.svg) нуждающегося в этом подключении узла импорта/экспорта (см. рисунок 2).

![Использование узла подключения.](./database-2.png)

## Шаг 3. Настройка узла импорта

Для получения информации из базы данных используется отдельный узел [Импорт из базы данных](./../integration/import/database.md). Он позволяет импортировать таблицу БД или результаты выполнения SQL-запроса, заданного пользователем, а также представление — view.