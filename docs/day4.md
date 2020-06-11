# Day 4

Today we will learn about two important data types of numpy library which is similar to vecotrs and matrices. Array and matrices stores data similar to lists but they suitable for mathematical operations like dot product and matrix multiplication. 

[TOC]

## Array

Here we will learn about array which is similar to vectors in mathematics.
  
### Importing array 

Similar to other python library we can import array as the following methods

``` python
import array
import array as arr
from array import *
```

!!! note 
  We will use only the second method in this course.


### Creating Array elements

To make an array in python we use the following functions.

``` python 
import array as arr
a = arr.array ('d' ,[1,2,3,4,5])
print(a)
```

This will create a array with variable `a` contains five elements 1 to 5. Here `d` denote the data type of float. For other datatype you can use the following table.

| Code | C Type         | Python Type | Min bytes |
|------|----------------|-------------|-----------|
| b    | signed char    | int         | 1         |
| B    | unsigned char  | int         | 1         |
| u    | Py_UNICODE     | Unicode     | 2         |
| h    | signed short   | int         | 2         |
| H    | unsigned short | int         | 2         |
| i    | signed int     | int         | 2         |
| I    | unsigned int   | int         | 2         |
| l    | signed long    | int         | 4         |
| L    | unsigned long  | int         | 4         |
| f    | float          | float       | 4         |
| d    | double         | float       | 8         |

!!! tip
    You can convert any list of number to an array simply using `d` as in above code.

### Acessing elements of array

- **Element:** To access the an element of the array `a`, we use the following command

    ``` python
    import array as arr
    a = arr.array ('d' ,[1,2,3,4,5])
    print(a[2])  # counting starts with 0
    print(a[-2]) # count from last
    ```

    ``` shell
    3
    4
    ```

- **Slicing:** Similar to the list and strings we can obtain a continuous part of an array

    ``` python
    import array as arr

    a=arr.array('d', [6.8, 5.9, 9.8, 2.4, 3.3])
    print(a[1:3]) # prints the part of array start with index 1 and end before 3
    ```

    ``` shell
    array('d', [5.9, 9.8])
    ```

### Basic Array operations

- **len:** Length of an array can be computed using `len` function as follows

    ``` python
    import array as arr
    a = arr.array ('d' ,[1,2,3,4,5])
    print(len(a)) # prints lenght of array a
    ```

    ``` shell
    5
    ```

- **Concatenation:** We can join two array with `+` operation.

    ``` python
    import array as arr

    a = arr.array('d',[1.2, 5.8, 6.4])
    b = arr.array('d',[1.3, 6])
    c = a + b # array c will have elements of a and b
    print(c)
    ```

    ``` shell
    Array c =  array('d', [1.2, 5.8, 6.4, 1.3, 6.0])
    ```

### Method on array

- **append:** Similar to the list the append is used to add a single element at the end of an array.

    ``` python
    import array as arr
    a = arr.array ('d' ,[1,2,3,4,5])
    a.append(23) # appends 23 at the end of array a
    print(a)
    ```

    ``` shell
    array('d', [1.0, 2.0, 3.0, 4.0, 5.0, 23.0])
    ```

- **extend:** It is used when you want to add more than one element at the end of an array.

    ``` python
    import array as arr
    a = arr.array ('d' ,[4,5])
    a.extend([23, 4.15, 6.7]) # extend array a using list
    print(a)
    b = arr.array ('d' ,[23, 4.15, 6.7])
    a.extend(b) # extend array a using another array b
    print(a)
    ```

    ``` shell
    array('d', [4.0, 5.0, 23.0, 4.15, 6.7])
    array('d', [4.0, 5.0, 23.0, 4.15, 6.7, 23.0, 4.15, 6.7])
    ```


- **insert:** - used when you want to add an element at a specific position in an array.

    ``` python 
    import array as arr
    a = arr.array ('d' ,[1.2,2,3.14,4,5])
    a.insert(1, 2.73) # insert 2.73 at positon 1 (count with 0)
    print(a)
    ```

    ``` shell 
    array('d', [1.2, 2.73, 2.0, 3.14, 4.0, 5.0])
    ```

- **pop:**  It is used when you want to remove an element and return it. We can provide optional arguement to remove an element with given index. 

    ``` python
    import array as arr
    a = arr.array('d', [4, 3, 5, 6.7, 3.5])
    print(a.pop()) # remove the last element
    print(a.pop(1)) # remove index 1 element (count with 0)
    print(a)
    ```

    ``` shell
    3.5
    3.0
    array('d', [4.0, 5.0, 6.7])
    ```

- **remove:** : It is used when you want to remove an  element with a specific value  without returning it.

    ``` python
    import array as arr
    a = arr.array('d', [4, 3, 5, 6.7, 3.5])
    print(a.remove(5)) # remove element 5, but produce no output
    print(a) # prints array a after removing element 5
    ```

    ``` shell
    None
    array('d', [4.0, 3.0, 6.7, 3.5])
    ```

### Looping through an array

Similar to list and string we can use for loops or while loops to go throuth each elements of a list one by one.

- **for** To  iterates over the items of an array specified we can use for as follows

    ``` python
    import array as arr

    a = arr.array('d', [6.8, 5.9, 9.8, 2.4, 3.3])
    for i in a:
        # you can use each element on your desire
        print(i**2) # printing square of each element
    ```

    ``` shell
    46.239999999999995
    34.81
    96.04000000000002
    5.76
    10.889999999999999
    ```

## Matrices in Python

Matrices in python can be achived using one of the following ways

- Nested Lists
- Numpy Arrays
- Numpy Matices

Now we will learn them one by one 

### Nested List

We can used nested list to store data similar to matrices. 

``` python 
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print(matrix)
```

``` shell
[[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

!!! warning
    Nested list doesn't work similar to matrices in mathematics. They are simply table and operations are limited by list functions. 

### Numpy Arrays

Similar to nested list, we can use array inside array to store data in matrices.

``` python
import numpy as np

a = np.array([[1.2, 2.1],[3.6, 4.3]])
print(a)
```

``` shell
[[1.2 2.1]
[3.6 4.3]]
```

#### Operation on matrices

- **Addition:** We use `+` to achieve addition of similar size matrices. 

    ``` python
    import numpy as np

    a = np.array([[1, 2], [3, 4]])
    b = np.array([[10, 20], [30, 40]])
    print(a + b)
    ```

    ``` shell
    [[11 22]
    [33 44]]
    ```

- **Matrix multiplication:** We use `*` to achieve addition of similar size matrices. 

    ``` python
    import numpy as np

    a = np.array([[1, 2], [3, 4]])
    b = np.array([[10, 20], [30, 40]])
    print(a * b)
    ```

    ``` shell
    [[ 10  40]
    [ 90 160]]
    ```

- **Transpose:** We can transpose a matrix using the `transpose` function of `numpy` library. 

    ``` python
    import numpy as np

    a = np.array([[1,2,3],[4,5,6]])
    print(a)
    print(np.transpose(a))
    ```

    ``` shell
    [[1 2 3]
    [4 5 6]]
    [[1 4]
    [2 5]
    [3 6]]
    ```

### Numpy Matrices

Numpy matrix is a class in nunpy library to handle matrices and mathematical operations related to them. 


#### creating a matrix from a string

The main advantage of this class is that it has flexible method of creating matrices and slicing them. 

``` python
import numpy as np

a = np.matrix("1, 2; 3, 4")
b = np.matrix([[10, 20],[30, 40]])
print(a)
print(b)
```

``` shell
[[1 2]
 [3 4]]
[[10 20]
 [30 40]]
```

#### Operations on Numpy Matrices

The operation on numpy matrices are similar to the matrices we make using numpy arrays.

## Refrences

1. [:material-file: W3School on Numpy Array](https://www.w3schools.com/python/numpy_creating_arrays.asp)
2. [:material-file: Numpy Matrices on Tutorials Point](https://www.tutorialspoint.com/numpy/numpy_matrix_library.htm)