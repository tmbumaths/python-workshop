<iframe width="704" height="396" src="https://www.youtube.com/embed/kUnjjW70JQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# DAY 8: Loops

Today we will learn about control structure and loops. Control structure and loops are fundamental concept in programming. Hence they are implemented in every programming language. Actually these concepts make a programming language different from calculators. 

[TOC]

## Loops

Loops are used to run a block of code again and again based on some condition. There are two kinds of loops most programming language have. 

- **While Loop**
- **For Loops**

### While loop

In python `while` loop is used to run a block of code again and again till a ==test== is true. A simple example of such code is the following.

```python
i = 1

while i < 6: # code in this block run repeatedly
    print(i) 
    i += 1
```

```python
   >>>1
      2
      3
      4
      5
```


### For Loop

A **for** loop in python is used to iterate over a sequence (list ,tuple, string) or other iterable objects.

A simple for loop to print each element of the following

``` python 
numbers = [6, 5, 3, 8, 4, 2, 5] # given list for iteration

for val in numbers: # this code block will run for 
    print(val)      # each element of iterable	
```

``` shell
6
5
3
8
4
2
5
```

A common situation in which `for` loop is used to store the value of a computation for each element of a list. Suppose we want to find sum of each element of a list, then we can write the following code.

```python
numbers = [6, 5, 3, 8, 4, 2, 5] # given iterable
sum = 0  # final value will be stored in sum

for val in numbers: # this code will run each element of list	
    sum = sum + val # we add each element in our sum variable

# after leaving for loop look at indentation
print (sum) # finally print the sum
```

```python
33
```

#### Conditionally Controlling the loop

The `for` loop does not require any ==test== to be performed in the code. But these are three important cases where `for` is used with a condition. 

- **break:** It will terminates the loop based on a ==test==.

    A common use case is suppose you want to search for some property of element of a list. Then we will break the loop once the condition is met. For example suppose we are looking for number `5` in the given list of numbers.

    ``` python
    numbers = [6, 5, 3, 8, 4, 2, 5] # given iterable

    for val in numbers: # this code will run each element of list	
        if val == 3:    # the for loop will run until this test is satisfied
            break
        print(val)
    ```

    ``` shell
    6
    5
    ```

!!! important 
    You can see that the code will run until the test is satisfied for the first time. 

- **continue:** It is used to skip the rest of the code inside a loop for the current iteration only. Loop does not terminate but continues on with the next iteration.

A common situation is suppose we want to print odd integers only in a given list, then we can skip a code block for even integer as follows

``` python
numbers = [6, 5, 3, 8, 4, 2,5] # given iterable

for val in numbers:  # this code will run each element of list	
    if val % 2 == 0: # checks for even value and  
        continue     # leave the current iteration
    print(val)
```

``` shell
5
3
5
```

- **pass:** It is a null statement. The statements results into no operation. when it is executed,nothing happens. It is useful as a placeholder,when a statement is required syntactically,but no codes need to be executed.

For example we can achieve the above task with the following code with `pass`.

```python
numbers = [6, 5, 3, 8, 4, 2,5] # given iterable

for val in numbers:  # this code will run each element of list	
    if val % 2 == 0: # checks for even value and  
        pass         # leave the current iteration
    else:
        print(val)
```

```shell
5
3
5
```

### Range Function

In loops, **range** is used to control how many times the loop will be repeated. It is used to generate a finite sequence of natural numbers based on three arguments. First and last argument is optional. 

The `range` function looks like 

``` python
range(start, stop, step)
```

- **start** states the integer value at which the sequence begins, if this is not included then start begins at 0

- **stop** is always required and is the integer that is counted up to but not included

- **step** sets how much to increase (or decrease in the case of negative numbers) the next iteration, if this is omitted then step defaults to 1

So the range function can be used in three different ways

1. **Using Stop Only:** We can use the range as only one argument as a positive natural number say `n`. It will make a iterable of `n` natural numbers starting with `0`. For example 

    ``` python
    for i in range(5):
        print(i)
    ```

    ``` shell
    0
    1
    2
    3
    4
    ```

2. **Using start and stop:** We can use range function with two arguments `start` and `stop`. It will create a iterable of `stop - start` natural numbers with `start`. For example

    ``` python 
    for i in range(5, 10): # create iterable start with
        print(i)           # 5 of length 10 - 5 = 5
    ```

    ``` shell
    5
    6
    7
    8
    9
    ```

3. **Using start, stop and step:** When all three arguments used, it generate a iterable that will began with natural number `start` to `stop - 1` with a `step`. For example

    ``` python
    for i in range(1, 20, 3):
        print(i)
    ```

    ``` shell
    1
    4
    7
    10
    13
    16
    19
    ```

!!! warning
    The `range` doesn't make a list. i.e., if you run this code the output will not be a sequence. 
    ```python
    sequence = range(1, 20, 3)
    print(sequence)
    ```

    ``` shell 
    range(1, 20, 3)
    ```

    In order to get the list. You have to pass this iterable in `list` function.

    ``` python
    sequence = range(1, 20, 3)
    list_sequence = list(sequence)
    print(list_sequence)
    ```

    ``` shell
    [1, 4, 7, 10, 13, 16, 19]
    ```

## References 

2. [:material-file: W3School on While Loop](https://www.w3schools.com/python/python_while_loops.asp)
3. [:material-file: W3School on For Loop](https://www.w3schools.com/python/python_for_loops.asp)