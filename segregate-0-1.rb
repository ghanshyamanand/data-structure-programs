# Segregate 0s and 1s in an array

# You are given an array of 0s and 1s in random order. Segregate 0s on left side and 1s on right side of the array. Traverse array only once.

# Input array   =  [0, 1, 0, 1, 0, 0, 1, 1, 1, 0]
# Output array =  [0, 0, 0, 0, 0, 1, 1, 1, 1, 1]

require 'pry'

# method 1
def seg_0_1_method1(input_array, length)
  zero_counter = 0
  i = 0

  while i < length
    zero_counter = zero_counter + 1 if input_array[i] == 0
    i = i+1
  end
  i = 0

  while i < zero_counter
    input_array[i] = 0
    i=i+1
  end

  while i < length
    input_array[i] = 1
    i=i+1
  end

  puts input_array
end

def seg_0_1_method2(input_array, length)
  left_counter = 0
  right_counter = length - 1
  while left_counter < right_counter

    if input_array[left_counter] == 0
      left_counter = left_counter + 1
    else
      input_array[left_counter] = 0
    end

    if input_array[right_counter] == 1
      right_counter = right_counter - 1
    else
      input_array[right_counter] = 1
    end
  end
  puts input_array
end

input_array   =  [0, 1, 0, 1, 0, 0, 1, 1, 0, 0]
seg_0_1_method2(input_array, 10)
