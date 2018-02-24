# Count pairs with given sum
# Given an array of integers, and a number ‘sum’, find the number of pairs of integers in the array whose sum is equal to ‘sum’.

# Examples:
# Input  :  arr[] = {1, 5, 7, -1},
#           sum = 6
# Output :  2
# Pairs with sum 6 are (1, 5) and (7, -1)

# Input  :  arr[] = {1, 5, 7, -1, 5},
#           sum = 6
# Output :  3
# Pairs with sum 6 are (1, 5), (7, -1) &
#                      (1, 5)

# Input  :  arr[] = {1, 1, 1, 1},
#           sum = 2
# Output :  6
# There are 3! pairs with sum 2.

# Input  :  arr[] = {10, 12, 10, 15, -1, 7, 6,
#                    5, 4, 2, 1, 1, 1},
#           sum = 11
# Output :  9


require 'pry'


def getPairsCount(input_array, length, expected_sum)
  sum_counter = i = 0
  while i < length
    j = i +1
    while j < length
      if input_array[i] + input_array [j] == expected_sum
        sum_counter = sum_counter  + 1
        puts "(#{input_array[i]}, #{input_array[j]})"
      end
      j = j  + 1
    end
    i = i  + 1
  end
  puts "Total : #{sum_counter}"
end


def getPairsCount2(input_array, length, expected_sum)
end


input_array = [5, 3, 7, 0, 1, 4, 2]
getPairsCount2(input_array, 7, 5)

















