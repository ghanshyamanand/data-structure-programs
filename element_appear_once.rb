# Find the element that appears once in an array where every other element appears twice
# Given an array of integers. All numbers occur twice except one number which occurs once. Find the number in O(n) time & constant extra space.

# Example:

# Input:  ar[] = {7, 3, 5, 4, 5, 3, 4};
# Output: 7

require 'pry'


def count_appear_with_ruby_method(input_array, length)
  counter_hash = Hash.new
  i = 0
  while i < length
    counter_hash[input_array[i]] = counter_hash[input_array[i]].to_i  + 1
    i = i +1
  end
  puts counter_hash.reject{ |k,v| v > 1 }.keys
end

def count_appear_with_xor(input_array, length)
  i = 1
  first = input_array[0]

  while i < length
    first = first ^ input_array[i]
    i = i+1
  end
  puts first

end


input_array = [7, 3, 5, 4, 5, 3, 4]
count_appear_with_ruby_method(input_array, 7)
puts "----------------------------"
count_appear_with_xor(input_array, 7)


# counter_hash[input_array[i]]
