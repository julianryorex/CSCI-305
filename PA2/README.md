# Programming Assignment 2: Common LISP

## Steps:
There will be four levels of grading for this.....first is pretty easy, not as many points, then they build. 

1. Summation of a list, using recursion. 
2. Using recursion finding the max value of consecutive numbers (you don't have to do #1 to do this)
3. Doing part two and including lists inside of list as explained below
4. Doing Part 3 above and including the sub-list that added together

## To Do Part One (grading starts at 75%):
Write a function that uses recursion and does a summation of a list of values sent in to the function.
For example if your list is:

-2, 4, -3, 5, -3, 1, -2, 3
Your answer would be 3

## To Do Part Two (Grading starts at 90%):
Added NOTE ON THIS PART....which includes rules for the next two parts too. 
You must use recursion, but in your recursion method it is OK to have a loop and condition statement to add up the numbers. 
I did this in Python first it was easy to convert
Also you can use a second method to return the value of a sublist in a list for the next part (part three). 
Write a lisp program that takes a list of integer values and finds the highest summation adding consecutive numbers in the list. 
For example if your list is

-2, 4, -3, 5, -3, 1, -2, 3
Your answer would be 6

-2, 4, -3, 5, -3, 1, -2, 3
The answer might be one element, some elements like above, or all the elements. 

Your program should give the highest sum.

## To Do Part Three (Grading starts at 95%):
More points go to programs that can handle all the atoms in lists that have lists in the lists such as: 
(-2, 4, (5, -6), 3, 6, 1)
This list would read:
(-2, 4, -1, 3, 6, 1)

## To Do Part Four (100% possible):
More points will go to a program where the output includes the sublist that was added together (this is hard). 
