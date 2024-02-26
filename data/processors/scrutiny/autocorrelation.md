---
description: Компонент автокорреляция в Loginom. Лаг, АКФ, ЧАФК, Ошибка, Значимость. Мастер настройки.
---
# ![ ](./../../images/icons/components/autocorrelation_default.svg) Autocorrelation

## Description

**[Autocorrelation](https://wiki.loginom.ru/articles/autocorrelation.html)** is a concept related to mathematical statistics that defines the level of statistical interrelation between data elements of one time series. In other words, correlation between time series and its copy shifted to one or several time lags is calculated. The component enables to calculate autocorrelation of time series, the lag count is selected by a user.

%spoiler%Example:%spoiler%

Source table:

| Day of week | Date | Sold cinema tickets, thousand pieces |
| :----------- | :---- | ---------------------------------: |
| Monday | 21.08.2017 | 6 |
| Tuesday | 22.08.2017 | 8 |
| Wednesday | 23.08.2017 | 13 |
| Thursday | 24.08.2017 | 10 |
| Friday | 25.08.2017 | 19 |
| Saturday | 26.08.2017 | 24 |
| Sunday | 27.08.2017 | 22 |
| Monday | 28.08.2017 | 7 |
| Tuesday | 29.08.2017 | 6 |
| Wednesday | 30.08.2017 | 10 |
| Thursday | 31.08.2017 | 15 |
| Friday | 01.09.2017 | 17 |
| Saturday | 02.09.2017 | 26 |
| Sunday | 03.09.2017 | 24 |

The autocorrelation analysis is applied to the following field: "Sold cinema tickets, thousand pieces". It is required to set ![ ](./../../images/icons/common/usage-types/active_default.svg) "Used" parameter in the input port settings. The lag count is equal to ten in the wizard.

Output table:

| Lag | ACF | Error | Significance |
| ------: | ------: | ------------: | :-------------------- |
| 0 | 1.00 | 0.00 | True |
| 1 | 0.51 | 0.27 | True |
| 2 | -0.09 | 0.33 | False |
| 3 | -0.38 | 0.33 | True |
| 4 | -0.46 | 0.36 | True |
| 5 | -0.36 | 0.40 | False |
| 6 | 0.09 | 0.42 | False |
| 7 | 0.46 | 0.42 | True |
| 8 | 0.34 | 0.46 | False |
| 9 | 0.03 | 0.48 | False |

%/spoiler%

## Ports

### Input

* ![ ](./../../images/icons/app/node/ports/inputs/table_inactive.svg) Input data source (data table). ![ ](./../../images/icons/common/usage-types/active_default.svg) "Used" value is set in the settings of this port for the fields for which it is required to calculate autocorrelation. Only numeric fields are suitable for this purpose.

### Output

* ![ ](./../../images/icons/app/node/ports/outputs/table_inactive.svg) Output data set. The table has the following structure:
   * Required fields:
      * **Lag**: the lag count to which the source series of numbers is moved relative to its copy.
      * **ACF**: autocorrelation coefficients for each lag.
      * **Error**: standard errors of the autocorrelation coefficients for a sequence of lags of the given bin.
      * **Significance**: conditional conclusion concerning availability/unavailability of correlation in the given lag.
   * There are the following fields the availability of which is set by a user:
      * **PACF**: partial autocorrelation function coefficients. To add this field, it is required to select corresponding checkbox in the wizard.

## Wizard

It provides three settings:

* **Lag count** defines the maximum shift (lag) of the source series of numbers relative to its copy. The autocorrelation coefficient is further calculated for each lag count. The lag count cannot exceed the row count in the source table.
* ACF calculation area:
   * **Time** is recommended in the case of the small lag count processing.
   * **Frequency** is recommended in the case of the large lag count processing to speed up the calculation process.
   * **Auto **: the node will define the calculation area according to the lag count independently.
* **Calculate PACF**: availability of this checkbox adds calculation of partial autocorrelation function. Its distinctive feature is exclusion of the correlation dependence between the observations inside the lags, namely, partial autocorrelation function in each lag differs from the standard autocorrelation function by the value of remote autocorrelations with smaller time lags. Consequently, partial autocorrelation function provides more detailed characteristics of the autocorrelation dependence inside the time lag.
