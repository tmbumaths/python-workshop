
<iframe width="704" height="396" src="https://www.youtube.com/embed/9PlF1UYVnXQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# DAY 7: Conditional Statements

Today we will learn about control structure and loops. Control structure and loops are fundamental concept in programming. Hence they are implemented in every programming language. Actually these concepts make a programming language different from calculators. 

[TOC]

## Boolean

Since we have seen that control structure depends on ==test==. Test is nothing but a statement in python whose value is either `True` or `False` but not together. For this we have a data type in python to represent this, known as boolean data type. 

### Assigning Boolean Data

``` python
test1 = True
test2 = False
print(test1)
print(test2)
```

``` shell
True
False
```

Many relational operation result in boolean in pyton. For example if we ask following questions?

``` python
test1 = 5 >= 0     # True
test2 = 5 < 0      # False
test3 = 6 == 3     # False
test4 = (6/2 == 3) # Ture, use bracket for better looks
print(test1)
print(test2)
print(test3)
print(test4)
```

``` shell
True
False
False
True
```

We can also check some variable has a particular value or not using this idea. 

``` python
f_name = "Sandeep"
l_name = "Suman"
full_name = f_name + " " + l_name
test1 = (full_name == "Sandeep Suman") 
print(test1)
```

``` shell
True
```

### Boolean Operations

Boolean data has three main operation. Others are combination of them

- **not:** It interchange the value of boolean between `True` and `False`.
- **or:** It takes the logical `or` operation between two boolean statements.
- **and:** It takes the logical `and` operation between two boolean statements.

The result can be summarized in a table as follows

| A | B | not A | not B | A == B | A =! B | A or B | A and B |
|---|---|-------|-------|--------|--------|--------|---------|
| T | F | F     | T     | F      | T      | T      | F       |
| F | T | T     | F     | F      | T      | T      | F       |
| T | T | F     | F     | T      | F      | T      | T       |
| F | F | T     | T     | T      | F      | F      | F       |

``` python 
f_name = "Sandeep"
l_name = "Suman"
full_name = f_name + " " + l_name
test1 = (full_name == "Sandeep Suman") # True 
test2 = not test1                      # not True = False
test3 = (full_name == "Sandeep Suman") or (5 <= 0)  # True OR  False = True
test4 = (full_name == "Sandeep Suman") and (5 <= 0) # True AND False = False
print(test1)
print(test2)
print(test3)
print(test4)
```

``` shell
True
False
True
False
```

## Conditional Statements

Till now all the lines of a program run one by one. The control structure will enable us to run a line based on a ==test==. 

### General Structure 

The structure of general control struructure in python(or in any programming language) will look like the following:

``` python
if <test1>:
    <statement1>
elif <test2>:
    <statement2>
    .
    .
    .
else:
    <final statement>
```

The situation can graphically represented as the following diagram

![General If Statement](./image/general-if-statement.svg)

If we look at another perspective we can think this as the following sequnce of tests

![sequencial if statement](./image/sequencial-test.svg)

When the i-th test fails, then program check for (i+1)-th test and so on. If any test say k-th one will pass then the program will run the k-th statement will run and program will exit this control structure. If all the statement fails the program will run the final statement nested under `else`. 

### Implementation 

Except the first **if** statement all other are optional. We can combine as many test as we want. 

- **One Test:** The smallest possible program with `if` statement can written as following

    ``` python
    number = 77
    if number > 60:  # colon represent a block in python
        print("1st Devision") # each block need to be indented by 4 whitespace
    ```

    ``` shell
    1st Devision
    ```

    The output is expected. But even if the number $\leq 60$, we will not get any output because the code has no `else` statement.

    ``` python
    number = 55
    if number > 60:
        print("1st Division")
    ```

    ``` shell

    ```

- **If...else:** We can combine `else` to catch the program when test fails as follows

    ``` python
    number = 55
    if number > 60:
        print("1st Division") 
    else:
        print("Not 1st Division")
    ```

    ``` shell
    Not 1st Division
    ```

- **Elif:** More than one test can be used using `elif` statement. 

    ``` python 
    number = 37
    if number >= 60:
        print("1st Division") 
    elif number >= 45:
        print("2nd Division")
    elif number >= 35:
        print("Third Division")
    else:
        print("Fail")
    ```

    ``` shell
    Third Division
    ```

    **Ex:** Change the number to get each type of output.

**Ex:** Write a program that will give the grade of a student based on marks. You can use any criteria for grade.

## References 

1. [:material-file: W3School on If Statements](https://www.w3schools.com/python/python_conditions.asp)