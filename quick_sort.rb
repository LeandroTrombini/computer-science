def quick_sort(array)
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

  return *quick_sort(less), pivot ,*quick_sort(greater)
end

array = [34, 2, 1, 5, 3]
puts quick_sort(array)