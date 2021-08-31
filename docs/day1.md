<iframe width="704" height="396" src="https://www.youtube.com/embed/QhUP9d9qAXE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Day 1: Variables and Mathematical Operations

The agenda of the first day is to do some trivial things, like printing something and doing school arithmetic. 

[TOC]

## Print Function

A program can be perfect but produce no output unless it is not told to do so. To get the output from the program we have to use `print` function. 
Like mathematics **functions** in python are objects which takes some input and produce some output. Many functions are inbuilt in python. Later we will learn to define our own functions. 

Now let's try the first program in any language is usually printing **Hello World!**. In python it is very simple and intuitive. 

``` python
print("Hello World!")
```

```
Hello World!
```


## Defining variable

In every programming language, we can assign something a value. To define a variable just choose a variable name and assign it to a value using `=` as follows

``` python
x = 24 # an integer
pi = 3.14 # a float
msg = "Hello World!" # a string
```

Now we can recall these value by it's variable. Like here `msg` is assigned to `Hello World!`. We can print this by simply

``` python 
print(x)
print(pi)
print(msg)
```

```
24
3.14
Hello World!
```

**Ex:** Choose three variables and assign one as an integer, one as a float and one as a string, and print them.

!!! warning
    A variable can be assigned multiple times in a program. Only the last value will be printed.

    ``` python 
    name = "Ram Kumar"   # name is Ram Kumar
    name = "Shyam Kumar" # name is Shyam Kumar
    print(name)
    ```

    ```
    Shyam Kumar
    ```

!!! tip
    The line after `#` got ignored by the python. It is called a comment in any programming language. You can use comment to add some instructions to the code. 

## Mathematical Operations

Mathematical operations, i.e., addition, subtraction etc. can be done as 

``` python
5 + 6 # addition
5 - 6 # subtraction
5 * 6 # multiplication
5 / 6 # division
5 ** 6 # exponent or power
```

**Ex:** Choose two variable `x` and `y` and assign each one as an integer. Try each of the above operations on them like `x+y`. Finally print them

``` python
x = 2 
y = 3
z = x + y
print(z)
```

```
5
```

### Mathematical Expression

We can use these operations to evaluate complicated mathematical expressions in python, for example, we can compute 
$$ f(x) = \frac{x^2 + 1}{y-1} $$
as follows

``` python 
x = 5 
y = 3
z = (x**2 + 1) / (y-1)
print(z)
```

```
13
```

## References

1. [:material-file-outline: Official Python Refererence](https://docs.python.org/3/)
2. [:material-file-outline: Matplotlib Documentation](https://matplotlib.org/3.2.1/contents.html#)
3. [:material-video-outline: Basic Math, Mathematical Operators and Python Expressions](https://www.youtube.com/watch?v=Os4gZUI1ZlM)
4. [:material-file-outline: Gallery Matplotlib](https://matplotlib.org/3.1.1/gallery/index.html)
