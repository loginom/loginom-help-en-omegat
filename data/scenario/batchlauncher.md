# Batch Processing of Workflows

**Пакетный режим** — исполнение Сценариев Пакета без отображения какого-либо пользовательского интерфейса и вывода сообщений на экран. Обычно результатом выполнения пакета при этом является формирование итоговых данных и передача их в стороннюю систему (например, в хранилище данных или другую учетную систему).

Пакетное выполнение Сценариев осуществляется при помощи утилиты BatchLauncher, поставляемой в комплекте с сервером Loginom версий Team, Standard, Enterprise. При установке по умолчанию утилита располагается по пути:

`"C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe"`.

Для запуска пакетного выполнения по расписанию можно использовать сторонний планировщик заданий, например, планировщик заданий Windows.

Syntax of the start string in the package mode:

```batch
BatchLauncher /Package=<FileName> [/Teach] [/Node=<NodeName>] [/Address=<Address>] [/Port=<Port>] [/UserName=<UserName> [/Password=<Password>]] [/PortName.VarName=<Value>]
```

Where:

*/Package*, */Teach*, */Node*, */Address*, */Port*, */UserName*, */Password*, */PortName.VarName* are start parameters in the package mode.

Несколько параметров в строке запуска разделяются символом пробела.

For example:

```batch
 "C:\Program Files\BaseGroup\Loginom 6\Server\BatchLauncher.exe" /Package=test.lgp /Teach
```

## Description of Parameters

### Package

Path to the Package file inside the [file storage](..\location_user_files.md). Required parameter.

Examples:

```batch
BatchLauncher /Package=/user/test.lgp
BatchLauncher "/Package=/user/test and log.lgp"
```

### Node

Name of the node to be executed. При этом выполняются указанный узел и все предшествующие ему узлы — то есть все узлы, которые необходимо выполнить для формирования его входных данных. The node must not be located in the Supernode. If the parameter is not specified, all Package nodes for which the required settings of the [activation mode](./setting-batch-processing-mode.md) are set must be executed.

> **Примечание:** имя узла задается при настройке [модификатора доступа](./access-modifier.md).

Examples:

```batch
BatchLauncher /Package=/user/test.lgp "/Node=executable node"
BatchLauncher /Package=/user/test.lgp /Node=executable_node
```

### PortName.VarName

Используется для задания значений входных переменных узла, определенного параметром /Node.

* **PortName** — наименование порта;
* **VarName** — наименование переменной, значение которой необходимо задать в строке запуска.

Examples:

```batch
BatchLauncher /Package=/user/test.lgp /Node=test_node /Port1.Parameter1=true
/Port1.Parameter2=2008-01-02T22:24:24 "/Port2.Parameter1=Hello World!" /Port2.Parameter2=null /Port2.Parameter3=3.14 /Port2.Parameter4=4.025E4
```

Можно не указывать наименование порта (например: */Parameter1=true*, однако, если переменная с указанным таким образом именем присутствует в нескольких портах, то возникнет исключение. Ошибка так же возникнет, если указано имя несуществующей переменной.

> **Важно:** все незарезервированные параметры в строке запуска интерпретируются как параметры установки значений переменных.

Исходное строковое значение, указанное в командной строке, конвертируется к типу данных целевой переменной:

* Если исходное строковое значение равно null (с учётом регистра), то целевая переменная получает пустое значение независимо от её типа данных.
* Если целевая переменная имеет тип Логический, Целый, Вещественный или Дата/Время, то исходное строковое значение конвертируется по правилам соответствующего типа, причём для Вещественного типа используется десятичный разделитель . (Dot). Для Даты/Времени используется подмножество форматов ISO 8601: "YYYY-MM-DD", "YYYY-MM-DDThh:mm[:ss[.zzz]]", "hh:mm[:ss[.zzz]]". Допустимыми значениями Логического типа считаются *true* и *false* (без учёта регистра).
* Если целевая переменная имеет Строковый тип, то преобразование типа данных не выполняется. Если исходное значение заключено в одинарные кавычки, то эти кавычки разэкранируются, в противном случае исходное значение присваивается в переменную без изменений.
* Если целевая переменная имеет Переменный тип, то происходит попытка поочерёдно преобразовать исходное строковое значение к типам Логический, Целый, Вещественный и Дата/Время, причём если ни одно из этих преобразований не удалось, то целевая переменная получает строковое значение.
* Для переменных типа Вещественный и Переменный в качестве параметров можно передавать экспоненциальную форму записи числа (пример: 4.205E2, 4.205E-2)

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Node=test_node /Var0=null /Var1=True /Var2=1 /Var3='1' /Var4='null' /Var5= /Var6=test /Var7='te''st' /Var8="test" "/Var9=a b c"
```

If all variables refer to the Variable type, they get the following values:

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

### Teach

Package start in the [«Training»](https://wiki.loginom.ru/articles/training.html) mode. If the parameter is not specified, the package is started in the "Execution" mode.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Teach
```

### Address

IP address or host name of the Loginom server. *localhost* is used by default.

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95
```

### Port

Порт, по которому происходит обращение к серверу Loginom. *4386* is used by default..

For example:

```batch
BatchLauncher /Package=/user/test.lgp /Address=192.168.0.95 /Port=4555
```

### UserName

Username. If the parameter is not specified, the default user is used.

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

> **Примечание:** при использовании пробельных символов в выражении, задающем значение параметра, все выражение необходимо заключить в двойные кавычки.

For example:

```batch
BatchLauncher "/Package=/user/Quantization training/Quantization.lgp" /Teach /UserName=user
```
