def binary_search(array, value)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2
    if array[mid] < value
      low = mid + 1
    elsif array[mid] > value
      high = mid - 1
    else
      return mid
    end
  end

  return nil
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts binary_search(array, 6)
