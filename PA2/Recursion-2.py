# def recursion(list, count):
#     if count+1 == len(list):
#         return list[count]
#     else:
#         return list[count] + recursion(list, count+1)
#
# print(recursion([-2, 4], 0))



"""
Write a lisp program that takes a list of integer values and finds the highest summation adding consecutive numbers in the list.
For example if your list is

-2, 4, -3, 5, -3, 1, -2, 3
Your answer would be 6

You must use recursion, but in your recursion method it is OK to have a loop and
condition statement to add up the numbers.
"""

def recursion(l, biggest, count):

    if biggest is None:
        biggest = l[count]

    length = len(l)
    total = None
    for i in range(count, length):

        if i == count: # make total equal to the first element when loop starts
            total = l[count]
            print("Total initiation: " + str(total))

        if not (i+1 == length): # if it is not the last item

            print("Total = total + l[i+1]")
            print("Total: " + str(total) + "\tl[i+1]: " + str(l[i+1]))
            total = total + l[i+1] # add the current item
            print()
            if total > biggest:
                biggest = total
                print("Biggest", biggest)

    if count+1 == len(l):
        return biggest
    else:
        print("recursion")
        return recursion(l, biggest, count+1)

biggest = recursion([11, -3, 5], None, 0)
print("End Biggest: ", biggest)
