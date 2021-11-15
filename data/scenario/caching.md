# Caching

**Caching** means saving of once calculated value.

The strategy of [lazy evaluations](https://wiki.loginom.ru/articles/lazy-evaluation.html) provides for calculation of the calculated values only if it is required to use them. In this case, the intermediate calculations are not kept in the computer memory, and they are recalculated each time when it is required. Such strategy considerably lowers the requirements to the computational performance, more specifically, to the computer memory (RAM). However, if the algorithm provides for the multiple use of the intermediate data, this strategy can cause increase of the algorithm execution time. In these cases, it is reasonable to save the intermediate calculations in the memory for the further use.

Thus, caching is reasonable in the case of multiple use of the calculated values by the subsequent handlers and visualizers in order to avoid repeated calculations.

---

Data caching requires the additional memory size but in the cases described above it decreases the algorithm execution time. The workflow developer must provide the optimal balance of these parameters.

## Caching of Expressions

It is required to enable *Caching* in the *Calculator* [expressions](../processors/transformation/calc/expression.md) in the case of `Data()` function usage for the recursive computation of values.

It is recommended to use *Caching* when using the functions result of which depends on the time point when this calculation is performed, for example: `Random()`, `Today()`, etc.
