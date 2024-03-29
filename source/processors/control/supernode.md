---
description: Компонент Подмодель в Loginom. Упрощение структуры сценария. Объединение нескольких узлов в один. Мастер настройки.
---
# ![Подмодель](./../../images/icons/components/generic_default.svg) Подмодель

*Подмодель* является специальным узлом, содержащим в себе другие узлы *[Сценария](./../../workflow/README.md#proektirovanie-stsenariev)*.

 Основное назначение *Подмодели*:
  - Упрощение структуры *Сценария* объединением нескольких узлов, выполняющих определенный этап обработки данных, в один узел *Подмодели*. В состав *Подмодели* могут также включаться другие *Подмодели*, их вложенность друг в друга не ограничена. Таким образом имеется возможность создавать иерархическую структуру сценария.
  - Многократное использование созданной логики обработки для различных данных. В *Подмодели* можно реализовать произвольную логику обработки и задать необходимую структуру входных и выходных данных. При помощи инструментов *[Производный компонент](./../../workflow/derived-component.md)*, *[Выполнение узла](./execute-node.md)*, *[Публикация веб-сервисов](./../../integration/web-services/README.md#sozdanie-sobstvennykh-veb-servisov)*, *[Пакетное выполнение сценариев](./../../workflow/batchlauncher.md#paketnoe-vypolnenie-stsenariev)* созданную в *Подмодели* логику обработки можно применять многократно для различных данных.

## Порты

Изначально входных и выходных портов нет, они создаются пользователем в мастере настройки. Для *Подмодели* можно задать произвольное количество входных/выходных портов следующих типов:

### Вход

* ![Входные переменные](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) Переменные (необязательный порт)
* ![Входной источник данных](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Таблица данных
* ![Входной источник данных](./../../images/icons/app/node/ports/inputs-optional/table_inactive.svg) Таблица данных (необязательный)
* ![Входное дерево данных](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) Дерево данных

### Выход

* ![Выходные переменные](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) Переменные
* ![Выходной набор данных](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Таблица данных
* ![Выходное дерево данных](./../../images/icons/app/node/ports/outputs/tree_inactive.svg) Дерево данных

## Мастер настройки

Здесь создаются порты. Каждому порту можно задать тип, имя и метку, которая будет отображаться при наведении курсора на него. Входящему порту типа *Таблица* можно задать свойство *Необязательный*.

* ![Входы](./../../images/icons/common/system-object/port-in_default.svg) **Входы** ![Новый порт](./../../images/icons/common/toolbar-controls/plus_default.svg) — создать новый порт входа:
  * ![Для переменных](./../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) — для переменных;
  * ![Для таблицы](./../../images/icons/app/node/ports/inputs/table_inactive.svg) — для таблицы;
  * ![Для дерева данных](./../../images/icons/app/node/ports/inputs/tree_inactive.svg) — для дерева данных.
* ![Выходы](./../../images/icons/common/system-object/port-out_default.svg) **Выходы** ![Новый порт](./../../images/icons/common/toolbar-controls/plus_default.svg) — создать новый порт выхода:
  * ![Для переменных](./../../images/icons/app/node/ports/outputs/variable_inactive.svg) — для переменных;
  * ![Для таблицы](./../../images/icons/app/node/ports/outputs/table_inactive.svg) — для таблицы;
  * ![Для дерева данных](./../../images/icons/app/node/ports/outputs/tree_inactive.svg) — для дерева данных.
* ![Переместить вниз](./../../images/icons/common/toolbar-controls/movedown_default.svg) **Переместить вниз**, ![Переместить вверх](./../../images/icons/common/toolbar-controls/moveup_default.svg) **Переместить вверх** — сместить выделенный порт в списке;
* ![Удалить порт](./../../images/icons/common/toolbar-controls/delete_default.svg) — удалить порт;
* ![Удалить все порты](./../../images/icons/common/toolbar-controls/delete-all_default.svg) — удалить все порты.

Имя порта можно задать следующими способами:

* **Выбор из выпадающего списка элемента *<Уникальное>*** (используется по умолчанию) — имя порта не задается пользователем явно, при этом система генерирует внутреннее уникальное имя самостоятельно.
* **Выбор из выпадающего списка элемента *<Не задано>*** — используется для [совместимости с продуктами прошлого поколения](./../../integration/web-services/publishing-web-service.md#sovmestimost-veb-servisov-loginom-s-deductor) (DIS, Deductor 5.3) при публикации подмодели в качестве веб-сервиса. Имя может быть *<Не задано>*, если настраиваемый порт единственный в списке входных или выходных.
* **Имя указывается явно** — пользователь самостоятельно задает уникальное имя порта. В имени допускаются буквы латинского алфавита от а до z и от А до Z, знак подчеркивания "_" и цифры. Имя не может начинаться с цифры. Для входного порта уникальность должна быть соблюдена в рамках списка входных портов, для выходного — в рамках списка выходных портов.

## Область построения Подмодели

Узел *Подмодель* имеет надпись *Войти*, при нажатии которой можно открыть область построения *Подмодели* и реализовать в ней произвольный сценарий обработки. При редактировании содержимого *Подмодели* ее входные и выходные порты, созданные в мастере настройки, отображаются по левому и правому краю области над кнопками ![Выходной узел](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) *Входной узел* и ![Выходной узел](./../../images/icons/app/node/ports/submodel-port/submodel-port_20x20.svg) *Выходной узел*.

Варианты активации узлов *Подмодели*: связываем узлы с *Выходным узлом* или задаем порядок выполнения узлов, связывая их с *Входным портом синхронизхации*.

Варианты деактивации узлов *Подмодели*: связываем узлы с *Входным узлом* и *Выходным узлом* или задаем порядок выполнения узлов, связывая их с *Выходным портом синхронизации* и *Входным портом синхронизации*. 

Внутри *Подмодели* имеется возможность использовать *[Переменные сценария](./../../workflow/variables/scenario-variables.md)*, в состав которых входят *Переменные пользователя*. Пользователь имеет возможность задать перечень и значения переменных пользователя, при этом область их применения ограничена *Подмоделью*.

По нажатию кнопки ![Выйти из подмодели](./../../images/icons/app/node/submodel/back.svg) *Выйти из подмодели* происходит выход из *Подмодели* в сценарий на уровень выше.
