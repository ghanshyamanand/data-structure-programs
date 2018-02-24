# # Delete an element from array (Using two traversals and one traversal)

# # Given an array and a number ‘x’, write a function to delete ‘x’ from the given array.

# # Input:  arr[] = {3, 1, 2, 5, 90}, x = 2
# # Output: arr[] = {3, 1, 5, 90}
# # A simple solution is to first search ‘x’ in array, then elements that are on right side of x to one position back. The following are C++ and Java implementation of this simple approach


# require 'pry'


# def delete_element(input_array, length, element)
#   right_counter = length -1

#   if input_array[right_counter -1] == element
#     return (right_counter-2)
#   end

#   prev      =   input_array[right_counter-2]
#   counter   =

#   while

#   end



#   return right_counter
# end

# input_array = [1,2,3,4,5,6,7,8,9,10]
# counter = delete_element(input_array, 10, 10)
# puts input_array[0..counter]
