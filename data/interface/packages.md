---
description: Страница "Пакеты" аналитической платформы Loginom. Основные действия с пакетами в Loginom. Свойства пакета.
---
# ![ ](..\images\icons\common\system-object\package_default.svg)Packages

The main operations with [Packages](./../quick-start/package.md) are listed on this page.

This page can be opened in two ways:

* using the ![ ](..\images\icons\common\system-object\package_default.svg)*Packages* button in [Address bar](./address-bar.md);
* using the [Navigation](./main-menu.md#navigatsiya) panel, selecting the ![ ](..\images\icons\common\system-object\package_default.svg)*Packages* section.

## Interface

Открытые *Пакеты* перечислены в таблице с полями:

* **Имя** — имя *Пакета*, соответствующее имени файла без расширения, приведенному к правильному идентификатору.
* **Path**: the path to the opened *Package*. В серверных редакциях путь указывается от корневого каталога. В настольных редакциях указывается абсолютный путь (подробнее см. в статье [Файловое хранилище](./../location_user_files.md)).
* **Версия** — версия открытого *Пакета* (настраивается в *Свойствах* пакета).
* **Опубликован** — признак опубликованного *Пакета* (если пакет опубликован, то в ячейке стоит знак ●, если не опубликован — ячейка пустая).
* **Локаль** — локаль пакета (настраивается в *Свойствах* пакета).

По данным полям можно отсортировать список по возрастанию ![ ](./../images/icons/common/toolbar-controls/low-to-hight_default.svg), по убыванию ![ ](./../images/icons/common/toolbar-controls/hight-to-low_default.svg), либо отменить сортировку.

The following commands are available on the toolbar:

* ![ ](..\images\icons\common\toolbar-controls\new_default.svg) **Создать** — открывает окно для задания пути и имени нового *Пакета*, после сохранения открывает пустой *Пакет*. Под кнопкой ![ ](..\images\icons\common\toolbar-controls\down_default.svg) доступна команда
   ![ ](..\images\icons\common\toolbar-controls\temporary_default.svg) **Создать черновик**, которая создает временный *Пакет*, без текущего сохранения.
* ![ ](..\images\icons\common\toolbar-controls\open_default.svg) **Open** enables to open the selection window of the existing *Package*.
* ![ ](..\images\icons\common\toolbar-controls\save_default.svg) **Сохранить** — сохраняет выделенный в списке *Пакет*. Под кнопкой ![ ](..\images\icons\common\toolbar-controls\down_default.svg) доступна команда ![ ](..\images\icons\common\toolbar-controls\save-as_default.svg) **Сохранить как**, которая позволяет сохранить выделенный *Пакета* под новым именем и/или по другому доступному пути.
* ![ ](..\images\icons\common\toolbar-controls\save-all_default.svg) **Сохранить все** — сохраняет все открытые *Пакеты*.
* ![ ](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg)
   **Автосохранение** — открывает окно для задания параметров [автосохранения пакетов](#avtosokhranenie-paketov). По умолчанию автосохранение пакетов не выполняется.
* ![ ](..\images\icons\common\toolbar-controls\publish_default.svg)
   **Опубликовать**[^1] — открывает окно для публикации *Пакета*.
* ![ ](..\images\icons\common\toolbar-controls\edit_default.svg) **Properties** enables to open the [properties](#svoystva-paketa) configuration window of the selected *Package*.
* ![ ](..\images\icons\common\toolbar-controls\close_default.svg) **Закрыть** — закрывает выделенный в списке *Пакет*.
* ![ ](..\images\icons\common\toolbar-controls\close-all_default.svg) **Закрыть все** — закрывает все открытые *Пакеты*.

[^1]: It is available only for the editions with possibility to publish [Web Services](./../integration/web-services/publishing-web-service.md).

When closing the *Package* with unsaved changes, you will be requested to save it with the following variants:

* **Yes** will save and close this *Package*.
* **No** will cancel changes (the *Package* will be closed without saving!).
* **Cancel** will stop closing of the *Package* or further closing of still not closed *Packages*.

Контекстное меню, вызываемое кликом правой клавиши мыши, в основном повторяет перечисленный выше набор команд:

* For the opened *Packages*:
   * ![ ](..\images\icons\common\toolbar-controls\save_default.svg) **Save package**
   * ![ ](..\images\icons\common\toolbar-controls\save-as_default.svg) **Save package as…**
   * ![ ](..\images\icons\common\toolbar-controls\edit_default.svg) **Edit properties…**
   * ![ ](..\images\icons\blank.svg) **Показать в папке** — открывает папку, содержащую выделенный *Пакет*, и устанавливает на нем фокус.
   * ![ ](..\images\icons\common\toolbar-controls\close_default.svg) **Close package…**
   * ![ ](..\images\icons\blank.svg) **Закрыть другие пакеты…** — закрывает все *Пакеты*, кроме выделенного.
* For the free zone:
   * ![ ](..\images\icons\common\toolbar-controls\new_default.svg) **New package…**
   * ![ ](..\images\icons\common\toolbar-controls\temporary_default.svg) **New draft**
   * ![ ](..\images\icons\common\toolbar-controls\save-all_default.svg) **Save all packages**
   * ![ ](..\images\icons\common\toolbar-controls\close-all_default.svg) **Close all packages…**
* General:
   * ![ ](..\images\icons\common\toolbar-controls\refresh_default.svg) **Обновить** — обновляет список пакетов.

Hotkeys are available for some commands:

* %kbd F2 % — редактировать свойства *Пакета*;
* %kbd Ctrl O % — открыть *Пакет*;
* %kbd Ctrl S % — сохранить *Пакет*;
* %kbd Ctrl Shift S % — сохранить все *Пакеты*;
* %kbd Alt P % — опубликовать *Пакет*.

## Package Properties

It enables to set the following parameters of the *Package*:

* **Name**: name of the *Package*. Редактирование возможно для *Черновика*. It will be set to the file name and correct identifier after saving.
* **Версия** — версия *Пакета*, по умолчанию равна `1.0.0`.
* **Локаль** — локаль пакета, по умолчанию соответствует действующей локали сервера. Новое значение применяется после закрытия пакета и всех зависимых от него открытых пакетов. Если локаль была изменена, но не применена, то редактор смены локали выделяет значение локали красной рамкой.
* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Сравнивать строковые уникальные значения бинарно** — опцию следует включить, если предполагается использование узлов с сохранением уникальных строковых значений. При изменении данной настройки может потребоваться переобучение уже обученных узлов. По умолчанию опция выключена.
* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Использовать относительные пути базового пакета** — опцию следует включать в *Пакете* с базовым узлом, если у данного узла есть относительные пути на файлы, либо предполагается использовать пути в базовых узлах относительно данного *Пакета*. This option is enabled by default.

> **Важно:** после смены локали некоторые узлы, например: [Сортировка](./../processors/transformation/sorting.md), [Экспорт в текстовый файл](./../integration/export/txt-csv.md) и др. могут работать по-другому.

## Автосохранение пакетов

Опция автосохранения пакетов автоматически сохраняет пакет с заданным интервалом времени. Пакеты сохраняются в файлы с расширением lgp.autosave рядом с .lgp файлами. Сами .lgp файлы при этом не перезаписываются.

Черновики и пакеты, открытые только на чтение, не сохраняются.

Параметры автосохранения задаются при нажатии на кнопку ![ ](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg) **Автосохранение**:

* ![ ](..\images\icons\ext\checkbox-states\checked_default.svg) **Включить автосохранение пакетов** — флаг включает/отключает опцию автосохранения пакетов.

* **Сохранять каждые (минут)** — параметр доступен для редактирования при установленном флаге *Включить автосохранение пакетов* и задает интервал времени, через который пакет автоматически сохраняется. По умолчанию автосохранение выполняется каждые 5 минут.

Параметры вступают в силу после нажатия кнопки *Применить*.

Если автосохранение включено, то кнопка ![Автосохранение](..\images\icons\common\toolbar-controls\toolbar-controls_18x18_auto-save_default.svg) подсвечивается.

Заданные настройки автосохранения пакетов сохраняются в локальном хранилище браузера и не сбрасываются при закрытии сессии пользователя.

