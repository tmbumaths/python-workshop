<iframe width="704" height="396" src="https://www.youtube.com/embed/OxStOd763_A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Day 3

[TOC]

## List

Till now we are using list to store data and plot them. Now today we will learn about it extensively. List is a data structure, means a way to store and access data. So today we will learn how to store and access data in list data structure. 

- a list is a collection of data in a finite sequence.
- it can hold values of multiple datatype, i.e., one entry can be integer, other can float or string.

### Creating lists

A list is created using a square bracket as follows,

``` python
a = [] # an empty list
b = [1,2,3,4,5] # list of numbers
c = ["sandeep", "suman", 2020, 7] # mix datatypes
d = [["sandeep", "suman"], 2020, []] # list inside list

print(c)
```

``` shell
['sandeep', 'suman', 2020, 7]
```

### Accessing data inside list

Each entry has an index or position in a list, which can be used to access them. As counting starts in python from `0`, So the first index is `0` and second index is `1` and so on.  

``` python 
c = ['sandeep', 'suman', 2020, 7]
print(c[0]) # to get the 0th element (count with 0)
print(c[2]) # to get the 2nd element (count with 0)
print(c[-1]) # count from last
```

``` shell
sandeep
2020
7
```

### Basic list operations

- **Length:** The length of a list can be computed as follows

     ``` python
     len(c)
     ```

     ``` shell
     4
     ```

- **Addition:** Two or more lists can be added with `+` operation as follows

     ``` python
     a = [1, 2]
     b = ["a", "b"]
     c = a + b
     print(c)
     ```

     ``` shell
     [1, 2, 'a', 'b']
     ```

-  **Multiplication:** Repetition can be achieved with `*` operation as follows

     ``` python
     a = ['Hi'] * 5
     print(a)
     ```

     ``` shell
     ['Hi', 'Hi', 'Hi', 'Hi', 'Hi']
     ```

- **Slicing:** A part of of list starting with `i` index and end before `j` can be obtained by `List[i:j]`, for example 

     ``` python
     c = ["sandeep", "suman", 2020, 7]
     print(c[1:3])
     ```

     ``` shell
     ['suman', 2020]
     ```

### List as Stack

Stack is a data structure based on LIFO(Last in first out). 

- **Append:** The `append` method on a list will add element in the end of the list.

     ``` python 
     L = []
     L.append(1) # 1 will be added to L
     L.append(2) # 2 will be added to L
     print(L)
     ```

     ``` shell
     [1, 2]
     ```

- **Pop:** The `pop` method on list will remove the element from the last. 

     ``` python
     L = [1, 2]
     L.pop()
     print(L)
     ```

     ``` shell
     [1]
     ```

     The method `pop` also takes addition argument to remove element from any given index.

     ``` python
     L = [1, 2]
     L.pop(0) # removes the element with index 0
     print(L)
     ```

     ``` shell
     [2]
     ```

### Other method on list

- **Index:** This method is used to get the index of an element.

     ``` python
     L = ["apple", "mango", "orange"]
     i = L.index("mango")
     print(i)
     ```

     ``` shell
     1
     ```

- **Remove:** This method is used to remove an element in the list.

     ``` python
     L = ["apple", "mango", "orange"]
     L.remove("mango")
     print(L)
     ```

     ``` shell
     ['apple', 'orange']
     ```

- **Reverse:** This method will reverse the elements of the given list.

     ``` python
     L = ["apple", "mango", "orange"]
     L.reverse()
     print(L)
     ```

     ``` shell
     ['orange', 'mango', 'apple']
     ```

- **Sort:** This method is used to sort the elements of a list. 

     ``` python
     L = [4, 6, 2, 7, 1, 3]
     L.sort()
     print(L)
     ```

     ``` shell
     [1, 2, 3, 4, 6, 7]
     ```

!!! tip 
     The maximum element of a list can be obtained using sort taking in the last element. i.e.,

     ``` python
     L = [4, 6, 2, 7, 1, 3]
     L.sort()
     max = L[-1]
     print(max)
     ```

     ``` shell
     7
     ```

### Membership and Iterating of a List

- Like the membership in the set. We can tell if something is inside a list or not as follows

     ``` python
     L = ["apple", "mango", "orange"]
     print("apple" in L)
     print("guava" in L)
     ```

     ``` shell
     True
     False
     ```


- Often in programming we want look for each element of a list one by one from start to finish. The process is generally known as `iteration` in programming.

     A simple program to iterate a list is as follows

     ``` python
     fruits = ["apple", "mango", "orange"]
     for i in fruits: # semicolon is used to make code block
          print(i)    # 4 space is used here !important
     ```

     ``` shell
     apple
     mango
     orange
     ```

## Strings

String is one the basic datatypes of the python language. There are many ways to define a string but we use the most common method by writing a sentence or paragraph inside single(`'`) or double(`"`) quotes.

``` python 
mystring = "python is awesome"
mystring = 'python is awesome'
print(mystring)
```

``` shell
python is awesome
```

!!! warning
     Even numbers in single or double quotes behaves as an string.

     ``` python
     temp = "38.7"
     print(type(temp))
     ```

     ``` shell
     <class 'str'>
     ```

### Accessing data inside list

String behaves very much similar to the list. You can think that it is a list where each character  has as index. We can obtain a character from its position or index. As counting starts in pyton from `0`, So the first index is `0` and second index is `1` and so on.  

``` python
mystring = "python is awesome"
fifth = mystring[4] # fifth character from start
last_fifth = mystring[-4] # fifth character from last
print(fifth, last_fifth)
```

``` shell
o s
```

### Basic list operations

- **Length:** The length of a string can be computed as follows

     ``` python
     print(len(mystring))
     ```

     ``` shell
     17
     ```

- **Addition:** Two or more string can be added with `+` operation as follows

     ``` python
     a = "Sandeep "
     b = "Suman"
     c = a + b
     print(c)
     ```

     ``` shell
     Sandeep Suman
     ```

- **Multiplication:** Repetition can be achieved with `*` operation as follows

     ``` python
     a = 'Hi!' * 5
     print(a)
     ```

     ``` shell
     Hi!Hi!Hi!Hi!Hi!
     ```

- **Slicing:** A part of of string starting with `i` index and end before `j` can be obtained by `List[i:j]`, for example 

     ``` python
     c = "sandeep"
     print(c[1:4]) # start from 1st and end before 4th (counting starts with 0)
     print(c[4:])  # everything after 4th (counting starts with 0)
     print(c[:4]) # to get the substring from start and end before 4th (counting starts with 0)
     ```

     ``` shell
     and
     eep
     sand
     ```

- **Extended Slicing:** The slicing in string is more flexible as it accepts more than two arguments. For example `X[1:10:2]` will get every other item in the substring `X[1:10]`

     ``` python
     univ = "TilkaManjhiBhagalpurUniversity"
     s1 = univ[1:20:2] # get even position elements in substring univ[1:20]
     s2 = univ[::2]  # get even position elements
     s3 = univ[::-1] # reverse the string
     print(s)
     ```

     ``` shell
     ikMnhBaapr
     TlaajihgluUiest
     ytisrevinUruplagahBihjnaMakliT
     ```

### String Methods

Some of the string method is the following 

- **Capitalize:** This method is used make first letter capital.

     ``` python
     msg = "Welcome to FaculTy DevelopMent prograMME."
     print(msg.capitalize())
     ```

     ``` shell
     Welcome to faculty development programme.
     ```

- **Lower:** It will make every letter small.

     ``` python
     msg = "Welcome to FaculTy DevelopMent prograMME."
     print(msg.lower())
     ```

     ``` shell
     welcome to faculty development programme.
     ```

- **Replace:** It will one substring with another.

     ``` python
     msg = "Welcome to FaculTy DevelopMent prograMME."
     print(msg.replace("M", "X")) # replace all M with X
     ```

     ``` shell
     Welcome to FaculTy DevelopXent prograXXE.
     ```

     To replace only one instance, we can pass one more argument. 

     ``` python
     msg = "Welcome to FaculTy DevelopMent prograMME."
     print(msg.replace("M", "X", 1)) # replace the first M with X
     ```

     ``` shell
     Welcome to FaculTy DevelopXent prograMME.
     ```

- **Find:** It will find one string in another string.

     ``` python
     msg = "Welcome to FaculTy DevelpMent prograMME."
     print(msg.find("to")) # finds the position of "to"
     ```

     ``` shell
     8
     ```

     You can think of this as the following 

     ``` python
     msg = "Welcome to FaculTy DevelpMent prograMME."
     position = msg.find("to") # position of to
     original = msg[:8] + "to" + msg[8+2:] # the original msg

     print(original)
     ```

     ``` shell
     Welcome to FaculTy DevelpMent prograMME.
     ```

- **Split:** The `split` method will convert a string to list of substring

     ``` python 
     msg = "Welcome to FaculTy DevelpMent prograMME."
     L = msg.split() # default method will split at each whitespace
     print(L)
     ```

     ``` shell
     ['Welcome', 'to', 'FaculTy', 'DevelpMent', 'prograMME.']
     ```

     The `split` method is much more flexible. We can pass an argument to tell about the marker for split. 

     ``` python
     msg = "Amar,Akbar,Anthony"
     L = msg.split(",") # split each part with ","
     print(L)
     ```

     ``` shell
     ['Amar', 'Akbar', 'Anthony']
     ```

- **Join:** The join method works opposite of split. We can make a string using the split method.

     ``` python
     L = ['Amar', 'Akbar', 'Anthony']
     msg = " ".join(L) # the string in between will go before "."
     print(msg)
     ```

     ``` shell
     Amar Akbar Anthony
     ```

     If we want to join with `,` in all the elements of the list.

     ``` python
     L = ['Amar', 'Akbar', 'Anthony']
     msg = ",".join(L)
     print(msg)
     ```

     ``` shell
     Amar,Akbar,Anthony
     ```

     **Ex:** Try to join the list L with comma and space.
     **Ex:** Try to join in smaller latter. 

!!! tip
     There are huge number of list methods in python, and python programming is considered to be very powerful in list manipulation. You can google search to do any kind of list manipulation. 

### Membership and Iterating a String

- *Membership* tells if a string is a part of larger string or not. 

     ``` python
     print("T" in "TMBU")
     print("math" in "mathematics")
     print("ss" in "sandeep")
     ```

     ``` shell
     True
     True
     False
     ```

- The iteration in string work similar to list as follows 

     ``` python
     univ = "TMBU"
     for i in univ:
          print(i)
     ```

     ``` shell
     T
     M
     B
     U
     ```

**Ex:** Write a program to check if the word 'orange' is present in the "This is orange juice".

**Ex:** Convert the date written in the format "10/06/2020" to "10-06-2020".

**Ex:** Convert "Tilka MaJHi BHaGalPUR UNIVersiTy" to "Tilka Manjhi Bhagalpur University".

## References

1. [:material-file: W3School on List](https://www.w3schools.com/python/python_lists.asp)
2. [:material-file: W3School on String](https://www.w3schools.com/python/python_strings.asp)