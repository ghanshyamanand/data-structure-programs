# Write a program to reverse an array or string
# We are given an array (or string), the task is to reverse the array.

# Examples:

# Input  : arr[] = {1, 2, 3}
# Output : arr[] = {3, 2, 1}

# Input :  arr[] = {4, 5, 1, 2}
# Output : arr[] = {2, 1, 5, 4}


require 'pry'


def reverse_array(input_array, length)
  left_counter, right_counter  =   0, length -1
  while left_counter < right_counter
    temp                        =   input_array[left_counter]
    input_array[left_counter]   =   input_array[right_counter]
    input_array[right_counter]  =   temp
    left_counter = left_counter + 1
    right_counter = right_counter -1
  end
  puts input_array
end
input_array  = [1,2,3,4,5,6,7,8,9,10]
reverse_array(input_array, 10)
