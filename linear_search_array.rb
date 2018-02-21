require 'pry'

puts "=========== Linear Array Search =========="

def linear_search(_array, _number)
  _i      = 0
  while _i < _array.length do
    return  _i if _array[_i] == _number
    _i = _i + 1
  end
  return -1
end

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
i = 0

puts "Enter number : "
number = gets.chomp.to_i
result  = linear_search(array, number)

if result == -1
  puts "number not present in array"
else
  puts "number present in array at #{result} position"
end



# The time complexity of above algorithm is O(n).
# Linear search is rarely used practically because other search algorithms such as the binary search algorithm and hash tables allow significantly faster searching comparison to Linear search.
