require 'set'
require 'byebug'

def bad_two_sum?(array, target)
  pairs = []

  array.each_with_index do |el, i|
    j = i + 1

    while j < array.length
      pairs << [el, array[j]]
      j += 1
    end
  end
  p pairs

  pairs.any? { |el| el.inject(:+) == target }
end

def okay_two_sum?(array, target)

end

def okay_two_sum?(array, target)
  sorted_array = array.sort

  sorted_array.each_with_index do |el, i|
    return false if i + 1 > sorted_array.length - 1

    case el + sorted_array[i + 1] <=> target
    when -1
      next
    when 0
      return true
    when -1
      return false
    end
  end
end

def two_sum?(array, target)
  values = Hash.new { |h, k| h[k] = 0 }

  array.each { |el| values[el] += 1 }
  array.each do |el|

    difference = target - el
    next if values[el] < 2 && el * 2 == target

    return true if values[difference] > 0
  end

  false
end
