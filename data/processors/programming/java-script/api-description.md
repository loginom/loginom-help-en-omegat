---
description: Компонент JavaScript в Loginom. Полное описание API. Примеры.
---
# ![](../../../images/icons/components/javascript_default.svg) Full API Description

API typical of Megaladata that is not a part of [language standard (ECMA-262)](https://www.ecma-international.org/ecma-262/6.0/) is described below.

## Global Objects

Global objects are available in the JavaScript node module without import of additional modules.

```typescript

// Объект require is applied for import of CommonJS modules
const require: IRequire;

// Module view
interface IModule {
    readonly id: string;               // identifier
    parent?: this;                     // calling module
    filename?: string;                 // full path to module
    loaded: boolean;                   // whether the module is completely loaded
    exports: any;                      // exported object
}

// require function accepts the module identifier and returns the exports module property
interface IRequireFunction {
    (id: string): any;
}

interface IRequire extends IRequireFunction  {
    // resolve function returns the full path to the module
    resolve: (id: string) => string;
    // cache of modules
    cache: { [resolvedId: string]: IModule]; };
}

// console object
var console: Console;

interface Console {
     // assert method enables to direct the message to console if the first argument is false
    assert(condition?: boolean, ...data: any[]): void;
    // error method shows error message
    error(...data: any[]): void;
    // warn methods show warning message
    warn(...data: any[]): void;
    // info and log methods show information message
    info(...data: any[]): void;
    log(...data: any[]): void;
    // clear method enables to clean the message console in the preview window
    clear(): void;
}  
// The function enables to delay execution of function
function setTimeout(callback: Function, delay: number = 0, ...args: any[]): number;  

// The function cancels the timeout set by call setTimeout 
function clearTimeout(timeoutID: number): void; 

// The function encodes in base-64 string of the binary data
function btoa(text: string, encoding?: "utf-8"): string;

// The function decodes the string encoded with usage of base-64
function atob(text: string, encoding?: "utf-8"): string;

```

## built-in "builtIn/Data" module

Objects of "builtIn/Data" module provide access to the JavaScript node ports. By default, the node code contains the import string of these objects.

```typescript
const InputTable: IDataSource;      // Source of the data from the first port
const InputTables: IDataSource[];   // Array of the input data sources
const OutputTable: IOutputTable;    // Output data set
const InputVariables: IVariables;   // Input variables

// Перечисления, описывающие метаданные полей и переменных
enum DataType {                                                          // Тип данных
     None = 0,
     Boolean = 1,
     DateTime = 2,
     Float = 3,
     Integer = 4,
     String = 5,
     Variant = 6
}

enum DataKind {                                                          // Data kind
     Undefined = 0,
     Continuous = 1,
     Discrete = 2
}

enum UsageType {                                                         // Field usage type
     Unspecified = 0,
     Excluded = 1,
     Useless = 2,
     Used = 3,
     Input = 3,
     Active = 3,
     Output = 4,
     Predicted = 4,
     Key = 5,
     Group = 6,
     Value = 7,
     Transaction = 8,
     Item = 9
}

// Column info
interface IColumnInfo {
    readonly Name: string;                                                  // Name
    readonly DisplayName: string;                                           // Caption
    readonly DataType: DataType;                                            // Data type
    readonly DataKind: DataKind;                                            // Data kind
    readonly DefaultUsageType: UsageType;                                   // Field usage type
}

// Column view of data set
interface IColumn extends IColumnInfo, Iterable<boolean | number | string | Date | undefined> {
    readonly Index: number;                                                 // Index
    readonly RowCount: number;                                              // Number of values
    // Get method returns the column value by index
    Get(row: number): boolean | number | string | Date | undefined;
    // IsNull method checks for the Null column value
    IsNull(row: number): boolean;
}

// Column properties of input data set
interface IIntputColumn extends IColumn {
    readonly UsageType: UsageType;                                          // Field usage type
}

// Properties and methods of the output data set column
interface IOutputColumn extends IColumn {
    // Column properties are available in read-only and write-only modes
    DisplayName: string;                                                    // Caption
    DataType: DataType;                                                     // Data type
    DataKind: DataKind;                                                     // Data kind
    DefaultUsageType: UsageType;                                            // Field usage type
    // Set method sets the field value in the record created by means of Append method
    Set(value: boolean | number | string | Date | null | undefined): void;
}

// Access to iterated list of columns by name and index
interface IIntputColumns extends Iterable<IIntputColumn> {
    [name: string]: IIntputColumn;
    [index: number]: IIntputColumn;
}

// Properties and methods of data set
interface IDataSource {
    readonly Columns: IIntputColumns;                                       // List of columns
    readonly ColumnCount: number;                                           // List of columns
    readonly RowCount: number;                                              // Row count

    // Get method returns the value of the set row in the set column
    Get(row: number, col: number | string): boolean | number | string | Date | undefined;
    // IsNull method checks for the Null value of the set row in the set column
    IsNull(row: number, col: number | string): boolean;
    // Метод GetColumn returns the data source column
    GetColumn(col: number | string): IIntputColumn;
}

// Properties and methods of output data set
interface IOutputTable extends IDataSource {
    readonly Columns: IOutputColumns;                                       // List of columns
    // Метод AssignColumns creates columns from iterated source
    AssignColumns(source: Iteratable<string | IColumnInfo>): void;
    // The GetColumn method returns the output data set column
    GetColumn(col: number | string): IOutputColumn;
    // Метод AddColumn adds column to the column list end.
    AddColumn(source?: string | IColumnInfo): IOutputColumn;
    // Метод InsertColumn inserts column by the set index
    InsertColumn(col: number, source?: IColumnInfo): IOutputColumn;
    // Метод DeleteColumn deletes column by index or name
    DeleteColumn(col: number | string): void;
    // Метод ClearColumns deletes all columns
    ClearColumns(): void;
    // Append method enables to append a record to data set
    Append(): void;
    // Set method enables to set the value of the set field to the records created by Append method
    Set(col: number | string, value: boolean | number | string | Date | null | undefined): void;
}

// Access to iterated list of the output data set columns by name and index
interface IOutputColumns extends Iterable<IOutputColumn> {
    [index: number]: IOutputColumn;
    [name: string]: IOutputColumn;
}

// View of input variable
interface IVariable {
    readonly Index: number;                                                 // Index
    readonly Name: string;                                                  // Name
    readonly DisplayName: string;                                           // Caption
    readonly DataType: DataType;                                            // Data type
    readonly Value: boolean | number | string | Date | undefined;           // Value
    readonly IsNull: boolean;                                               // Check for Null
}

// Access to iterated list of input variables by name and index
interface IVariableItems extends Iterable<IVariable> {
    [name: string]: IVariable;
    [index: number]: IVariable;
}
View of input port variables
interface IVariables {
    readonly Items: IVariableItems;
    readonly Count: number;
}

```

## built-in "builtIn/Fetch" module

`Fetch API`: interface for working with HTTP requests and responses. It provides an opportunity of interaction with the network resources directly from the JavaScript node.

```typescript
// View of request and response headers
interface Headers {
    append(name: string, value: string): void;
    delete(name: string): void;
    get(name: string): string | null;
    has(name: string): boolean;
    set(name: string, value: string): void;
    forEach(callbackfn: (value: string, key: string, parent: Headers) => void, thisArg?: any): void;
    [Symbol.iterator](): IterableIterator<[string, string]>;
    entries(): IterableIterator<[string, string]>;
    keys(): IterableIterator<string>;
    values(): IterableIterator<string>;
}
type HeadersInit = Headers | IterableIterator<[string, string]> | Record<string, string>;
declare var Headers: {
    prototype: Headers;
    new(init?: HeadersInit): Headers;
}

// View of request/response body
interface Body {
    readonly bodyUsed: boolean;
    arrayBuffer(): Promise<ArrayBuffer>;
    json(): Promise<any>;
    text(): Promise<string>;
}

// Request view
type RequestInfo = Request | string;
type RequestRedirect = "error" | "follow" | "manual";
interface Request extends Body {
    readonly headers: Headers;
    readonly method: string;
    readonly redirect: RequestRedirect;
    readonly url: string;
    clone(): Request;
}
type BodyInit = ArrayBufferView | ArrayBuffer | string;
interface RequestInit {
    body?: BodyInit | null;
    headers?: HeadersInit;
    method?: string;
    redirect?: RequestRedirect;
}
declare var Request: {
    prototype: Request;
    new(input: RequestInfo, init?: RequestInit): Request;
}

// Response view
interface Response extends Body {
    readonly headers: Headers;
    readonly ok: boolean;
    readonly redirected: boolean;
    readonly status: number;
    readonly statusText: string;
    readonly url: string;
    clone(): Response;
}
interface ResponseInit {
    headers?: HeadersInit;
    status?: number;
    statusText?: string;
}
declare var Response: {
    prototype: Response;
    new(body?: BodyInit | null, init?: ResponseInit): Response;
    error(): Response;
    redirect(url: string, status?: number): Response;
}

// Network resource request function
function fetch(url: Request|string, init?: RequestInit): Promise<Response>;
```

## built-in "builtIn/FS" module

`File Storage API` — file system operation interface. It provides a set of functions for execution of different operations with files and folders directly from the JavaScript node.

```typescript

namespace constants {
    COPYFILE_EXCL: number;
    COPYFILE_FICLONE: number;
    COPYFILE_FICLONE_FORCE: number;
    O_RDONLY: number;
    O_WRONLY: number;
    O_RDWR: number;
    O_CREAT: number;
    O_EXCL: number;
    O_TRUNC: number;
    O_APPEND: number;
    O_SYNC: number;
    S_IFMT: number;
    S_IFREG: number;
    S_IFDIR: number;
    S_IFLNK: number;
}

type Encoding = "utf8" | "utf-8" | "utf16le" | "ucs2" | "ucs-2" | "latin1" | "binary"; 
// or explicit specification of the code page number of single-byte encoding in cp<CodePageNumber> format, for example, cp1252
// or explicit specification of the code page number iso-8859 in the following format: "iso-8859-<number>", for example, iso-8859-1
type OpenMode = number | string;
type Mode = number | string;

class Stats {
    isFile(): boolean;
    isDirectory(): boolean;
    isSymbolicLink(): boolean;

    mode: number;
    size: number;
    atime: Date;
    mtime: Date;
    ctime: Date;
    birthtime: Date;
}

class FileHandle {
    valueOf(): number;
}

class Dirent {
    isFile(): boolean;
    isDirectory(): boolean;
    isSymbolicLink(): boolean;
    name: string;
}

interface ReadSyncOptions {
   offset?: number;
   length?: number;
   position?: number | null;
}

interface WriteFileOptions {
  encoding?: string;
  flag?: string;
  writeBOM?: boolean; 
}

function appendFileSync(file: string | FileHandle, data: string | ArrayBuffer | ArrayBufferView, options?: WriteFileOptions): void;

function closeSync(fd: FileHandle): void;

function copyFileSync(src: string, dest: string, mode?: number): void;

function existsSync(path: string): boolean;

function fstatSync(fd: FileHandle): Stats;

function ftruncateSync(fd: FileHandle, len?: number | null): void;

function lstatSync(path: string, options?: { throwIfNoEntry?: boolean }): Stats;

function mkdirSync(path: string, options?: { recursive?: boolean; mode?: Mode } | Mode): void;

function openSync(path: string, flags: OpenMode; mode: Mode): FileHandle;

function readdirSync(path: string, options?: { withFileTypes?: false }): string[];
function readdirSync(path: string, options: { withFileTypes: true }): Dirent[];

function readFileSync(path: string | FileHandle, options?: { encoding?: null; flag?: string; } | null): ArrayBuffer;
function readFileSync(path: string | FileHandle, options: { encoding: Encoding; flag?: string; } | Encoding): string;

function readSync(fd: FileHandle, buffer: ArrayBuffer | ArrayBufferView, offset?: number | null, length?: number | null, position?: number | null): number;
function readSync(fd: FileHandle, buffer: ArrayBuffer | ArrayBufferView, opts?: ReadSyncOptions): number;

function realpathSync(path: string): string;

function renameSync(oldPath: string, newPath: string): void;

function rmdirSync(path: string, options?: { recursive?: boolean }): void;

function rmSync(path: string, options?: { force?: boolean; recursive?: boolean }): void;

function statSync(path: string, options?: { throwIfNoEntry?: boolean }): Stats;

function truncateSync(path: string, len?: number | null): void;

function unlinkSync(path: string): void;

function writeFileSync(path: string | FileHandle, data: string | ArrayBuffer | ArrayBufferView, options?: WriteFileOptions): void;

function writeSync(fd: FileHandle, buffer: ArrayBuffer | ArrayBufferView, offset?: number | null, length?: number | null, position?: number | null): number;
function writeSync(fd: FileHandle, string: string, position?: number | null, encoding?: Encoding): number;

```
