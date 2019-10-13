# Programming Assignment 1: FORTRAN


## Part One To Do:
Write a Fortran program that makes change for the country of Looney which has coin values features which are odd. 
Take user input of a number from 1 to 99 which represents the amount of Looney money that will need to be converted to coins.
Start with the largest coins and maximize the number of lunkers you need, then loonters, littles and eventually poonnies. (My face is on the loonter.) 

  1 Lunker = 30 cents
  1 loonter = 15 cents
  1 little = 5 cents
  1 Pooney = 1 cent

Read user input from the keyboard, and write to screen using Fortran functions. 
Do not print out coin if none (zero) are needed

Test on 99, 90, 76, 75, 74, 55, 41, 30, 25, 10, 5, 1
Then test on bad data -99, -1, 0, 100, 1000 abc 7.7

Bad data should have an error output given. 
Make sure your code uses a function to return the amount of each coin needed, the function should be called for each coin and then it can be used for all parts below and the code doesn't need to be rewritten. The smaller amount of lines of code (reusable code using function calls) the better.

**Output:**
The output should look like this for input 41

  1 Lunker
  2 Littles
  1 Pooney

The output should look like this for input 76

  2 Lunker
  1 Loonter
  1 Pooney

## Problem Part Two:
Make change using non-advancing write

Modify Problem 1 to have a new function that uses non-advancing write to output the solution:
Put all the results on one line, again do not print zero values

The output should look like this for input 41
1 Lunker,  2 Littles, 1 Pooney

The output should look like this for input 76
1 Lunker, 2 Littles,  1 Poony

## Problem part Three:
Print the date and time in this format at the begining:

mo-dy-year, Hr:mi
01-17-2019, 09:15
