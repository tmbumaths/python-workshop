<iframe width="704" height="396" src="https://www.youtube.com/embed/WiMMcwK8izc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# DAY 9

Today we will learn about functions in programming. The functions in programming is similar to mathematical functions which takes input and produce output. But the main idea of function in programming is inspired by one of guiding principle of programming known as ==don't repeat yourself==, also known as ==DRY==. So if some part of code is needs to be written again and again then it means that we can convert this into a function as use them. 

[TOC]

## General Theory

Functions are the foundation of higher level programming language. There are programming language which implements everything based on functions only those are called ==functional programming language==. Although modern languages implement a more abstract thing known as ==object== which is composed of data and methods(function associated with the data). Such programming language are called ==object oriented programming language==, and python is one of them.

Recall what have you done till now, you realize everything is a function. For example 

1. **Variables:** If we assign a variable to some value say `name = "sandeep"`, then we make a function `name` and when we call `name` we get its value, i.e., `"sandeep"`.
2. **Operations:** From mathematics we know that operations are actually functions. 
3. **Control Structure:** You can think of it as it takes one or more `boolean` and assign a value.

Two main usage of function is the following:

1. **Maximizing Code Reuse and Minimizing Redundancy**

    As I have already mentioned if we use some block of code again and again, we can convert this into a function used it. It is not limited to one program, a complex function written for one program can be used in many programs. *Libraries and  modules* are example of such application.

2. **Procedural Decomposition**

    A complex task can be achieved by using a number of small task in a sequence. We can make each such small independent task as it's own function. When we combine all of them, we get our original task. This make the *code* easy to use, extend and debug.

## Python Function

Now we will see how function is implemented in python language. 

### General Structure

A general python function has a name for reference. It takes 0 to some finite number of inputs or arguments. It executes some block of code using those arguments. Finally it will return only one value. Return is also optional, you may want to return something or just carry some task without saying anything.

The template of a general *python function* is the following

``` python
def <name> (arg1, arg2, ..., argN): # function with name takes N arguments
    <statements>    # block of code executed with arguments
    return <value>  # a value is returned at the end
```

### Simple Functions

Now let's look at some concrete examples

1. **Function with no arguments**

    It is quite possible to have a python function with no argument at all. It works a complex variable. For example

    ``` python
    def light_year():
        speed_of_light = 299792458
        return speed_of_light * 365 * 24 * 60 * 60 

    print(light_year())
    ```

    ``` shell
    9454254955488000
    ```

    Now we can use light year as a variable.

2. **Function with few arguments**

    Now let's look at some typical python function

    ``` python
    def greet(arg):
        return "Hello " + arg   # whatever it takes add a hello to it

    print(greet("Sandeep Suman"))
    ```

    ``` shell
    Hello Sandeep Suman
    ```

    ``` python
    def prod(x, y):
        return x * y

    print(prod(2, 5))     # product of number
    print(prod("Hi!", 3)) # product as string
    ```

    ``` shell
    10
    Hi!Hi!Hi!
    ```

    !!! note
        You can see that function takes care of the datatypes. 

3. **Using one function inside other**

    We can also use one function inside other as following

    ``` python
    def greet(arg):
        return "Hello " + arg + "."   

    def reading(name, subject):
        return greet(name) + " Do you want to learn " + subject + "?"

    print(reading("Sandeep", "Python"))
    print(reading("Suman", "Mathematics"))
    ```

    ``` shell
    Hello Sandeep. Do you want to learn Python?
    Hello Suman. Do you want to learn Mathematics?
    ```

4. **Using control structure and loops**

    You can combine all your knowledge till now to make more and more complex functions. A function for computing the absolute value of a number is the following:

    ``` python
    def abs_number(num):
        if num >= 0:
            return num
        else:
            return (-1) * num

    print(abs_number(53))
    print(abs_number(0))
    print(abs_number(-3.14))
    ```

    ``` shell
    53
    0
    3.14
    ```

    A function to compute the sum of all elements of a list can be written as 

    ``` python
    def sum_list(given_list):
        sum = 0
        for val in given_list:
            sum = sum + val

        return sum

    print(sum([1, 2, 3])) # sum of all element of list
    print(sum(range(51))) # sum of first 50 natural no
    ```

    ``` shell
    6
    1275
    ```

### Recursive Function

Similar to mathematics recursive function are those function which call themselves. A simple example is *factorial*.

``` python
def fact(n):
    if n == 0: # base case
        return 1
    else:      # general case
        return n * fact(n - 1)

print(fact(0))
print(fact(1))
print(fact(3))
print(fact(10))
```

``` shell
1
1
6
3628800
```

**Ex:** Make your own function of each type and implement them in python.

!!! quote "End of this course"

    Congratulations!!!

    We have come at the end of this course. You have certainly learned something if you have followed the course till now. This is just the basic. There is no limit in python programming, and we shouldn't expect to learn a lot in one week. This course is meant to just give you a start. Please continue your learning with the different resources available. 
    
    I have included the guiding principle for python programming refereed as ==the zen of python==. Go thorough them and try to use them. 

## The Zen of Python

Tim Peters wrote this set of guiding principles and posted it on the Python mailing list in 1999. Actually there are 20 of them, but only 19 were documented. 

1. Beautiful is better than ugly.
2. Explicit is better than implicit.
3. Simple is better than complex.
4. Complex is better than complicated.
5. Flat is better than nested.
6. Sparse is better than dense.
7. Readability counts.
8. Special cases aren't special enough to break the rules.
9. Although practicality beats purity.
10. Errors should never pass silently.
11. Unless explicitly silenced.
12. In the face of ambiguity, refuse the temptation to guess.
13. There should be one-- and preferably only one --obvious way to do it.
14. Although that way may not be obvious at first unless you're Dutch.
15. Now is better than never.
16. Although never is often better than *right* now.
17. If the implementation is hard to explain, it's a bad idea.
18. If the implementation is easy to explain, it may be a good idea.
19. Namespaces are one honking great idea -- let's do more of those!

## References 

1. [:material-file: W3School on Python Functions](https://www.w3schools.com/python/python_functions.asp)
2. [:material-file: Wikipedia The ZEN of Python](https://en.wikipedia.org/wiki/Zen_of_Python)