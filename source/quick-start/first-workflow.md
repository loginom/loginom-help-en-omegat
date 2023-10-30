---
description: Пошаговая инструкция по созданию первого сценария обработки данных в аналитической платформе Loginom. Создание и сохранение пакета. Добавление и настройка узлов сценария. Пример сценария.
---
# Первый сценарий

В вариантах поставки [Enterprise](https://loginom.ru/platform/pricing#edition-enterprise), [Standard](https://loginom.ru/platform/pricing#edition-standard) и [Team](https://loginom.ru/platform/pricing#edition-team) перед началом работы необходимо авторизоваться. Для этого нужно пройти процедуру аутентификации (ввести логин и пароль) одним из доступных способов, которые подробно описаны в статье [Аутентификация в Loginom](./authentication.md).

В вариантах [Personal](https://loginom.ru/platform/pricing#edition-personal) и [Community](https://loginom.ru/platform/pricing#edition-personal) авторизация отсутствует.

После авторизации (или после запуска приложения, в случае использования настольной редакции) открывается страница [«Начало»](./../interface/home-page.md), на которой можно выполнять следующие операции с пакетами:

* **Создать пакет** — создание нового пакета, программа сразу попросить указать путь, куда сохранить пакет.
* **Создать черновик** — создание нового пакета без предварительного сохранения. Сохранить пакет можно будет уже во время работы с ним.
* **Открыть пакет** — открытие ранее созданного пакета.

>**Важно:**  по умолчанию автосохранение пакетов не выполняется, при закрытии окна программы (вкладки браузера) все изменения будут утеряны. Включить автосохранение можно в настройках, более подробную информацию можно найти на странице [«Пакеты»](https://help.loginom.ru/userguide/interface/packages.html).

После создания нового пакета/черновика пользователь попадает на страницу [«Сценарий»](./../interface/workflow.md), на которой увидит панель Компоненты (1), содержащую стандартные компоненты предоставляемые платформой, и область построения сценария (2), в которую перетаскиваются (добавляются) компоненты для построения сценария (см. рисунок 1):

![Страница «Сценарий» ](./first-scenario-2.png)

В простейшем случае сценарий импортирует данные из внешних источников, либо преобразовывает их и экспортирует (выводит в отчет).
Создадим простой сценарий, формирующий ТОП10 лучших клиентов.

Сценарий выполнит действия:

* Импорт из файла [Sales.txt](./../attach/Sales.txt) информации о продажах;
* Выделение 10 клиентов с наибольшими суммами покупок;
* Экспорт полученных результатов.

Для того чтобы использовать в сценарии какой-либо компонент, его необходимо перенести мышью из панели компонентов в область построения сценария.

Выберем в разделе Импорт компонент [Текстовый файл](./../integration/import/txt-csv.md) и перенесем его в область построения (см. рисунок 1). При этом создастся узел сценария, выполняющий действие импорта. При клике мышкой на узле отобразятся иконки возможных действий. Вызовем [Мастер настройки](./../integration/import/txt-csv.md) (см. рисунок 2).

![Вызов мастера настройки узла.](./first-scenario-3.png)

Пройдем шаги мастера, указав в параметре Имя файла местоположение файла Sales.txt.

После настройки узла выполним его, используя меню возможных действий. Теперь в выходном порте узла присутствуют импортированные данные, которые можно увидеть, выбрав ![ ](./../images/icons/common/toolbar-controls/show-fast-viewer_default.svg) [Быстрый просмотр…](./../visualization/preview/quick-view.md) в контекстном меню порта (см. рисунок 3).

![Вызов быстрого просмотра.](./first-scenario-4.png)

Следующим шагом в алгоритме необходимо подсчитать общие суммы покупок по всем клиентам. Для этого переместим компонент [Группировка](./../processors/transformation/grouping.md) в рабочую область сценария. Последовательность обработки данных задается соединением выходного порта узла импорта с входным портом группировки (см. рисунок 4).

![Формирование связи.](./first-scenario-5.png)

В Мастере настройки узла [Группировка](./../processors/transformation/grouping.md) поле Карта клиента задается как группа, а Сумма как показатель. После настройки и выполнения узла группировки в выходном порту содержатся данные об итоговых суммах покупок клиентов.

Далее эти данные сортируются по убыванию суммы при помощи компонента [Сортировка](./../processors/transformation/sorting.md) и затем передаются на узел выделения первых 10 строк таблицы.  Для этого используется компонент [Фильтр строк](./../processors/transformation/row-filter/README.md), в мастере которого задается условие: "№ Номер строки <= 10".

В результирующем сценарии добавляется узел экспорта и/или настраивается [Визуализатор](./../visualization/README.md) результатов (см. рисунок 5).

![Результирующий сценарий.](./first-scenario-6.png)

Блок узлов, выполняющих формирование ТОП 10 клиентов, возможно, сгруппировать в отдельную функцию, поместив их в [Подмодель](./../processors/control/supernode.md). Для этого необходимо выделить эти узлы и при помощи кнопки ![](./../images/icons/common/toolbar-controls/compose-generic-model_default.svg) создать подмодель (см. рисунок 6-7). 

![Выделение блока узлов.](./first-scenario-7.png)

![Преобразование блока узлов в Подмодель.](./first-scenario-8.png)

В дальнейшем подмодель, выполняющая заданную пользователем функцию, может быть опубликована как производный компонент и наравне со стандартными компонентами многократно использоваться в других сценариях. Принципы создания решений на основе собственных компонентов рассматриваются в статье [Проектирование сценариев](./../workflow/README.md).

Перед закрытием пакета его необходимо *сохранить*. Это можно сделать в меню Пакеты (см. рисунок 8).

![Сохранение пакета.](./first-scenario-9.png)