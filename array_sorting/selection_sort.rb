# 3 part
# a : selection
# b : swapping
# c : counter shift


require 'pry'



def selection_sort(array_input, length)
  i = 0
  while i < length - 1
    min_index = i
    j = i + 1
    while j < length
      if array_input[j] < array_input[min_index]
        min_index = j
      end
      j = j + 1
    end
    array_input[min_index], array_input[i] = array_input[i], array_input[min_index]
    i = i + 1
  end
  return array_input
end


array_input = (1..100).to_a.sample(10)
puts array_input
array_input = selection_sort(array_input, 10)
puts "-------------"
puts array_input

# Best case : O(n)
# Worst case : O(n2)
# Average case : O(n2)
