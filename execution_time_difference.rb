require 'byebug'
def my_min_p1(list)
  smallest = list.first

  i = 0
  while i < list.length - 1
    j = 0
    while j < list.length - 1
      smallest = list[i] if list[i] < smallest
      j += 1
    end
    i += 1
  end


  # list.each do |el1|
  #   i = 0
  #   while i < list.length - 1
  #     smallest = el1 if el1 < list[i]
  #     i += 1
  #   end
  # end

  smallest
end

def my_min_p2(list)
  return nil if list.empty?

  smallest = list.first
  list.each do |el|
    smallest = el if el < smallest
  end

  smallest
end

def largest_contiguous_subsum_p1(list)
  sum_arrays_all = []

  i = 0
  while i < list.length
    j = i
    while j < list.length
      sum_arrays_all << list[i..j]
      j += 1
    end
    i += 1
  end

  sum_arrays_all.map { |i| i.inject(&:+) }.sort.last
end

def largest_contiguous_subsum_p2(list)
  largest_sum = list.first

  list.each_with_index do |el, i|
    test_sum = list[i..-1].inject(&:+)
    largest_sum = test_sum if test_sum > largest_sum
  end

  largest_sum
end

def lcs(list)

end
