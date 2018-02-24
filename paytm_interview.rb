# There is one interesting question being asked in paytm these days. Segregate even indexed and odd index numbers in O(N) time and O(1) space.

# input : 1 2 3 4 5 6 7 8
# output : 1 3 5 7 2 4 6 8


require 'pry'



def paytm_method(input_array, length)
  even_counter  = 0
  odd_counter = 1

  while (even_counter < length)
    puts input_array[even_counter]
    even_counter = even_counter + 2
  end

  while (odd_counter < length)
    puts input_array[odd_counter]
    odd_counter = odd_counter + 2
  end
end

def paytm_method1(input_array, length)
  counter = 1
end



input_array = [ 1, 2, 3, 4, 5, 6, 7, 8 ]
# paytm_method(input_array, 8)
paytm_method1(input_array, 8)
