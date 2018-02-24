# Segregate Even and Odd numbers

# Given an array A[], write a function that segregates even and odd numbers. The functions should put all even numbers first, and then odd numbers.

# Example

# Input  = {12, 34, 45, 9, 8, 90, 3}
# Output = {12, 34, 8, 90, 45, 9, 3}
# In the output, order of numbers can be changed, i.e., in the above example 34 can come before 12 and 3 can come before 9.

require 'pry'

def seg_odd_even(input_array, length)
  left_counter  = 0
  right_counter = length -1
  while left_counter < right_counter

    while input_array[left_counter] % 2 == 0 and left_counter < right_counter
      left_counter = left_counter + 1
    end

    while input_array[right_counter] % 2 != 0 and left_counter < right_counter
      right_counter = right_counter - 1
    end

    if left_counter < right_counter
      input_array[left_counter], input_array[right_counter] = input_array[right_counter], input_array[left_counter]
    end
  end
  puts input_array
end


input_array   =  [12, 34, 45, 9, 8, 90, 3]
input_array2  = [1,-3,7,4,-2,-5,7,8]
# seg_odd_even(input_array, 7)
seg_odd_even(input_array2, 8)
