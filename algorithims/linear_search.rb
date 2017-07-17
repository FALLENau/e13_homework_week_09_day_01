test_sorted_array = [1, 3, 7, 8, 9, 21, 23, 45, 56]

def linear_search_for_number_in_array(search_number, array)
  for number in array
    if number == search_number
        return true
    end
  end
  return false
end

puts linear_search_for_number_in_array(22, test_sorted_array)
puts linear_search_for_number_in_array(23, test_sorted_array)
