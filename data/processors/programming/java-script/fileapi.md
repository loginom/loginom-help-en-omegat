---
description: Компонент JavaScript в Loginom. Интерфейс для работы с файловой системой. Примеры.
---
# ![](../../../images/icons/components/javascript_default.svg) FileStorage API

`File Storage API` — file system operation interface.  It provides a set of functions for execution of different operations with files and folders directly from the JavaScript node.

To use File Storage API, it is required to import the built-in `builtIn/FS` module:

```javascript
import * as fs from "builtIn/FS";
```

## Objects Description

### Stats

%spoiler% Description %spoiler%

```javascript
class Stats {
    isFile(): boolean; // Authentification, object - file?
    isDirectory(): boolean; // Authentification, object - folder?
    isSymbolicLink(): boolean; // Authentification, object - symbolic link?

    mode: number; // The bit-field that describes file type and access mode
    size: number; // File size in bytes
    atime: Date; // Time of the last access to object
    mtime: Date; // Time of the last object modification
    ctime: Date; // Time of the last object change
    birthtime: Date; // Time of the object creation
}
```

%/spoiler%

Stats object provides information on the file system object.

### FileHandle

%spoiler% Description %spoiler%

```javascript
class FileHandle {
    valueOf(): number; //  File descriptor value
}

```

%/spoiler%

Объект FileHandle — represents file descriptor.

### Dirent

%spoiler% Description %spoiler%

```javascript
class Dirent {
    isFile(): boolean; // Check whether the object is a regular file
    isDirectory(): boolean; // Check whether the object is a folder
    isSymbolicLink(): boolean; // Check whether the object is a symbolic link
    name: string; // Object name
}

```

%/spoiler%

Объект Dirent — представление элемента каталога, который может быть файлом или подкаталогом внутри каталога.

## File Storage Functions

%spoiler% appendFileSync %spoiler%

**appendFileSync(file, data, options)**

* file — full file name or its file descriptor. It takes the values of the `string`, `FileHandle` types. Required parameter.
* data — data. It takes the value of the `string`, `ArrayBuffer`, `ArrayBufferView` types. Required parameter.
* options (optional parameter):
   * writeBOM — write BOM. It takes the value of the `boolean` type.
   * encoding — file encoding. By default: **'utf8'**.
   * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — file system checkbox. By default: **'a'**.

It adds data to file creating a file if it does not exist yet. It returns `undefined`.

%/spoiler%

%spoiler% closeSync %spoiler%

**closeSync(fd)**

* fd — file descriptor. The required parameter.

It closes file descriptor. It returns `undefined`.

%/spoiler%


%spoiler% copyFileSync %spoiler%

**copyFileSync(src, dest, mode)**

* src — path to the source file of the copy operation. It takes the value of the `string` type. Required parameter.
* dest — path to the destination file of the copy operation. It takes the value of the `string` type. Required parameter.
* mode — optional parameter that defines the copy operation behaviour. It takes the value of the `number` type. It is set by the mask that can consist of the combination of the following values (for example, ```constants.COPYFILE_EXCL | constants.COPYFILE_FICLONE```):
   * ``` constants.COPYFILE_EXCL``` — copy operation will be finished with an error if `dest` already exists.
   * ```constants.COPYFILE_FICLONE``` — use copying mechanism when writing (copy-on-write) when the physical data transfer is not performed. If the operation is not supported, the regular copying process will be performed.
   * ```constants.COPYFILE_FICLONE_FORCE``` — use copying mechanism when writing (copy-on-write). If the operation is not supported, the copying process will be finished with an error.


It copies **src** to **dest**. By default, **dest** is rewritten if it already exists. It returns `undefined`.

%/spoiler%


%spoiler% existsSync %spoiler%

**existsSync(path)**

* path — path. It takes the value of the `string` type. Required parameter.

It returns `true` if the path exists, `false` — otherwise.

%/spoiler%


%spoiler% fstatSync %spoiler%

**fstatSync(fd)**

* fd — file descriptor. It takes the value of the `FileHandle` type. Required parameter.

It returns the [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) object for the file descriptor.

%/spoiler%


%spoiler% ftruncateSync %spoiler%

**ftruncateSync(fd, len)**

* fd — file descriptor. It takes the value of the `FileHandle` type. Required parameter.
* len — optional parameter that enables to define the size in bytes. It takes the value of the `number` type.

Устанавливает длину обычного файла с файловым дескриптором `fd` в `len` байт. Если файл до этой операции был длиннее, то отсеченные данные теряются. Если файл был короче, то он увеличивается, а добавленная часть заполняется нулевыми байтами. It returns `undefined`.

%/spoiler%


%spoiler% lstatSync %spoiler%

**lstatSync(path, options)**

* path — path. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * throwIfNoEntry. It takes the value of the `boolean` type. Будет ли выдано исключение, если путь в файловой системе не существует. By default: `true`.

It returns the [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) for `path`. Если `path` — это путь символической ссылки, то возвращает информацию о самой ссылке.

%/spoiler%


%spoiler% mkdirSync %spoiler%

**mkdirSync(path, options, mode)**

* path — path. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * recursive. It specifies whether it is required to create parent directories. It takes the value of the `boolean` type. By default: `false`.
   * mode. It is not used with Windows. By default: `0o777`.

It creates a directory.  It returns `undefined`.

%/spoiler%


%spoiler% openSync %spoiler%

**openSync(path, flags, mode)**

* path — path. It takes the value of the `string` type. Required parameter.
* [flags](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — флаги файловой системы. Определяют, в каком режиме открыть файл. The optional parameter. By default: `r`.
* mode. Устанавливает права доступа к файлу, когда он создаётся. На Windows влияет на атрибут файла «Только чтение». [Show detailes](https://ru.wikipedia.org/wiki/Chmod). By default: `0o666`. It takes the values of the `number`, `string` types.

Возвращает объект, представляющий дескриптор файла.

%/spoiler%


%spoiler% readdirSync %spoiler%

**readdirSync(path, options)**

* path — path. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * withFileTypes — параметр, определяющий тип возвращаемого значения функции. By default: `false`.

It reads the directory contents. If `withFileTypes` — `false`, it returns array of strings. If it is `true`, it returns array of the `Dirent` objects.

%/spoiler%


%spoiler% readFileSync %spoiler%

**readFileSync(path, options)**

* path — path or file descriptor. It takes the values of the `string`, `FileHandle` types. Required parameter.
* options (optional parameter):
   * encoding — file encoding. By default: **'utf8'**.
   * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — file system checkbox. By default: **'r'**.

Возвращает содержимое файла `path`. Если `encoding` опция указана, то функция возвращает строку, в противном случае возвращает `ArrayBuffer`.

%/spoiler%


%spoiler% readSync %spoiler%

**readSync(fd, buffer, offset, length, position)**

* fd — file descriptor. It takes the value of the `FileHandle` type.
* buffer — буфер, в который записываются данные. It takes the values of the `ArrayBuffer`, `ArrayBufferView` types. Required parameter.
* offset — позиция `buffer` для записи данных. The optional parameter. It takes the value of the `number` type.
* length — количество байт для чтения. The optional parameter. It takes the value of the `number` type.
* position — указывает, с какого места начать чтение в файле. Если `position` равно **null** или **-1**, то данные будут считаны из текущей позиции в файле, и позиция в файле изменится. Если `position` — целое число, то текущая позиция в файле не изменяется. The optional parameter. It takes the value of the `number` type.

Читает в буфер указанный диапазон байтов из файла. Возвращает число прочитанных байт.

%/spoiler%


%spoiler% realpathSync %spoiler%

**realpathSync(path)**

* path — path. It takes the value of the `string` type. Required parameter.

Возвращает полный путь.

%/spoiler%


%spoiler% renameSync %spoiler%

**renameSync(oldPath, newPath)**

* oldPath — old path. It takes the value of the `string` type. Required parameter.
* newPath — new path. It takes the value of the `string` type. Required parameter.

Переименовывает файл из `oldPath` в `newPath`. It returns `undefined`.

%/spoiler%


%spoiler% rmdirSync %spoiler%

**rmdirSync(path, options)**

* path — путь до каталога. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * recursive. It takes the value of the `boolean` type. Если `true`, выполнить рекурсивное удаление каталога. By default: `false`.

It deletes a folder. It returns `undefined`.

%/spoiler%


%spoiler% rmSync %spoiler%

**rmSync(path, options)**

* path — path. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * force. It takes the value of the `boolean` type. Когда `true`, исключение будет игнорироваться, если путь не существует. By default:
   * recursive. It takes the value of the `boolean` type. Если `true`, выполнить рекурсивное удаление каталога. By default: `false`.

Удаляет файлы и каталоги. It returns `undefined`.

%/spoiler%


%spoiler% statSync %spoiler%

**statSync(path, options)**

* path — path. It takes the value of the `string` type. Required parameter.
* options (optional parameter):
   * throwIfNoEntry. It takes the value of the `boolean` type. Будет ли выдано исключение, если путь в файловой системе не существует. By default: `true`.

It returns the [Stats](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#class-stats) for `path`.

%/spoiler%


%spoiler% truncateSync %spoiler%

**truncateSync(path, len)**

* path — path. It takes the value of the `string` type. Required parameter.
* len — optional parameter that enables to define the size in bytes. It takes the value of the `number` type.

Устанавливает длину обычного файла с именем `path` в `len` байт. Если файл до этой операции был длиннее, то отсеченные данные теряются. Если файл был короче, то он увеличивается, а добавленная часть заполняется нулевыми байтами. It returns `undefined`.

%/spoiler%


%spoiler% unlinkSync %spoiler%

**function unlinkSync(path)**

* path — path. It takes the value of the `string` type. Required parameter.

It deletes a file. It returns `undefined`.

%/spoiler%


%spoiler% writeFileSync %spoiler%

**writeFileSync(path, data, options)**

* path — path or file descriptor. It takes the values of the `string`, `FileHandle` types. Required parameter.
* data — file content. Принимает значения типа `ArrayBuffer`, `ArrayBufferView`. Required parameter.
* options (optional parameter):
   * encoding — file encoding. By default: **'utf8'**.
   * [flag](https://help.loginom.ru/userguide/processors/programming/java-script/fileapi.html#flagi-faylovoy-sistemy) — file system checkbox. By default: **'r'**.
   * writeBOM — write BOM. It takes the value of the `boolean` type.
   * mode. Влияет на права доступа к файлу. [Show detailes](https://ru.wikipedia.org/wiki/Chmod). It takes the value of the `number` type.

Записывает данные в файл, создавая новый, если он не существует. It returns `undefined`.

%/spoiler%


%spoiler% writeSync %spoiler%

**writeSync(fd, buffer, offset, length, position)**

* fd — file descriptor. It takes the value of the `FileHandle` type.
* buffer — буфер, в который записываются данные.  It takes the values of the `ArrayBuffer`, `ArrayBufferView` types. Required parameter.
* offset — позиция `buffer` для записи данных. The optional parameter. It takes the value of the `number` type.
* length — количество байт для чтения. The optional parameter. It takes the value of the `number` type.
* position — указывает, с какого места начать чтение в файле. The optional parameter. It takes the value of the `number` type.

Записывает `buffer` в указанный файл.

%/spoiler%

## File System Checkboxes

* `a`: открыть файл для добавления. File is created if it does not exist.
* `ax`: такой же, как `a`, но при использовании этого флага возникнет ошибка, если путь существует.
* `a+`:  открыть файл для чтения и добавления. File is created if it does not exist.
* `ax+`: такой же, как `a+`, но при использовании этого флага возникнет ошибка, если путь существует.
* `as`: открыть файл для чтения и добавления в синхронном режиме. File is created if it does not exist. Отключает кэширование данных системой при записи. Данные пишутся сразу на диск, а не в кэш системы.
* `as+`: открыть файл для добавления в синхронном режиме. File is created if it does not exist. It disables data caching by the system when writing. Данные пишутся сразу на диск, а не в кэш системы.
* `r`: открыть файл для чтения. При использовании этого флага возникнет ошибка, если файл не существует.
* `r+`: открыть файл для чтения и записи. При использовании этого флага возникнет ошибка, если файл не существует.
* `rs+`: открыть файл для чтения и записи в синхронном режиме. It disables data caching by the system when writing. Данные пишутся сразу на диск, а не в кэш системы.
* `w`: открыть файл для записи. File is created (if it does not exist), or content is deleted (if it exists).
* `wx`: такой же, как `w`, но при использовании этого флага возникнет ошибка, если путь существует.
* `w+`: открыть файл для чтения и записи. File is created (if it does not exist), or content is deleted (if it exists).
* `wx+`: такой же, как `w+`, но при использовании этого флага возникнет ошибка, если путь существует.


## List of Supported Encodings

* `latin1`, `binary` — **ISO 8859-1** encoding, **Latin 1** matches the first 256 Unicode code positions.
* `utf-8`, `utf8` — **UTF8** encoding.
* `utf16le`, `utf-16le`, `ucs2`, `ucs-2` — **UTF16 Little-Endian** encoding.
* `сp<кодовая страница>`— single-byte codepage.
* `iso-8859-<number>`.

## Examples:

### Use File Storage API

#### Get list of files

```javascript

import * as fs from "builtIn/FS";

let path = "."; // Get contents of the current directory
let dirents = fs.readdirSync(path, { withFileTypes: true }); // Get contents of path directory in the Dirent objects array form
dirents.sort((e1, e2) => (+e2.isDirectory() - +e1.isDirectory()) || (e2.name > e1.name ? -1 : e1.name == e2.name)); // Order array of Dirent objects
for (let i = 0, l = dirents.length; i < l; i++) {
    let dirent = dirents[i];
    let isDir = dirent.isDirectory(),
        name = dirent.name;    
    let entry_info = isDir ? `${name}: папка` : `${name}: файл`; // Check - directory or file?
    if (dirent.isSymbolicLink()) // Check - symbolic link?
        entry_info += ", symbolic link";    
    if (!isDir) {
        let stat = fs.statSync(`${path}/${name}`); // Get information on file in the Stat object form
        entry_info += `, size in bytes: ${stat.size}`;
    }
    console.log(entry_info);    
}

```

#### Copy file from user folder to megaladata folder

```javascript

fs.copyFileSync("/user/test.lgp", "/user/loginom/test.lgp");


```

#### Move file from user folder to megaladata folder

```javascript

fs.renameSync("/user/test.lgp", "/user/loginom/test.lgp");

```

#### Delete test.lgp file

```javascript

fs.unlinkSync("/user/test.lgp")

```


#### Get list of the Dirent type objects

```javascript

fs.readdirSync("/user/test.lgp", {withFileTypes: true})

```


#### Усечение файла до 10 первых байт

```javascript

fs.truncateSync("/user/loginom/test.lgp", 10);

```

#### Copy folder with its contents

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
