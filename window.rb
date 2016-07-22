def max_window_range(array, window)
  current_max_range = nil
  differences = []
  array.each_with_index do |el, i|
    next if i + window > array.length
    sorted_sub = array[i...(i + window)].sort
    differences << sorted_sub.last - sorted_sub.first
  end

  differences.sort.last
end
