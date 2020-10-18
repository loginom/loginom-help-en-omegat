# ![Variable Union](../../images/icons/components/unionvariables_default.svg) Variable Union

The handler is designated for union of two and more sets of variables into one set.

If names of the variables from different sets coincide, names of such variables in the output data set will be supplemented by unique numbers. If the variable name ends with a digit, in this case, names of these variables are numbered in an ascending order in the output data set.

## Ports

### Input

* ![Input variables](../../images/icons/app/node/ports/inputs-optional/variable_inactive.svg) **Input variables** denote an optional set of variables.
* ![Added variables](../../images/icons/app/node/ports/inputs/variable_inactive.svg) **Added variables** denote a required set of variables.
* ![Another port](../../images/icons/app/node/ports/add/add_inactive_default.svg) **Add another port** enables to create new input ports for the subsequent sets of variables.

### Output

* ![Output variables](../../images/icons/app/node/ports/outputs/variable_inactive.svg) **Output variables** denote a new set of variables.

%spoiler%Example:%spoiler%

There are three sets of variables:

* Set A:

| Name | Caption | Value |
|:--|:--|--:|
| a0 | a | 10 |
| b | b | 12 |

* Set B:

| Name | Caption | Value |
|:--|:--|--:|
| a0 | a | 20 |
| c | c | 18 |

* Set C:

| Name | Caption | Value |
|:--|:--|--:|
| a1 | a | 30 |
| b | b | 25 |

It is required to provide serial connection to the node. We will receive the following list of variables at the output (the "Note" column is provided for clarity; it won't be included into the resulting set):

| Name | Caption | Value | Note |
|:--|:--|--:|:--|
| a0 | a | 10 | from set A, variable a0 |
| b | b | 12 | from set A, variable b |
| a1 | a | 20 | from set B, variable a0 |
| c | c | 18 | from set B, variable c |
| a2 | a | 30 | from set C, variable a1 |
| b_1 | b | 25 | from set C, variable b |

Obviously, the second variable `b` was renamed to `b_1`, whereas the second variable `a0` was renamed to `a1`, and `a1` was renamed to `a2` because after renaming of `a0` to `a1`, it had already been a double.

%/spoiler%
