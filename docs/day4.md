<iframe width="704" height="396" src="https://www.youtube.com/embed/OxStOd763_A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Day 4: Lists

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


## References

1. [:material-file: W3School on List](https://www.w3schools.com/python/python_lists.asp)