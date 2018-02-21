# Leaders in an array
# Write a program to print all the LEADERS in the array. An element is leader if it is greater than all the elements to its right side. And the rightmost element is always a leader. For example int the array {16, 17, 4, 3, 5, 2}, leaders are 17, 5 and 2.
# Let the input array be arr[] and size of the array be size.

require 'pry'

def print_leaders(given_array, last_pos)
  leader = given_array[last_pos]
  puts "leaders : #{leader}"
  last_pos = last_pos - 1
  while last_pos >= 0
    if given_array[last_pos] > leader
      leader = given_array[last_pos]
      puts "leaders : #{leader}"
    end
    last_pos = last_pos - 1
  end
end

given_array   =   [16, 17, 4, 3, 5, 2]
print_leaders(given_array, given_array.length - 1)
