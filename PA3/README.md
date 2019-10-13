# Programming Assignment 3: The GO Programming Language

## To Do:
You are to write a program in Go that opens a text file, imports all the data in the text file to your program, takes out all the numbers out of the imported data and then exports the contents into a new text file.  Open, read, edit, write.

## Requirements:
- Your program will take the name of the input text file by a command line argument. 
- Your program will need the following functions:
  - The main function that calls all the rest of the functions, except error checking function, sends parameters needed to the functions and receives variables back from functions when needed.  
  - A function to open the file and read in the contents of the file. 
  - A function to parse out all numbers in the imported file data. 
  - A function to write the new data, without numbers back to the output file.
  - An error checking function, many of these steps have function calls that return an error variable, that variable should be sent to this function, if there is no error it doesn't need to do anything, if there is an error it should be sent to the panic function (built in, you don't write panic).
- The output file name should be taken from user input.

## Cut and Paste Sample Input:
T56544h7575475e 75754an5675477s87567w7567e8767676574r
t5654o565654 7575757th675676e la75677s375475743t
q56456u56546e546st7575ion5654 75747o754554f
t3333333h55555e s66ei7c77o8n8d796 q999u999966764i55645434z
w4354543i646546l7677l 6868b68686654e "G224445566oL444a36346n35120g"88.
