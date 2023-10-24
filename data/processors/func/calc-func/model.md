---
description: Справка по функциям моделей Loginom. Работа с моделями авторегрессии - AutoRegression,  экспоненциально сглаженного скользящего среднего - ExpMovingAverage, простого скользящего среднего - MovingAverage. Описание функций и используемых аргументов.
---
# Function Models

## AutoRegression

**AutoRegression(C, A0, X{t}, A1, X{t-1} ...)**

* C - constant.
* A0 ... An - regression coefficients.
* X(t) ... X(t-n) - series values.

It is used for construction of the user model of the following autoregression type:
Prediction = С + A0 * X(t) + A1 * X(t-1) + ...

## ExpMovingAverage

**ExpMovingAverage(X{t}, X{t-1} ...)**

* Arguments - values of the numeric series.

It is used for construction of the user model of the exponentially smoothed moving average.

An exponentially smoothed moving average, as opposed to a simple moving average, gives the latest observations a more significant weight than the penultimate one, etc.

Calculation formula is defined by the recurrence equation: EMA(t) = a * X(t) + (1 - a) * EMA(t-1), where EMA(k) - the value of exponentially smoothed moving average in point k, a - smoothing parameter, a = 2 / (n + 1), where n - window width.

## MovingAverage

**MovingAverage(X{t}, X{t-1} ...)**

* Arguments - values of the numeric series.

It is used for construction of the user model of the simple moving average in the user models.

Formula of the moving average calculation:
MA = (X(t) + ... + X(t - n))/n.
