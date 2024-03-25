def quicksort(array)
  return array if array.length <= 1

  pivot = array.delete_at(rand(array.length))

  less = []
  greater = []

  array.each do |x|
    if x <= pivot
      less << x
    else
      greater << x
    end
  end

  return *quicksort(less), pivot ,*quicksort(greater)
end

array = [34, 2, 1, 5, 3]
puts quicksort(array)