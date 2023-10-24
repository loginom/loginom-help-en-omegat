---
description: Обзор файлового хранилища данных в Loginom. Способы работы с хранилищем, доступные команды. Загрузка файлов. Базовые операции по работе с содержимым хранилища.
---
# ![](./images/icons/common/system-object/filestorage_default.svg) File Storage

All user files are kept on the Loginom server in the Enterprise, Standard and Team editions (the Loginom server is included into the supply package). Таким образом, перед тем, как использовать какой-либо файл в сценарии, его необходимо предварительно поместить в файловое хранилище на сервере. File manager is used for the file storage operation in these editions.

> **Примечание:** в настольных редакциях Personal и Community файловый менеджер отсутствует, пользователь имеет доступ ко всему файловому пространству локального компьютера.

При работе с сервером Loginom каждый из пользователей имеет личную [папку](././admin/parameters.md#papki) в файловом хранилище.
Файловый менеджер вызывается по кнопке ![](./images/icons/app/system-toolbar/controls/filestorage_default.svg) *Главного меню* и предоставляет необходимый инструментарий для работы с файловым хранилищем.

В интерфейсе файлового менеджера отображается иерархическая структура доступных пользователю папок и файлов в виде таблицы с полями: *Имя*, *Тип*, *Размер*, *Дата изменения*, *Только чтение* и *Путь*. Переход внутрь папки осуществляется двойным кликом курсора по ней, а переход в папку уровнем выше — двойным кликом по кнопке ![](./images/icons/common/main-menu/open-folder_default.svg)**..** . Для перехода между папками можно также использовать панель *Навигация*, в которой отображается иерархия папок пользователя в виде дерева.

**Панель инструментов** файлового менеджера содержит следующие команды:

* ![](./images/icons/common/toolbar-controls/upload_default.svg) **Загрузить  (Insert)** — позволяет загрузить файл в открытую на текущий момент директорию, файл для загрузки следует выбрать в открывшемся окне проводника ОС.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **Создать каталог** — создает папку в текущей директории.
* ![](./images/icons/common/toolbar-controls/download_default.svg) **Скачать** — позволяет скачать выбранный элемент из файлового хранилища в системную папку загрузок пользователя (аналогичное действие выполняется по двойному клику левой кнопкой мыши).
* ![](.\images\icons\common\toolbar-controls\download-zip_default.svg) **Скачать ZIP** — позволяет скачать выбранный элемент из файлового хранилища в системную папку загрузок пользователя в виде ZIP-архива.
* ![](./images/icons/common/toolbar-controls/rename_default.svg) **Переименовать...(F2)** — изменить имя выбранного элемента.
* ![](./images/icons/common/toolbar-controls/copy_default.svg) **Копировать (Ctrl+C)** — пометить выбранный элемент для копирования.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Вставить (Ctrl+V)** — вставить элемент, помеченный для копирования или для вырезания, в текущую директорию.
* ![](./images/icons/common/toolbar-controls/cut_default.svg) **Вырезать (CTRL+X)** — пометить выбранный элемент для вырезания.
* ![](./images/icons/common/toolbar-controls/delete_default.svg) **Удалить...(Delete)** — удалить выбранный элемент.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Обновить список (Alt+F5)** — отображает актуальное содержание текущей директории.

> **Примечание:** кнопки **Копировать**, **Вырезать** и **Вставить** как на **Панели инструментов**, так и в **Контекстном меню** работают только внутри файлового менеджера и не связаны с буфером обмена ОС.

Клик правой кнопкой мыши по элементу в файловом менеджере вызывает **Контекстное меню**, которое содержит следующие команды:

* ![](./images/icons/common/toolbar-controls/download_default.svg) **Скачать** — позволяет скачать выбранный элемент из файлового хранилища в системную папку загрузок пользователя (аналогичное действие выполняется по двойному клику левой кнопкой мыши).
* ![](.\images\icons\common\toolbar-controls\download-zip_default.svg) **Скачать ZIP** — позволяет скачать выбранный элемент из файлового хранилища в системную папку загрузок пользователя в виде ZIP-архива.
* ![](./images/icons/common/toolbar-controls/rename_default.svg) **Переименовать...(F2)** — изменить имя выбранного элемента.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **Создать каталог** — создает папку в текущей директории.
* ![](./images/icons/common/toolbar-controls/new_default.svg) **Создать пакет** — создает новый пакет в текущей директории.
* **Копировать полный путь** — копирование полного имени выделенного элемента в буфер обмена. Если выделено несколько элементов, то скопирует полные имена всех элементов через разделитель «перевод строки».
* ![](./images/icons/common/toolbar-controls/copy_default.svg) **Копировать (Ctrl+C)** — пометить выбранный элемент для копирования.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Вставить (Ctrl+V)** — вставить элемент, помеченный для копирования или для вырезания, в текущую директорию.
* ![](./images/icons/common/toolbar-controls/cut_default.svg) **Вырезать (CTRL+X)** — пометить выбранный элемент для вырезания.
* ![](./images/icons/common/toolbar-controls/delete_default.svg) **Удалить...(Delete)** — удалить выбранный элемент.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Обновить список (Alt+F5)** — отображает актуальное содержание текущей директории.

> **Примечание:** копирование полного пути файла возможно только при подключении по протоколу HTTPS. Если будет подключение по протоколу HTTP, то Loginom выдаст предупреждение: «Для данной операции необходимо соединение по протоколу HTTPS».

Клик правой кнопкой мыши по свободной области файлового менеджера вызывает **Контекстное меню**, которое содержит следующие команды:

* ![](./images/icons/common/toolbar-controls/download_default.svg) **Загрузить (Insert)** — позволяет загрузить файл в открытую на текущий момент директорию, файл для загрузки следует выбрать в открывшемся окне проводника ОС.
* ![](./images/icons/common/toolbar-controls/add-folder_default.svg) **Создать каталог** — создает папку в текущей директории.
* ![](./images/icons/common/toolbar-controls/new_default.svg) **Создать пакет** — создает новый пакет в текущей директории.
* ![](./images/icons/common/toolbar-controls/paste_default.svg) **Вставить (Ctrl+V)** — вставить элемент, помеченный для копирования или для вырезания, в текущую директорию.
* ![](./images/icons/common/toolbar-controls/refresh_default.svg) **Обновить список (Alt+F5)** — отображает актуальное содержание текущей директории.

Поддерживается загрузка файлов методом *Drag and Drop*, т. namely, by dragging files to the file manager window. In this case, files are copied.

There are the following ways to select several items:

* each of them can be selected with a checkbox;
* it is possible to select them alternately by pressing *Ctrl* button;
* it is possible to select the first item, and then select the last item in the sequence of files by pressing *Shift* button.

Поддерживается возможность перехода между первым и последним объектом посредством кнопок *Home* (начало списка) и *End* (конец списка).

Для сортировки элементов текущей директории по определенному параметру следует нажать на заголовок одного из столбцов таблицы файлового менеджера: *Имя*, *Тип*, *Размер*, *Дата изменения*, *Только чтение* или *Путь*.

При первом нажатии на заголовок столбца выполняется сортировка по возрастанию ![](./images/icons/common/toolbar-controls/low-to-hight_default.svg), при втором — по убыванию ![](./images/icons/common/toolbar-controls/hight-to-low_default.svg).

В заголовке таблицы файлового менеджера слева от поля *Имя* присутствует чекбокс, а справа от поля *Путь* — кнопка ![](./images/icons/common/toolbar-controls/delete-all_default.svg) **Удалить все**:

* при выставлении флага выделяются все элементы в текущей директории;
* при нажатии на кнопку ![](./images/icons/common/toolbar-controls/delete-all_default.svg) **Удалить все** — удаляются все элементы текущей директории.

Отображение каждого столбца таблицы файлового менеджера можно включить или отключить. Для этого следует навести курсор на заголовок любого столбца и нажать на появившуюся кнопку ![](./images/icons/common/toolbar-controls/down_default.svg), затем перевести курсор на строку ![](./images/icons/grid/columns.svg) *Столбцы* и в появившемся списке выставить флаги для тех столбцов, которые нужно отобразить, или снять флаги для тех столбцов, которые нужно скрыть.
