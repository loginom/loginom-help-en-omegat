# ![ ](../../images/icons/components/arimax_default.svg) ARIMAX

## Description

**ARIMAX** (**A**uto**R**egressive **I**ntegrated **M**oving **A**verage e**X**tended) is a mathematical model for analysis of [time series](https://wiki.loginom.ru/articles/time-series.html) that combines integrated [autoregression](https://wiki.loginom.ru/articles/autoregressive-model.html), [moving average](https://wiki.loginom.ru/articles/moving-average.html) and possibility to consider additional exogenous [factors](https://wiki.loginom.ru/articles/factor.html).

The [ARIMA](https://wiki.loginom.ru/articles/box-jenkins-model.html) models are used to accomplish the [tasks](https://wiki.loginom.ru/articles/demand-forecasting.html) that require to make the forecast based on the available data, namely, to calculate subsequent series values according to the previous ones. Time series can be any data from the time perspective, for example, sale of goods, number of purchase orders, customer traffic, etc.

> **Important**: To get the forecast data, it is required to [train the node](../../scenario/training-processors.md) beforehand.

## Ports

### Input Ports

* ![ ](../../images/icons/app/node/ports/inputs/table_inactive.svg)  **Input data source** is a data table. The input data must meet the following requirements:
   * The field mapping the time series must relate to the *Forecast* usage type, *Real* [data type](../../data/datatype.md) and *Continuous* [data kind](../../data/datakind.md). Only one such field is allowed.
   * The fields mapping the exogenous factors must relate to the *Input* usage type. There are no restrictions for the data type in these fields, any data kind is allowed, with the exception of the *Undefined* one. These fields can be available or not in any amount.

### Output Ports

* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg) **Model output** is a data table that contains the following fields:
   * Field_name|Forecast means forecast values of the source time series.
   * Field_name|Error of [approximation](https://wiki.loginom.ru/articles/approximation.html) means model residuals, deviations between the forecast and actual series values. The field is available if the following flag is selected:*Calculate the approximation error*.
   * Field_name|Lower bound denotes the lower bound of the [confidence interval](https://wiki.loginom.ru/articles/confidence-interval.html). The field is available if the following flag is selected: *Calculate confidence interval*.
   * Field_name|Upper bound denotes the lower bound of the confidence interval. The field is available if the following flag is selected: *Calculate confidence interval*.
* ![ ](../../images/icons/app/node/ports/outputs/table_inactive.svg)  **Model coefficients** denote the data table that contains the following coefficients:
   * Type
   * Parameter
   * [Lag](https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D0%B3%D0%BE%D0%B2%D1%8B%D0%B9_%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80)
   * Input field name
   * Unique value
   * Coefficient
   * [Standard deviation](https://wiki.loginom.ru/articles/mean-square-deviation.html)
   * [T-statistics](https://wiki.loginom.ru/articles/students-distribution.html)
   * [P-value](https://wiki.loginom.ru/articles/p-value.html)
* ![ ](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Summary** denotes variables:
   * Total samples (TotalSamples)
   * Total selected samples (TotalSelectedSamples)
   * Samples in [training set](https://wiki.loginom.ru/articles/training-set.html) (TrainSamples)
   * The root-mean-square error of the training set (TrainRMSError)
   * The mean absolute error of the training set (TrainAvgError)
   * The mean relative error of the training set (TrainAvgRelError)
   * Akaike information criterion ([AIC](https://wiki.loginom.ru/articles/aic.html))
   * Akaike information criterion corrected ([AICc](https://wiki.loginom.ru/articles/aicc.html))
   * Bayesian information criterion ([BIC](https://wiki.loginom.ru/articles/bic.html))
   * Determination coefficient ([R2](https://wiki.loginom.ru/articles/coefficient-of-determination.html))
   * Adjusted determination coefficient ([AdjustedR2](https://wiki.loginom.ru/articles/coefficient-determ-adj.html))
   * Number of [the model degrees of freedom](https://wiki.loginom.ru/articles/degrees-of-freedom.html) (ModelDF)
   * Number of the residues degrees of freedom (ResDF)

## Wizard

### Step 1. Configure Input Columns

It is required to set the [usage type](../../data/datasetfieldoptions.md) of the input data set columns at the first stage. It is required to select one of the following usage types for each of the columns:

* ![ ](../../images/icons/usage-types/forecast_default.svg) **Forecast**: for the data mapping the time series.
* ![ ](../../images/icons/usage-types/active_default.svg) **Input**: for the data mapping the additional input factors.
* ![ ](../../images/icons/usage-types/unspecified_default.svg) **Unspecified**: for the data that do not take part in the model construction process. It is set for other columns by default.

### Step 2. Normalization Settings

[Normalization](../normalization/README.md) is not usually required for the forecast data for the ARIMA models. It is recommended not to use normalization for the time series data, not to change default settings for the exogenous factors data.

### Step 3. ARIMAX Settings

#### ARIMAX Model Structure

* **Auto detect structure**: when this flag is selected, automatic selection of the model parameters is enabled. The parameters are selected in the calculation process to minimize the *AIC* value.
* **AR part order** sets the order of (р) autoregressive part. It sets the number of the previous series values that are considered when constructing the model. The integer value more than 0 is set.
* **Integration order** sets the order of (d) series differences if it is required to set the source series to the [stationary](https://ru.wikipedia.org/wiki/%D0%A1%D1%82%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D1%80%D0%BD%D0%BE%D1%81%D1%82%D1%8C) one. The integer value more than 0 is set.
* **MA part order** sets the order of (q) part of moving average. It defines the lag size for the source series smoothing. The integer value more than 0 is set.
* **Enable seasonality calculation**: selection of this flag enables to set parameters for the [seasonal component](https://wiki.loginom.ru/articles/seasonal-component.html):
   * **Seasonal AR part order** sets the integer value from 0 and higher.
   * **Seasonal integration order** sets the integer value from 0 and higher.
   * **Seasonal MA part order** sets the integer value from 0 and higher.
   * **Period of the seasonal component** sets the posistive integer value.
* **Include intercept into the model** means the boolean value. Enabled by default.

#### Time Series Prediction

* **[Forecast horizon](https://wiki.loginom.ru/articles/time-horizon.html)** sets the number of the values that will be forecast and added to the output data set at the end of the source time series. It sets the integer value more than 1.
* **Calculate the approximation error**: selection of this flag enables to add a column with the mean deviations of the forecast values from the actual ones to the output data set.
* **Calculate confidence interval** provides manual setting of the following parameter:
   * Confidence forecast interval in% from 0 to 100 denotes the real value. By default, it is 95.
