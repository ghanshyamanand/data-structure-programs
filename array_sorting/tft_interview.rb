# Bubble Sort
# Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.




require 'pry'

def bubble_sort(array_input, length)
  k  = 0
  while ( k < length - 1)
    i = 0
    flag = 0
     ## with every iteration half array of size k will be sorted
    while (i < length - k - 1 )
      if array_input[i][:age] > array_input[i+1][:age]
        array_input[i], array_input[i+1] = array_input[i+1], array_input[i]
        flag = 1
      end
      i = i + 1
    end
    if flag == 0
      break
    end
    k = k + 1
  end
  return array_input
end

## array of hash
array_of_hash  = [ {name: "Ghanshyam", age: 28}, {name: "Nishu", age: 26}, {name: "Karan", age: 24}, {name: "kshitij", age: 25} ]
array_input = bubble_sort(array_of_hash, 4)
puts array_input

# # Best case : O(n)
# # Worst case : O(n2)
# # Average case : O(n2)
