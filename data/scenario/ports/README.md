# Ports

**Port**: method of communication between the nodes. There are the following port types according to the structure of transferred/accepted data:

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) Table data;
* ![ ](../../images/icons/app/node/ports/inputs/variable_inactive.svg) Variables;
* ![ ](../../images/icons/app/node/ports/inputs/tree_inactive.svg) Data in the hierarchic tree-like form;
* ![ ](../../images/icons/app/node/ports/inputs/link_inactive.svg) Parameters of connection to the data source;
* ![ ](../../images/icons/app/node/ports/inputs/model_inactive.svg) Data structure is not defined.

The Workflow nodes accept data via the input ports and give them back via the output ones. The input ports are located to the left on the workflow node icon, and the output ones - to the right (refer to Figure 1).

![Workflow node with two input ports and one output port.](ports-1.png)

Before the node processing data is sent to its input port when it can be preliminarily modified.

Inside the port (refer to Figure 2) data is also represented in the form of the input and output fields data sets (or [variables](../variables/README.md)according to the port type). The input data set represents the data that is accepted by the port. The output data set represents the data that is given back by the port. When configuring the port, a user has the following possibilities:

* Set the random structure of the output data set: its list and parameters of fields/variables.
* Map the fields (or variables) of the input port data set with the fields of the output one.

It is possible to represent the schema of the data movement for the node that accepts and gives back the data set (table) as follows: Figure 2):

![Схема движения данных для узла, принимающего и отдающего набор данных (таблицу).](ports-2.svg)

Таким образом, для узла схема движения данных которого представлена на рисунке 2, данные проходят следующие этапы преобразований:

1. Изменение структуры данных во входном порту и передача их на обработку.
1. Node processing by the algorithm. В результате обработки формируются новые данные, которые поступают в выходной порт.
1. Change of the data structure in the output port.

It is possible to introduce the following changes of the data structure in the port:

* Change of the fields/variables names;
* Change of the fields/variables captions;
* Set fields order in the table;
* Delete unnecessary fields/variables;
* set fields usage types (refer to [features of data set field](../../data/datasetfieldoptions.md)).

Эти действия, а также возможные способы реагирования порта на изменение структуры поступающих в порт данных задаются в настройках порта.

> **Важно:** порты используются не только для передачи данных, но и для [синхронизации](../ports/field-synchronization.md).

## Настройка порта

Открыть диалог настройки порта можно одиночным кликом мыши по порту и последующим выбором команды "Настроить порт…". Откроется диалог "Настройка соответствия между столбцами" или "Настройка соответствия между переменными" в зависимости от типа порта.

В случае, если структура входных данных, подаваемых в порт, еще неизвестна (например, если к входному порту связь не установлена), то интерфейс настройки порта предоставляет возможность задать только структуру выходных данных порта.

Если структура входных данных известна, то в интерфейсе настройки порта можно задать структуру выходных данных порта и сопоставить поля (или переменные) входного набора порта с выходным. В этом случае для сопоставления можно выбрать два различных интерфейса:

[Связи](../ports/interface-relations.md) — графически отображающий связи между полями/переменными входного и выходного наборов порта;

[Таблица](../ports/interface-table.md) — сопоставление осуществляется путем выбора входных полей/переменных в таблице.

> **Важно:** по умолчанию при создании нового узла в его портах включена опция [Автоматическая синхронизация полей](../ports/field-synchronization.md). Действие этой опции приводит к автоматическому конфигурированию (настройке) порта, в результате чего выходной набор порта полностью повторяет структуру входного набора. Опция автоматической синхронизации отключается при удалении пользователем любого из полей/переменных выходного набора порта.

## Механизм сокрытия портов

В Loginom существует механизм сокрытия [портов порядка выполнения](../ports/service-ports.md) и [портов управляющих переменных](../variables/control-variables.md), т.е. по умолчанию они скрыты от пользователя:

* Для отображения портов порядка выполнения необходимо воспользоваться кнопкой ![ ](../../images/icons/toolbar-controls/order_default.svg)
   панели инструментов области построения сценариев;
* Для отображения портов управляющих переменных необходимо в контекстном меню узла выбрать пункт "Показать порт управляющих переменных".

## Цветовая индикация портов

В Loginom существует цветовая индикация портов. Порты с сплошной линией являются обязательными портами, т.е. для их работы необходима связь с другими портами. Рассмотрим цветовую индикацию на примере [интерфейса «Таблица»](./interface-table.md).

* ![ ](../../images/icons/app/node/ports/inputs/table_active.svg) — порт выполняется;
* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg) — порт сконфигурирован, но не выполняется;
* ![ ](../../images/icons/app/node/ports/inputs/table_error.svg) — порт не сконфигурирован или содержит ошибку;
* ![ ](../../images/icons/app/node/ports/inputs/table_warning.svg) — порт частично сконфигурирован.

Необязательный порт отображается пунктиром (цветовая индикация для них аналогична обязательным портам)
![ ](../../images/icons/app/node/ports/inputs-optional/table_inactive.svg)
. Для такого порта может и не быть связи с другим портом.

> **Примечание**: цветовая индикация для портов переменных, подключений и портов, с неопределенной структурой данных является аналогичной рассмотренной выше.

## Связывание портов

Для связывания портов необходимо навести курсор мыши на порт и зажать левую кнопку мыши, после этого вести курсор к тому порту, с которым надо связать и отпустить левую кнопку мыши.

При выделение порта появляется пунктирная линия с началом в исходном порту и концом в позиции курсора мыши, на его конце для удобства отображается тип порта с которым можно связать исходный порт (см. рисунок 3):

![Соединение портов.](ports-3.png)

> **Важно**: порты можно соединять только одного типа, то есть порт "Таблица" может быть соединен только с одноименным портом. Также нельзя соединять выходной порт узла с его же входным портом. Циклические связи запрещены!
