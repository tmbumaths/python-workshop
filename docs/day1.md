# Day 1 - DRAFT 

The agenda of today is the following.

[TOC]

## Defining variable

To define a varaible just choose a varaible name and asign it to a value using `=` as follows

``` python
x = 24 # an integer
pi = 3.14 # a float
name = "Sandeep Suman" # a string
```

**Ex:** Choose three variable and assign each one as an integer, a float and a string, and print them.

## Matheamtical Operations

Mathematical operations, i.e., addition, substraction etc. can be defined as 

``` python
5 + 6 # addition
5 - 6 # substraction
5 * 6 # multiplication
5 / 6 # division
5 ** 6 # exponent or power
```

**Ex:** Choose two variable `x` and `y` and assign each one as integer. Try each of the following operations on them like `x+y`. Finally print them

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

We can use these operations to 4 complicated mathematical expressions in python, for example, we can evaluate 
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

## Importing Libraries

To increase the functiionality of any language we use libraries or pre written code. 

A very useful library in python is called `numpy` which is used to do numerical calculation in python. In order to import a library in python you can use any of the following methods.

``` python
import numpy # method 1 
import numpy as np # method 2
from numpy import * # method 3
```

Any library has some function or variable included in them. for example `numpy` library has mathematical sine function as `sin` and variable `pi`. For each method these things can be accessed as follows

**Method 1:** In order to import the function and variable we will do the following 

``` python
import numpy
print(numpy.pi) # prints the value of pi
print(numpy.sin(numpy.pi)) # prints the sin(pi)
```

**Method 2:** In order to import the function and variable we will do the following 

``` python
import numpy as np
print(np.pi) # prints the value of pi
print(np.sin(np.pi)) # prints the sin(pi)
```

**Method 3:** In order to import the function and variable we will do the following 

``` python
from numpy import *
print(pi) # prints the value of pi
print(sin(pi)) # prints the sin(pi)
```

!!! tip
    Each method has its own advantages and disadvantages but for this course we will use the second method only.

## Plotting simple function in python

To plot simple functions in python we use `numpy` and `matplotlib` libraries and three functions. 

- `linspace` from `numpy`
    The function `linspace` is used to generate a number of equidistant points on a line inteval. It takes three arguments.

    `linspace(x,y,n)` will generate a list of n points between x and y.

    **Ex:** Create 100 equally spaced points between $-\pi/2$ and $\pi/2.$

- `plot` from `matplotlib.pyplot` 
    This is the function used to make a plot. It requires two argument.

    `plot(x,y)` will list of elements x versus y

- `show` from `matplotlib.pyplot`
    This functin will show the final plot. It is simply invoked by typin `show()`

### Simple Plots

Now we have understood the basic components used to plot a function in python. Now we will see them together in a simple example by plotting the function $\sin(x)$ between $-\pi$ to $\pi$. 

``` python
import numpy as np
import matplotlib.pyplot as plt
x = np.linspace(-np.pi, np.pi, 100)
y = np.sin(x)
plt.plot(x,y)
plt.show()
```

**Ex:** Plot the following function in the interval $(1,10)$

- $\sin^2(x) + cos(x)$
- $2x^2 + 1$ 

### Adding attributes in graph

The graph shows visual information in a small space in the form of an image. The representation can be improved by adding app tributes like title legends and other things.

- Modify the *attributes* of a *plot* like *color, line width, line style* by passing additional *arguments.*

- Add *title* to a *plot* using *title command.*

- Incorporate *LaTeX style formatting* by adding a $ sign before and after the *string.*

- Label *x* and *y* *axes* using *xlabel()* and *ylabel() commands.*

- Add *annotations* to a plot using *annotate() command.*

- Get and set the *limits of axes* using *xlim()* and *ylim() commands.*

**Ex:** Draw a *plot* of *cosine graph* between $-2\pi$ to $2\pi$ with line thickness $4$.

### Saving Plots

In order to save plots in the local directory we use `savefig` function. The plot can be save in the following format. 

- pdf 
- ps 
- png 
- svg 
- eps

To save the figure in currrent working directory use the code. 

``` python 

plt.savefig("myplot.png")
```


## References

1. [Basic Math, Mathematical Operators and Python Expressions](https://www.youtube.com/watch?v=Os4gZUI1ZlM)


<!-- will be deleted later 
##### And the answers,

(1).To save a plot, we use the *savefig() function.*

(2).If we save a file without complete path, it gets saved in the current *working directory.*

##### (1.5):- Multiple plots

##### In this tutorial, we have learn about,

(1).Draw *multiple plots* which are *overlaid.*

(2).Use the *figure command.*

(3).Use the *legend command.*

(4).Switch between the *plots* and perform some *operations* on each of them like saving the *plots.*

##### some question

(1).What *command* is used to get individual *plots* separately?

(2).What will be the *command* to identify *sine* and *cosine curve?*
##### And the answers,

(1).The *command "figure()"* can get us the individual *plots* separately.

(2).*legend* inside *brackets* inside *square* *brackets* inside *inverted commas sin(x) comma inside inverted commas cos(x)*

##### (1.6):- Subplots

##### In this tutorial, we have learn about

(1).*subplots* and to *switch* between them.

##### some question

(1).Which of the following is correct?

-*subplot* inside *brackets numRows comma numCols, plotNum*

-*subplot* inside *brackets numRows comma numCols*

-*subplot* inside *brackets numCols comma numRows*

##### And the answers,

(1).The subplot command takes three arguments namely the number of rows, number of columns and the plot number.

##### (1.7):- Additional Features of IPython.

##### In this tutorial, we have learn about

(1).Retrieve the *history* using *percentage history command.* 

(2). View only a part of *history* by passing argument to *percentage history command.*

(3). Save the required lines of code in required order using *percentage save command.* 4. Use *'percentage run space hypen i'* command to run a saved script

##### some question:-

(1).How do you save the command lines 2 3 4 5 7 9 10 11?

*percentage save <filename> 2-5 7 9 hyphen 11*

*percentage save <filename> 2 hyphen 11*

*percentage save <filename>*

*percentage save 2 hyphen 5 7 9 hyphen 11*

(2).Which is the command to run the script?

*Percentage execute <script name>*

*percentage run hyphen i <script name>*

*percentage run <script name>*

*percentage execute hyphen i <script name>*

##### And the answers,

(1).To save the commands 2 3 4 5 7 9 10 11, we issue the *command percentage save <filename> 2 hyphen 5 space 7 space 9 hyphen 11*

(2).To run the script we use *percentage run space hyphen i <scriptname>

--> 