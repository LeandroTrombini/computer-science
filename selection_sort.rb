def selection_sort(array)
  n = array.length
  for i in 0...n
    min = i
    for j in (i + 1)...n
      min = j if array[j] < array[min]
    end
    array[i], array[min] = array[min], array[i]
  end
  array
end

array = [34, 2, 1, 5, 3]
puts selection_sort(array)