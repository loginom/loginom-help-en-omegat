# The First Workflow

In the case of [Enterprise](https://loginom.ru/platform/pricing#edition-enterprise), [Standard](https://loginom.ru/platform/pricing#edition-standard) and [Team](https://loginom.ru/platform/pricing#edition-team) delivery versions, when starting the software home login page is opened. It is required to log in having enered password and login. Login and password are provided by the administrator, but there is a default user - login in the case of the software installation: *user*, without password. There is no authorization for the [Personal](https://loginom.ru/platform/pricing#edition-personal) version.

Upon authorization the action selection window will be opened (the [Start](../interface/home-page.md) page). Using this window you can perform the following operations with packages.

* **Create a package** — creation of the new package. You will be asked to show the path to save the package.
* **Create a draft** — creation of the new package without preliminary saving. It is possible to save the package only during the process of work with it.
* **Open a package** — opening of the earlier created package.

> **Important:** the software doesn't auto save. When closing the software window (browser tabs), all changes will be lost.

Upon package selection, a user will enter the working space of the software. It can be divided into four main areas (refer to Figure 1):

1. The main menu with the following buttons is located on the left: Menu, Packages, Navigation, [Files](../location_user_files.md), [Processes](../interface/processes-panel.md).
2. The upper part displays tabs of the opened packages. It contains address line and navigation elements for packages and their parts.
3. Desktop is located to the right of the main menu. It contains the left panel where working components, solution structure (packages and their parts), area of workflow construction and data visualization are displayed.
4. The Processes panel is located in the lower part of the window. It is concealed by default but it is possibble to lock it.

![Working Space of Studio.](./first-scenario-1.png)

Upon package creation a user will see the Workflow Construction Area (6) and the Components panel (5) which contains the standard components provided by the platform (refer to Figure 2).

![The Workflow Construction Area and the Components Panel](./first-scenario-2.png)

In the simplest case the workflow will import the data from the external sources or it will transform them and export (send to report).
Создадим простой сценарий, формирующий ТОП10 лучших клиентов.

Сценарий выполнит действия:

* Импорт из файла [Sales.txt](../attach/Sales.txt) информации о продажах;
* Выделение 10 клиентов с наибольшими суммами покупок;
* Экспорт полученных результатов.

Для того чтобы использовать в сценарии какой-либо компонент, его необходимо перенести мышью из панели компонентов в область построения сценария.

Выберем в разделе Импорт компонент [Текстовый файл](../integration/import/txt-csv.md) и перенесем его в область построения (см. Figure 2). При этом создастся узел сценария, выполняющий действие импорта. При клике мышкой на узле отобразятся иконки возможных действий. Вызовем [Мастер настройки](../integration/import/txt-csv.md) (см. рисунок 3).

![Вызов мастера настройки узла.](./first-scenario-3.png)

Пройдем шаги мастера, указав в параметре Имя файла местоположение файла Sales.txt.

После настройки узла выполним его, используя меню возможных действий. Теперь в выходном порте узла присутствуют импортированные данные, которые можно увидеть, выбрав ![ ](../images/icons/toolbar-controls/show-fast-viewer_default.svg) [Быстрый просмотр…](../visualization/preview/quick-view.md) в контекстном меню порта (см. рисунок 4).

![Вызов быстрого просмотра.](./first-scenario-4.png)

Следующим шагом в алгоритме необходимо подсчитать общие суммы покупок по всем клиентам. Для этого переместим компонент [Группировка](../processors/transformation/grouping.md) в рабочую область сценария. Последовательность обработки данных задается соединением выходного порта узла импорта с входным портом группировки (см. рисунок 5).

![Формирование связи.](./first-scenario-5.png)

В Мастере настройки узла [Группировка](../processors/transformation/grouping.md) поле Карта клиента задается как группа, а Сумма как показатель. После настройки и выполнения узла группировки в выходном порту содержатся данные об итоговых суммах покупок клиентов.

Далее эти данные сортируются по убыванию суммы при помощи компонента [Сортировка](../processors/transformation/sorting.md) и затем передаются на узел выделения первых 10 строк таблицы.  Для этого используется компонент [Фильтр строк](../processors/transformation/row-filter/README.md), в мастере которого задается условие: "№ Номер строки <= 10".

В результирующем сценарии добавляется узел экспорта и/или настраивается [Визуализатор](../visualization/README.md) результатов (см. рисунок 6).

![Результирующий сценарий.](./first-scenario-6.png)

Блок узлов, выполняющих формирование ТОП 10 клиентов, возможно, сгруппировать в отдельную функцию, поместив их в [Подмодель](../processors/control/submodel.md). Для этого необходимо выделить эти узлы и при помощи кнопки ![](../images/icons/toolbar-controls/compose-generic-model_default.svg) создать подмодель.

![Выделение блока узлов.](./first-scenario-7.png)

![Преобразование блока узлов в Подмодель.](./first-scenario-8.png)

В дальнейшем подмодель, выполняющая заданную пользователем функцию, может быть опубликована как производный компонент и наравне со стандартными компонентами многократно использоваться в других сценариях. Принципы создания решений на основе собственных компонентов рассматриваются в статье [Проектирование сценариев](../scenario/README.md).

Перед закрытием пакета его необходимо *сохранить*. Это можно сделать в меню Пакеты (см. Figure 9).

![Save Package](./first-scenario-9.png)
