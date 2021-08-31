<iframe width="704" height="396" src="https://www.youtube.com/embed/BKZpC3Fm5IE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Day 5: Strings

[TOC]

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

String behaves very much similar to the list. You can think that it is a list where each character  has as index. We can obtain a character from its position or index. As counting starts in python from `0`, So the first index is `0` and second index is `1` and so on.  

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
     msg = "Welcome to FaculTy DevelopMent prograMME."
     print(msg.find("to")) # finds the position of "to"
     ```

     ``` shell
     8
     ```

     You can think of this as the following 

     ``` python
     msg = "Welcome to FaculTy DevelopMent prograMME."
     position = msg.find("to") # position of to
     original = msg[:8] + "to" + msg[8+2:] # the original msg

     print(original)
     ```

     ``` shell
     Welcome to FaculTy DevelopMent prograMME.
     ```

- **Split:** The `split` method will convert a string to list of substring

     ``` python 
     msg = "Welcome to FaculTy DevelopMent prograMME."
     L = msg.split() # default method will split at each whitespace
     print(L)
     ```

     ``` shell
     ['Welcome', 'to', 'FaculTy', 'DevelopMent', 'prograMME.']
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

2. [:material-file: W3School on String](https://www.w3schools.com/python/python_strings.asp)