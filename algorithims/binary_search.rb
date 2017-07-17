test_sorted_array = *(0...10000000)
# [1, 3, 7, 8, 9, 21, 23, 45, 56]

def binary_search(search_number, array)
  return false if array.empty?

  middle_index = array.count / 2
  midpoint = array[middle_index]

  if search_number == midpoint
    return true
  end

  new_search_area = []

  if search_number < midpoint
    new_search_area = array[0..middle_index - 1]
  else
    new_search_area = array[middle_index+1..array.length]
  end

  return binary_search(search_number, new_search_area)
end

puts binary_search(23, test_sorted_array)
puts binary_search(22, test_sorted_array)
