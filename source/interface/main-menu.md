---
description: Главное меню аналитической платформы Loginom. Кнопки главного меню. Создать пакет в Loginom. Открыть пакет в Loginom. Сохранить пакет в Loginom. Навигация по объектам пакета в Loginom. Файловый менеджер в Loginom. Раздел Администрирование в аналитической платформе Loginom.
---
# Главное меню

Главное меню расположено в левой части программного окна и содержит следующие кнопки:

* [Меню](#imagesiconssystemtoolbar48x48logodefaultsvg-menyu)
* [Пакеты](#imagesiconssystemtoolbar48x48packages-menudefaultsvg-pakety)
* [Навигация](#imagesiconssystemtoolbar48x48compasdefaultsvg-navigatsiya)
* [Администрирование](#imagesiconssystemtoolbar48x48admindefaultsvg-administrirovanie)
* [Файлы](#imagesiconssystemtoolbar48x48filestoragedefaultsvg-fayly)
* [Процессы](#imagesiconssystemtoolbar48x48infodefaultsvg-protsessy)

## ![ ](./../images/icons/app/system-toolbar/controls/logo_default.svg) Меню

Нажатие на кнопку открывает панель со следующими командами:

* ![ ](./../images/icons/common/system-object/homepage_default.svg) **Начало** — переход на [страницу «Начало»](./home-page.md).
* ![ ](./../images/icons/common/main-menu/help_default.svg) **Справка** — вызов справки.
* ![ ](./../images/icons/common/main-menu/qa_default.svg) **Задать вопрос** — переход на форум [Loginom QA](https://qa.loginom.ru/questions/).
* ![ ](./../images/icons/common/main-menu/about_default.svg) **О программе** — открывает страницу «О программе».
* ![ ](./../images/icons/common/main-menu/lock_default.svg) **Заблокировать (Ctrl+Alt+L)** — команда присутствует только в серверных редакциях платформы и блокирует сессию пользователя. Сессия пользователя не завершается, все запущенные процессы продолжают выполняться, но на экране отображается страница с формой ввода пароля. Чтобы разблокировать сессию необходимо ввести пароль пользователя, логин которого указан в форме ввода, и нажать кнопку *Разблокировать*.
* ![ ](./../images/icons/common/main-menu/exit_default.svg) **Выход** — закрытие всех Пакетов и выход из приложения (в Desktop редакциях этот пункт меню называется **Закрыть** и выполняет закрытие всех Пакетов и приложения).

## ![ ](./../images/icons/app/system-toolbar/controls/packages-menu_default.svg) Пакеты

После нажатия на данную кнопку открывается панель с командами:

* ![](./../images/icons/common/main-menu/new-file_default.svg) **Создать новый...** — создание нового Пакета.
* ![](./../images/icons/common/main-menu/temporary-file_default.svg) **Создать черновик...** — создание временного Пакета, не сохраняя его.
* ![](./../images/icons/common/main-menu/open-file_default.svg) **Открыть...** — открытие существующего Пакета.
* ![](./../images/icons/common/main-menu/save-file_default.svg) **Сохранить** — сохранение Пакета или его изменений в текущей директории.
* ![](./../images/icons/common/main-menu/save-as-file_default.svg) **Сохранить как...** — сохранение Пакета в выбранной директории.
* ![](./../images/icons/common/main-menu/save-all-files_default.svg) **Сохранить все** — сохранение всех открытых пакетов.
* ![](./../images/icons/common/main-menu/close-file_default.svg) **Закрыть** — закрытие открытого пакета.
* ![](./../images/icons/common/main-menu/close-all-file_default.svg) **Закрыть все...** — закрытие всех открытых пакетов.

>**Примечание:** команды «Сохранить», «Сохранить как...», «Сохранить все», «Закрыть», «Закрыть все...» доступны при открытом Пакете.

## ![ ](./../images/icons/app/system-toolbar/controls/compas_default.svg) Навигация
Находится в левой верхней части программы.

Команда открывает древовидную структуру Пакета, позволяющую быстро перемещаться по его объектам (см. рисунок 1). Для этого необходимо нажать правой кнопкой мыши на пакет, сценарий или другой элемент в дереве.

![Навигация.](./navigation.png)  
*Рисунок 1. Меню Навигации*

Пункты меню в разделе навигация при нажатии правой кнопкой мыши на *пакеты* или *сценарий* (главное меню):      

* **Перейти(Enter)**: Будет выполнен переход в выбранную вкладку навигации.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_open-all_default.svg) **Развернуть**: Отобразит файловую структуру выбранного объекта.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_collapce-all_default.svg) **Свернуть**: Скроет файловую структуру выбранного объекта.
* **Развернуть\Свернуть до узлов**: Отобразит\Скроет файловую структуру всей навигации.
* ![](./../images/icons/common/toolbar-controls/icons_ext_checkbox-states_sliced_18x18_unchecked_default.svg) **Отображать все порты**: Галочка, которая позволяет отобразить\скрыть имеющиеся порты.
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_find_default.svg) **Найти узел**: Появится специальное окно для поиска узла.

Существует возможность найти *узел* (CTRL + F) сценария по одному из трёх свойств объекта:
1. Метка.
2. Имя.
3. GUID (Уникальный идентификатор узла).  

![Поиск](..\images\search.png)    
*Рисунок 2. Поиск узлов* 

При нажатии правой кнопкой мыши на определенный *пакет* (его название) появляются дополнительные пункты меню:
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_plus-native_default.svg) **Добавить** : Создает новый модуль.  
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_publish-default.svg) **Опубликовать**: Переходит в [добавление веб-сервиса](./../integration/web-services/package-publishing-wizard.md). 
* **Свойства** : Переходим в меню свойства пакета. 
* **Закрыть пакет**. 

При нажатии правой кнопкой мыши на *модули* появляются дополнительные пункты меню:
* ![](./../images/icons/common/toolbar-controls/toolbar-controls_18x18_delete_default.svg) **Удалить узел**: Удаляет выбранный модуль.
* **Настройка модификатора доступа**: Позволяет изменить [модификатор доступа](./../workflow/access-modifier.md) для модуля.   
* **Свойства**: Позволяет переименовать *модуль*.
   

При нажатии правой кнопки мыши на *узел* добавляются еще 3 дополнительных пункта меню:  
* ![](./../images/icons/common/toolbar-controls/setup_default.svg) **Настроить узел**: Осуществляется переход в настройку выбранного узла.
* ![](./../images/icons/common/toolbar-controls/launch-node_default.svg) **Открыть/закрыть узел**: Открывается/закрывается узел.
*  ![](./../images/icons/common/toolbar-controls/configure-viewers_default.svg) **Показать визуализаторы**: Осуществляется переход к визуализаторам выбранного узла.



## ![ ](./../images/icons/app/system-toolbar/controls/admin_default.svg) Администрирование

Команда меню открывает страницу [«Администрирование»](./../admin/README.md), на которой в серверных редакциях платформы осуществляется управление пользователями, рабочими папками и параметрами работы сервера, а в настольных редакциях - параметрами логирования. В серверных редакциях доступ в данный раздел имеют только пользователи с ролью Администратор.

## ![ ](./../images/icons/app/system-toolbar/controls/filestorage_default.svg) Файлы

Команда доступна в серверных редакциях платформы и открывает страницу [«Файлы»](./../location_user_files.md) - менеджер для работы с файловым хранилищем.

## ![ ](./../images/icons/app/system-toolbar/controls/info_default.svg) Процессы

Команда открывает панель [«Процессы»](./processes-panel.md), которая предназначена для получения дополнительной информации о процессах обработки данных узлами *Сценария*.
