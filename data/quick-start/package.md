---
description: Проект в аналитической платформе Loginom. Структура пакета и модуля в Loginom. Файлы с расширением lgp и lck. Подключение пакета для повторного использование компонентов.
---
# Package Usage Type and Structure

Все действия с проектом в [**Loginom**](https://loginom.ru) осуществляются в рамках Пакета, который является минимальной единицей поставки и представляет собой контейнер для компонентов, сценариев, подключений и т.д.

Пакеты сохраняются по отдельности в виде файлов с расширением .lgp, и включают в себя [Ссылки](./../workflow/reference-to-package.md) и Модули.

The References are used for connection of other packages in order to use the derived components created in them and connections in the current project. Corresponding objects are available only if they are published for shared access.

Each package contains at least one module. The Module inludes the following items:

* The [Workflow](./first-workflow.md) contains sequence of data processing nodes.
* [Подключения](./../integration/connections/README.md) — в них представлен список внешних источников и приемников данных, к которым можно подключиться.
* [Компоненты](./../processors/README.md#standartnye-komponenty) — доступные для работы подмодели, как созданные в рамках текущего пакета, так и заимствованные из других пакетов через ссылки.

> **Note:**
> 1. При открытии любого пакета всегда создается файл с именем `<Название_пакета>.lgp.lck`. Он защищает открытый пакет от возможности редактировать или удалить его другими пользователями. This file is deleted upon the package closure.
>
> 2. Если включена опция автосохранения пакетов (см. подробнее [Пакеты](./../interface/packages.md)), то рядом с открытым .lgp файлом создается файл с именем `<Название пакета>.lgp.autosave`. Пакет сохраняется в файл с расширением .lgp.autosave с заданной периодичностью. При необходимости можно переименовать файл `<Название пакета>.lgp.autosave` в `<Название пакета>.lgp` и восстановить последнюю сохраненную версию пакета.
