---
description: Матрица доступа пользователей в Loginom. Пользователи. Проектирование сценариев. Просмотр отчётов. Пакетное выполнение. Администрирование. 
---
# Матрица доступов

В данной статье описывается распределение прав доступа в аналитической платформе Loginom. 

Условные обозначения: 

| Обозначение |Описание|
|:-:|:-|
|ADMIN|пользователь с ролью Администрирование|
|USER|пользователь с ролью Проектирование сценариев|
|VIEWER|пользователь с ролью Просмотр отчетов|
|SERVICE|пользователь с ролью Пакетное выполнение|
|●|полный доступ в Loginom Studio|
|○|функционал доступен при наличии у пользователя прав доступа, которые назначаются соответствующими настройками его учетной записи|


|Элемент пользовательского интерфейса или действие|ADMIN|USER|VIEWER|SERVICE|
|:-|:--:|:--:|:--:|:--:|
|[**Главное меню**](./../../interface/main-menu.md)|●|●|●||
|&nbsp;&nbsp;&nbsp;[**Меню**](./../../interface/main-menu.md#меню)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Начало](./../../interface/home-page.md)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Справка|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Задать вопрос](https://qa.loginom.ru/questions/)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;О программе|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Выход|●|●|●||
|&nbsp;&nbsp;&nbsp;[**Пакеты**](./../../interface/packages.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Создать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Открыть||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сохранить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Закрыть||●|●||
|&nbsp;&nbsp;&nbsp;[**Панель навигации**](./../../interface/main-menu.md#навигация)|●|●|●||
|&nbsp;&nbsp;&nbsp;[**Файловое хранилище**](./../../interface/main-menu.md#файлы)|●|●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Личная папка|●|●|●|●|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Общие папки|○|○|○|○|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Полный доступ|○|○|○|○|
|&nbsp;&nbsp;&nbsp;[**Раздел Администрирование**](./../README.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Пользователи](./README.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Общие папки](./../shared-folder.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Параметры](./../parameters.md)|●||||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Диспетчер](./../dispatcher.md)|●||||
|[**Страница Сценарий**](./../../interface/workflow.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Компоненты](./../../processors/standard-components.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавление в сценарий||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Настройка||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удаление из сценария||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Производные компоненты](./../../workflow/derived-component.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Создание||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Использование||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Подключения](./../../integration/connections/README.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Создание||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Настройка||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Использование в сценарии||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удаление||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Ссылки](./../../workflow/reference-to-package.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Модули||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Редактировать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удалить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Задать область видимости||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Публикация пакетов](./../../integration/web-services/README.md)||○|||
|[**Страница Визуализаторы**](./../../visualization/README.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Создание и настройка||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Переименовать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удалить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить в отчеты||●|||
|[**Страница Отчеты**](./../../report/README.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Открыть||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить группу||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Переименовать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сгруппировать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Переместить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удалить||●|||
|[**Страница Веб-сервисы**](./../../integration/web-services/administration-web-services.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Обновить публикацию||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Редактировать||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Завершить||○|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Обновить список||●|||
|[**Страница Переменные**](./../../workflow/variables/README.md)||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Переменные системы](./../../workflow/variables/predefined-variables.md#переменные-системы) (чтение)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Переменные сессии](./../../workflow/variables/predefined-variables.md#переменные-сессии) (чтение)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Переменные пакета](./../../workflow/variables/predefined-variables.md#переменные-пакета) (чтение)<sup>1</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Редактировать<sup>2</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Изменить порядок<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Фильтрация<sup>2</sup>||●|●||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удалить<sup>2</sup>||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Переменные пользователя](./../../workflow/variables/scenario-variables.md)||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Добавить||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Редактировать||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Изменить порядок||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Фильтрация||●|||
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Удалить||●|||
|[**Панель процессы**](./../../interface/processes-panel.md)||●|●|&nbsp;|

<sup>1</sup> Для системных переменных пакета

<sup>2</sup> Для пользовательских переменных пакета