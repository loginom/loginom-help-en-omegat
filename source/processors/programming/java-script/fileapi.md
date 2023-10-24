---
description: Компонент JavaScript в Loginom. Интерфейс для работы с файловой системой. Примеры.
---
# ![](../../../images/icons/components/javascript_default.svg) FileStorage API

`File Storage API` — интерфейс для работы с файловой системой. Представляет набор функций для выполнения различных операций с файлами и папками непосредственно из узла JavaScript.

Для использования File Storage API необходимо импортировать встроенный модуль `builtIn/FS`:

```javascript
import * as fs from "builtIn/FS";
```

## Описание объектов  

### Stats

%spoiler% Описание %spoiler%

```javascript
class Stats {
    isFile(): boolean; // Проверка, объект - файл?
    isDirectory(): boolean; // Проверка, объект - папка?
    isSymbolicLink(): boolean; // Проверка, объект - символическая ссылка?

    mode: number; // Битовое поле, описывающее тип файла и режим доступа
    size: number; // Размер файла в байтах
    atime: Date; // Время последнего доступа к объекту
    mtime: Date; // Время последней модификации объекта
    ctime: Date; // Время последнего изменения объекта
    birthtime: Date; // Время создания объекта
}
```

%/spoiler%

Объект Stats предоставляет информацию об объекте файловой системы.

### FileHandle

%spoiler% Описание %spoiler%

```javascript
class FileHandle {
    valueOf(): number; // Значение файлового дескриптора
}

```

%/spoiler%

Объект FileHandle — представляет файловый дескриптор.

### Dirent 

%spoiler% Описание %spoiler%

```javascript
class Dirent {
    isFile(): boolean; // Проверка, является ли объект обычным файлом
    isDirectory(): boolean; // Проверка, является ли объект папкой
    isSymbolicLink(): boolean; // Проверка, является ли объект символической ссылкой
    name: string; // Имя объекта
} 

```

%/spoiler%

Объект Dirent — представление элемента каталога, который может быть файлом или подкаталогом внутри каталога.

## Функции File Storage

%spoiler% appendFileSync %spoiler%

**appendFileSync(file, data, options)**

* file — полное имя файла или его файловый дескриптор. Принимает значения типа `string`, `FileHandle`. Обязательный параметр.
* data — данные. Принимает значения типа `string`, `ArrayBuffer`, `ArrayBufferView`. Обязательный параметр.
* options (необязательный параметр):
    * writeBOM — запись BOM. Принимает значение типа `boolean`.
    * encoding — кодировка файла. По умолчанию: **'utf8'**.
    * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — флаг файловой системы. По умолчанию: **'a'**.

Добавляет данные в файл, создавая файл, если он еще не существует. Возвращает `undefined`.

%/spoiler%

%spoiler% closeSync %spoiler%

**closeSync(fd)**

* fd — файловый дескриптор. Обязательный параметр

Закрывает дескриптор файла. Возвращает `undefined`.

%/spoiler%


%spoiler% copyFileSync %spoiler%

**copyFileSync(src, dest, mode)**

* src — путь к файлу-источнику операции копирования. Принимает значение типа `string`. Обязательный параметр.
* dest — путь к файлу-приемнику операции копирования. Принимает значение типа `string`. Обязательный параметр.
* mode — необязательный параметр, определяющий поведение операции копирования. Принимает значение типа `number`. Задается маской, которая может состоять из комбинации следующих значений (например, ```constants.COPYFILE_EXCL | constants.COPYFILE_FICLONE```):
    * ``` constants.COPYFILE_EXCL``` — операция копирования завершится ошибкой, если `dest` уже существует.
    * ```constants.COPYFILE_FICLONE``` — использовать механизм копирования при записи (copy-on-write), при котором физический перенос данных не производится. Если операция не поддерживается, то будет произведено обычное копирование.
    * ```constants.COPYFILE_FICLONE_FORCE``` — использовать механизм копирования при записи (copy-on-write). Если операция не поддерживается, то копирование завершится с ошибкой.


Копирует **src** в **dest**. По умолчанию **dest** перезаписывается, если он уже существует. Возвращает `undefined`.

%/spoiler%


%spoiler% existsSync %spoiler%

**existsSync(path)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.

Возвращает `true`, если путь существует, `false` — в противном случае.

%/spoiler%


%spoiler% fstatSync %spoiler%

**fstatSync(fd)**

* fd — файловый дескриптор. Принимает значение типа `FileHandle`. Обязательный параметр.

Возвращает объект [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) для файлового дескриптора.

%/spoiler%


%spoiler% ftruncateSync %spoiler%

**ftruncateSync(fd, len)**

* fd — файловый дескриптор. Принимает значение типа `FileHandle`. Обязательный параметр.
* len — необязательный параметр, который указывает размер в байтах. Принимает значение типа `number`.

Устанавливает длину обычного файла с файловым дескриптором `fd` в `len` байт. Если файл до этой операции был длиннее, то отсеченные данные теряются. Если файл был короче, то он увеличивается, а добавленная часть заполняется нулевыми байтами. Возвращает `undefined`.

%/spoiler%


%spoiler% lstatSync %spoiler%

**lstatSync(path, options)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * throwIfNoEntry. Принимает значение типа `boolean`. Будет ли выдано исключение, если путь в файловой системе не существует. По умолчанию: `true`.

Возвращает объект [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) для `path`. Если `path` — это путь символической ссылки, то возвращает информацию о самой ссылке.

%/spoiler%


%spoiler% mkdirSync %spoiler%

**mkdirSync(path, options, mode)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * recursive. Указывает, следует ли создавать родительские каталоги. Принимает значение типа `boolean`. По умолчанию: `false`.
    * mode. Под Windows не используется. По умолчанию: `0o777`.

Создает каталог.  Возвращает `undefined`.

%/spoiler%


%spoiler% openSync %spoiler%

**openSync(path, flags, mode)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* [flags](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — флаги файловой системы. Определяют, в каком режиме открыть файл. Необязательный параметр. По умолчанию: `r`. 
* mode. Устанавливает права доступа к файлу, когда он создаётся. На Windows влияет на атрибут файла «Только чтение». [Подробнее](https://ru.wikipedia.org/wiki/Chmod). По умолчанию: `0o666`. Принимает значения типа `number`, `string`. 

Возвращает объект, представляющий дескриптор файла.

%/spoiler%


%spoiler% readdirSync %spoiler%

**readdirSync(path, options)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * withFileTypes — параметр, определяющий тип возвращаемого значения функции. По умолчанию: `false`.

Читает содержимое каталога. Если `withFileTypes` — `false`, возвращает массив строк. Если `true`, то возвращает массив объектов `Dirent`.

%/spoiler%


%spoiler% readFileSync %spoiler%

**readFileSync(path, options)**

* path — путь или файловый дескриптор. Принимает значения типа `string`, `FileHandle`. Обязательный параметр.
* options (необязательный параметр):
    * encoding — кодировка файла. По умолчанию: **'utf8'**.
    * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — флаг файловой системы. По умолчанию: **'r'**.

Возвращает содержимое файла `path`. Если `encoding` опция указана, то функция возвращает строку, в противном случае возвращает `ArrayBuffer`.

%/spoiler%


%spoiler% readSync %spoiler%

**readSync(fd, buffer, offset, length, position)**

* fd — файловый дескриптор. Принимает значение `FileHandle`.
* buffer — буфер, в который записываются данные. Принимает значения `ArrayBuffer`, `ArrayBufferView`. Обязательный параметр.
* offset — позиция `buffer` для записи данных. Необязательный параметр. Принимает значение `number`.
* length — количество байт для чтения. Необязательный параметр. Принимает значение `number`.
* position — указывает, с какого места начать чтение в файле. Если `position` равно **null** или **-1**, то данные будут считаны из текущей позиции в файле, и позиция в файле изменится. Если `position` — целое число, то текущая позиция в файле не изменяется. Необязательный параметр. Принимает значение `number`.

Читает в буфер указанный диапазон байтов из файла. Возвращает число прочитанных байт.

%/spoiler%


%spoiler% realpathSync %spoiler%

**realpathSync(path)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.

Возвращает полный путь.

%/spoiler%


%spoiler% renameSync %spoiler%

**renameSync(oldPath, newPath)**

* oldPath — старый путь. Принимает значение типа `string`. Обязательный параметр.
* newPath — новый путь. Принимает значение типа `string`. Обязательный параметр.

Переименовывает файл из `oldPath` в `newPath`. Возвращает `undefined`.

%/spoiler%


%spoiler% rmdirSync %spoiler%

**rmdirSync(path, options)**

* path — путь до каталога. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * recursive. Принимает значение типа `boolean`. Если `true`, выполнить рекурсивное удаление каталога. По умолчанию: `false`.

Удаляет папку. Возвращает `undefined`.

%/spoiler%


%spoiler% rmSync %spoiler%

**rmSync(path, options)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * force. Принимает значение типа `boolean`. Когда `true`, исключение будет игнорироваться, если путь не существует. По умолчанию: `false`.
    * recursive. Принимает значение типа `boolean`. Если `true`, выполнить рекурсивное удаление каталога. По умолчанию: `false`.

Удаляет файлы и каталоги. Возвращает `undefined`.

%/spoiler%


%spoiler% statSync %spoiler%

**statSync(path, options)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* options (необязательный параметр):
    * throwIfNoEntry. Принимает значение типа `boolean`. Будет ли выдано исключение, если путь в файловой системе не существует. По умолчанию: `true`.

Возвращает объект [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) для `path`.

%/spoiler%


%spoiler% truncateSync %spoiler%

**truncateSync(path, len)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.
* len — необязательный параметр, который указывает размер в байтах. Принимает значение типа `number`.

Устанавливает длину обычного файла с именем `path` в `len` байт. Если файл до этой операции был длиннее, то отсеченные данные теряются. Если файл был короче, то он увеличивается, а добавленная часть заполняется нулевыми байтами. Возвращает `undefined`.

%/spoiler%


%spoiler% unlinkSync %spoiler%

**function unlinkSync(path)**

* path — путь. Принимает значение типа `string`. Обязательный параметр.

Удаляет файл. Возвращает `undefined`.

%/spoiler%


%spoiler% writeFileSync %spoiler%

**writeFileSync(path, data, options)**

* path — путь или файловый дескриптор. Принимает значения типа `string`, `FileHandle`. Обязательный параметр.
* data — содержимое файла. Принимает значения типа `ArrayBuffer`, `ArrayBufferView`. Обязательный параметр.
* options (необязательный параметр): 
    * encoding — кодировка файла. По умолчанию: **'utf8'**.
    * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — флаг файловой системы. По умолчанию: **'r'**.
    * writeBOM — запись BOM. Принимает значение типа `boolean`.
    * mode. Влияет на права доступа к файлу. [Подробнее](https://ru.wikipedia.org/wiki/Chmod). Принимает значение типа `number`.

Записывает данные в файл, создавая новый, если он не существует. Возвращает `undefined`.

%/spoiler%


%spoiler% writeSync %spoiler%

**writeSync(fd, buffer, offset, length, position)**

* fd — файловый дескриптор. Принимает значение `FileHandle`.
* buffer — буфер, в который записываются данные. Принимает значения `ArrayBuffer`, `ArrayBufferView`. Обязательный параметр.
* offset — позиция `buffer` для записи данных. Необязательный параметр. Принимает значение `number`.
* length — количество байт для чтения. Необязательный параметр. Принимает значение `number`.
* position — указывает, с какого места начать чтение в файле. Необязательный параметр. Принимает значение `number`.

Записывает `buffer` в указанный файл. 

%/spoiler%

## Флаги файловой системы

* `a`: открыть файл для добавления. Файл создается, если он не существует.
* `ax`: такой же, как `a`, но при использовании этого флага возникнет ошибка, если путь существует.
* `a+`:  открыть файл для чтения и добавления. Файл создается, если он не существует.
* `ax+`: такой же, как `a+`, но при использовании этого флага возникнет ошибка, если путь существует.
* `as`: открыть файл для чтения и добавления в синхронном режиме. Файл создается, если он не существует. Отключает кэширование данных системой при записи. Данные пишутся сразу на диск, а не в кэш системы.
* `as+`: открыть файл для добавления в синхронном режиме. Файл создается, если он не существует. Отключает кэширование данных системой при записи. Данные пишутся сразу на диск, а не в кэш системы.
* `r`: открыть файл для чтения. При использовании этого флага возникнет ошибка, если файл не существует.
* `r+`: открыть файл для чтения и записи. При использовании этого флага возникнет ошибка, если файл не существует.
* `rs+`: открыть файл для чтения и записи в синхронном режиме. Отключает кэширование данных системой при записи. Данные пишутся сразу на диск, а не в кэш системы. 
* `w`: открыть файл для записи. Файл создается (если он не существует), или удаляется содержимое (если он существует).
* `wx`: такой же, как `w`, но при использовании этого флага возникнет ошибка, если путь существует.
* `w+`: открыть файл для чтения и записи. Файл создается (если он не существует), или удаляется содержимое (если он существует).
* `wx+`: такой же, как `w+`, но при использовании этого флага возникнет ошибка, если путь существует.


## Список поддерживаемых кодировок

* `latin1`, `binary` — кодировка **ISO 8859-1**, **Latin 1**, совпадает с первыми 256 кодовыми позициями Unicode.
* `utf-8`, `utf8` — кодировка **UTF8**.
* `utf16le`, `utf-16le`, `ucs2`, `ucs-2` — кодировка **UTF16 Little-Endian**.
* `сp<кодовая страница>`— однобайтовая кодовая страница.
* `iso-8859-<номер>`.

## Примеры

### Использование File Storage API

#### Получение списка файлов

```javascript

import * as fs from "builtIn/FS";

let path = "."; // Получить содержимое текущего каталога
let dirents = fs.readdirSync(path, { withFileTypes: true }); // Получить содержимое каталога path в виде массива объектов Dirent
dirents.sort((e1, e2) => (+e2.isDirectory() - +e1.isDirectory()) || (e2.name > e1.name ? -1 : e1.name == e2.name)); // Упорядочить массив объектов Dirent
for (let i = 0, l = dirents.length; i < l; i++) {
    let dirent = dirents[i];
    let isDir = dirent.isDirectory(),
        name = dirent.name;    
    let entry_info = isDir ? `${name}: папка` : `${name}: файл`; // Проверить - каталог или файл?
    if (dirent.isSymbolicLink()) // Проверить - символическая ссылка?
        entry_info += ", символическая ссылка";    
    if (!isDir) {
        let stat = fs.statSync(`${path}/${name}`); // Получить информацию о файле в виде объекта Stat
        entry_info += `, размер в байтах: ${stat.size}`;
    }
    console.log(entry_info);    
}

```

#### Копирование файла из папки user в папку loginom

```javascript

fs.copyFileSync("/user/test.lgp", "/user/loginom/test.lgp");


```

#### Перемещение файла из папки user в папку loginom

```javascript

fs.renameSync("/user/test.lgp", "/user/loginom/test.lgp");

```

#### Удаление файла test.lgp

```javascript

fs.unlinkSync("/user/test.lgp")

```


#### Получение списка объектов типа Dirent

```javascript

fs.readdirSync("/user/test.lgp", {withFileTypes: true}) 

```


#### Усечение файла до 10 первых байт

```javascript

fs.truncateSync("/user/loginom/test.lgp", 10);

```

#### Копирование папки вместе с содержимым

```javascript

import * as fs from "builtIn/FS";

function copyFolderRecursive(srcPath, dstPath) {
    for (const entry of fs.readdirSync(srcPath, { withFileTypes: true })) {
        let name = entry.name,
            src = srcPath + "/" + name,
            dst = dstPath + "/" + name;
        if (entry.isFile()) {            
            fs.copyFileSync(src, dst);
        } else if (entry.isDirectory()) {            
            fs.mkdirSync(dst);
            copyFolderRecursive(src, dst);
        }
    }
}

function copyFolder(srcPath, dstPath) {
    if (!fs.existsSync(dstPath))
        fs.mkdirSync(dstPath);
    copyFolderRecursive(srcPath, dstPath);
}

copyFolder("/user/deductor", "/user/loginom");

```