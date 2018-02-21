require 'pry'

def binary_search(array, number, start_point, end_point)
  while start_point <= end_point
    mid_point = (start_point + end_point) / 2
    if array[mid_point] == number
      return mid_point
    elsif array[mid_point] < number
      start_point = mid_point + 1
      binary_search(array, number, start_point, end_point)
    elsif array[mid_point] > number
      end_point = mid_point -1
      binary_search(array, number, start_point, end_point)
    end
  end
end

array     = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
puts "Enter number you want to search : "
number    = gets.chomp.to_i
end_point = array.length-1
result    = binary_search(array,number,0,end_point)
if result.nil?
  puts "number not present in array"
else
  puts "number present at #{result} position"
end

# The idea of binary search is to use the information that the array is sorted and reduce the time complexity to O(Log n).
