# Find the Missing Number
# You are given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in list. One of the integers is missing in the list. Write an efficient code to find the missing integer.

# Example:
# I/P    [1, 2, 4, 6, 3, 7, 8]
# O/P    5

require 'pry'

def missing_number(arr)
  sum = i = 0
  while i < arr.length
    sum = sum + arr[i]
    i = i+1
  end
  total  = (arr.length+1)*(arr.length+2)/2;
  number = total - sum
  puts number
end

arr = [1, 2, 4, 6, 3, 7, 5]
missing_number(arr)
