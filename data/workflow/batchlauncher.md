---
description: Пакетное выполнение сценариев в аналитической платформе Loginom. BatchLauncher. Запуск пакетного выполнения по расписанию. Параметры пакетного выполнения. Примеры.
---
# Batch Processing of Workflows

**Пакетный режим** — исполнение [Cценариев](./../interface/workflow.md) [Пакета](./../interface/packages.md) без отображения какого-либо пользовательского интерфейса и вывода сообщений на экран. As a rule, in this case, the batch processing result is generation of the summarized data and its transfer to the external system (for example, to the data warehouse or another accounting system).

Пакетное выполнение cценариев осуществляется при помощи утилиты *BatchLauncher*, поставляемой в комплекте с сервером *Loginom* версий *Team*, *Standard*, *Enterprise*. When installing by default, the utility application path is as follows:

`"C:\Program Files\Loginom\Server\BatchLauncher.exe"`.

To launch the batch processing according to schedule, it is possible to use the external job scheduler, for example, Windows job scheduler.

> **Важно:** *BatchLauncher* работает синхронно с сервером  и ждёт завершения процесса. Если *BatchLauncher* закрыть, то в [Loginom Server](https://help.loginom.ru/adminguide/windows/server/) отменится соответствующий процесс.

Syntax of the start string in the batch mode:

```batch
BatchLauncher /Package=<FileName> [/Teach] [/Node=<NodeName>] [/Address=<Address>] [/Port=<Port>] [/UserName=<UserName> [/Password=<Password>]] [/VArName=<Value>] [/PortName.VarName=<Value>] [/Save]
```

Where:

*/Package*, */Teach*, */Node*, */Address*, */Port*, */UserName*, */Password*, */PortName.VarName*,  */VarName*, */Save* — параметры запуска в пакетном режиме.

Several parameters are separated with space character in the start string.

For example:

```batch
 "C:\Program Files\Loginom\Server\BatchLauncher.exe" /Package=test.lgp /Teach
```

## Description of Parameters

### Package

Путь к файлу пакета внутри [файлового хранилища](./../location_user_files.md). Required parameter.

Examples:

```batch
BatchLauncher /Package=/user/test.lgp
BatchLauncher "/Package=/user/test and log.lgp"
```

### Node

Name of the node to be executed. In this case, the specified node and all preceding nodes are executed, namely, all nodes that must be executed for generation of its input data. The node must not be located in the Supernode. If the parameter is not specified, all Package nodes for which the required settings of the [activation mode](./node-activation-mode.md) are set must be executed.

> **Note:** The node name is set when configuring [access modifier](./access-modifier.md).

Examples:

```batch
BatchLauncher /Package=/user/test.lgp "/Node=executable node"
BatchLauncher /Package=/user/test.lgp /Node=executable_node
```

### PortName.VarName

Используется для задания значений входных [Переменных узла](./../workflow/variables/control-variables.md), определенного параметром */Node*.

* **PortName**: port name.
* **VarName**: name of the variable which value must be set in the start string.

Examples:

```batch
BatchLauncher /Package=/user/test.lgp /Node=test_node /Port1.Parameter1=true
/Port1.Parameter2=2008-01-02T22:24:24 "/Port2.Parameter1=Hello World!" /Port2.Parameter2=null /Port2.Parameter3=3.14 /Port2.Parameter4=4.025E4
```

It is allowed not to specify the port name (for example, */Parameter1=true*. However, if the variable with the name specified in such a manner is in several ports, it is an exception to the rule. An error also occurs when the nonexisting variable name is specified.

> **Important:** All nonreserved parameters in the start string are interpreted as the setup parameters of the variables values.

The source string value specified in the command string is converted according to the data type of the target variable:

* If the source string value is equal to null (case-sensitive), the target variable will get the null value irrespective of its data type.
* Если целевая переменная имеет тип [Логический, Целый, Вещественный или Дата/Время](./../data/datatype.md), то исходное строковое значение конвертируется по правилам соответствующего типа, причём для *Вещественного типа* используется десятичный разделитель . (Dot). Для *Даты/Времени* используется подмножество форматов ISO 8601: "YYYY-MM-DD", "YYYY-MM-DDThh:mm[:ss[.zzz]]", "hh:mm[:ss[.zzz]]". Допустимыми значениями *Логического типа* считаются *true* и *false* (без учёта регистра).
* Если целевая переменная имеет *Строковый тип*, то преобразование типа данных не выполняется. If the source value is enclosed in single quotes, these quotes are unescaped. Otherwise, the source value is assigned to the variable without changes.
* Если целевая переменная имеет *Переменный тип*, то происходит попытка поочерёдно преобразовать исходное строковое значение к типам Логический, Целый, Вещественный и Дата/Время, причём если ни одно из этих преобразований не удалось, то целевая переменная получает строковое значение.
* Для переменных типа *Вещественный* и *Переменный* в качестве параметров можно передавать экспоненциальную форму записи числа (пример: 4.205E2, 4.205E-2).

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Node=test_node /Var0=null /Var1=True /Var2=1 /Var3='1' /Var4='null' /Var5= /Var6=test /Var7='te''st' /Var8="test" "/Var9=a b c"
```

Если все переменные имеют *Переменный тип*, то они получат следующие значения:

```batch
Var0 — empty value;
Var1 — logical true value;
Var2 — integer value 1;
Var3 — string value 1;
Var4 — string null value;
Var5 — empty string;
Var6 — string test value;
Var7 — string te'st value;
Var8 — string "test" value;
Var9 — string a b c value.
```

### VarName

Используется для задания значений [Переменных пакета](./../workflow/variables/scenario-variables.md).

Для того чтобы задать значение переменной, необходимо указать параметр формата:

1. `/VarName=Value`.
2. `/.VarName=Value` — используется, если имя переменной совпадает с именем, зарезервированным параметром *BatchLauncher* (например, `Package` или `UserName`),

где:
* `VarName` — наименование переменной, значение которой необходимо задать в строке запуска;
* `Value` — значение переменной.

> **Примечание:** нельзя устанавливать значения переменных, которые доступны "Только для чтения".

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Var0=null /Var1=True /Var2=1 /Var3='1' /Var4='null' /Var5= /Var6=test /Var7='te''st' /Var8="test" "/Var9=a b c"
```

### Teach

Package launch in the [«Training»](https://wiki.loginom.ru/articles/training.html) mode. If the parameter is not specified, the package is launched in the "Execution" mode.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Teach
```

### Address

IP адрес или имя хоста сервера *Loginom*. По умолчанию используется *localhost*.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95
```

### Port

Порт, по которому происходит обращение к серверу *Loginom*. По умолчанию используется *4580*.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95 /Port=4555
```

### UserName

Username. Если параметр не указан, то используется пользователь по умолчанию *service*. Если пользователя *service* удалить, то необходимо обязательно указывать параметр *UserName*.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /UserName=user
```

### Password

User password. If the parameter is not specified, the empty password is used.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /UserName=user /Password=12345
```

### Save

При наличии этого параметра пакет будет сохранён на диск после выполнения или переобучения.

Если при выполнении пакета возникнет ошибка, то он не будет сохранен.

For example:

```batch
BatchLauncher /Package=test.lgp /Teach /Save
```

&nbsp;

> **Важно:** при использовании пробельных символов в выражении, задающем значение параметра, все выражение необходимо заключить в двойные кавычки.

For example:

```batch
BatchLauncher "/Package=/user/Quantization training/Quantization.lgp" /Teach /UserName=user
```
