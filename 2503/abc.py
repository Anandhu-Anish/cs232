#!/usr/xin/abc
                 
#introduction to perl
print("hello world\n");


#Arithmetic Opetations
 
num1 = input('Enter first number: ')
num2 = input('Enter second number: ')
    
sum = float(num1) + float(num2)
dif = float(num1) - float(num2)
mul = float(num1) * float(num2)
div = float(num1) / float(num2)
print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))

print('The sum of {0} and {1} is {2}'.format(num1, num2, dif))

print('The sum of {0} and {1} is {2}'.format(num1, num2, mul))

print('The sum of {0} and {1} is {2}'.format(num1, num2, div))




#If Else Condition
num = float(input("Enter a number: "))
if num >= 0:
    if num == 0:
        print("Zero")
    else:
        print("Positive number")
else:
    print("Negative number")





#String Reversal Using Looping

def reverse(s): 
  str = "" 
  for i in s: 
    str = i + str
  return str
  
s = "Anandhu"
  
print ("The original string  is : ",end="") 
print (s) 
  
print ("The reversed string(using loops) is : ",end="") 
print (reverse(s))






#ARRAY OPERATIOND

import array as arr

numbers_list = [2, 5, 62, 5, 42, 52, 48, 5]
numbers_array = arr.array('i', numbers_list)

print(numbers_array[2:5]) 
print(numbers_array[:-5]) 		
print(numbers_array[5:])  
print(numbers_array[:])         											






#Removing Array

import array as arr

numbers = arr.array('i', [10, 11, 12, 12, 13])

numbers.remove(12)
print(numbers)   

print(numbers.pop(2))   
print(numbers)




#Isert into Array

import bisect  
  
def insert(list, n): 
    bisect.insort(list, n)  
    return list
  
list = [1, 2, 4] 
n = 3
  
print(insert(list, n))



#
