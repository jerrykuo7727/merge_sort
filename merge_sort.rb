def merge_sort(arr)
  if arr.size <= 1
    return arr
  elsif arr.size == 2
    arr[0], arr[1] = arr[1], arr[0] if arr[0] > arr[1]
    return arr
  else
    half = (arr.size + 1) / 2
    a = merge_sort(arr[0...half])
    b = merge_sort(arr[half..-1])
    merge = []
    loop do
      if a.empty?
        merge += b
        break
      elsif b.empty?
        merge += a
        break
      else
        n = a.first < b.first ? a.shift : b.shift
        merge << n
      end
    end
    merge
  end
end

array1 = [6, 5, 3, 1, 7, 8, 4, 2]
p merge_sort(array1)
array2 = [5, 7, 6, 8, 4, 4, 2]
p merge_sort(array2)