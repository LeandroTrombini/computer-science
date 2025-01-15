
def bubble_sort_with_for(arr)
  n = arr.length
  for i in 0...(n-1) do
    swapped = false
    for j in 0...(n-i-1) do
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort_with_while(arr)
  n = arr.length
  swapped = true
  while swapped do
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
  end
  arr
end

def bubble_sort_with_each(arr)  
  swapped = true
  while swapped do
    swapped = false
    arr.each_with_index do |_, i|
      break if i == arr.length - 1
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
  end
  arr
end

def bubble_sort_with_loop(arr)
  n = arr.length
  loop do
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i] 
        swapped = true
      end
    end
    break unless swapped  
  end
  arr
end

arr = [59, 4, 6, 4, 3, 2, 99, 76, 56, 34, 121, 65, 79]

puts bubble_sort_with_for(arr).inspect
puts bubble_sort_with_while(arr).inspect
puts bubble_sort_with_each(arr).inspect
puts bubble_sort_with_loop(arr).inspect
