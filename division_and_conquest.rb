
def merge_sort(list)
  return list if list.size <= 1

  mid = list.size / 2
  left = list[0...mid]
  right = list[mid...list.size]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted.concat(left).concat(right)
end

list = [3, 5, 2, 1, 4, 6, 7, 8, 9, 0]
puts merge_sort(list)
