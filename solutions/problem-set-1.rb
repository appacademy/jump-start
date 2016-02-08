def array_times_two(arr)
  times_two_arr = []
  arr.each do |el|
    times_two_arr << el * 2
  end
  times_two_arr
end

def array_times_two!(arr)
  arr.each_with_index do |el, i|
    arr[i] = arr[i] * 2
  end
  arr
end

def uniq(arr)
  uniq_arr = []
  arr.each do |el|
    uniq_arr << el unless uniq_arr.include?(el)
  end
  uniq_arr
end

def slippery_numbers(n)
  slippery_nums = []
  i = 1
  until slippery_nums.length == n
    slippery_nums << i if is_slippery?(i)
    i += 1
  end
  slippery_nums
end

def is_slippery?(num)
  (num % 3 == 0 || num % 5 == 0) && num % 15 != 0
end

def two_sum_to_zero?(arr)
  arr.each_with_index do |el, i|
    arr.each_with_index do |el2, j|
      return true if el + el2 == 0 && i != j
    end
  end
  false
end

def is_magic_number?(num)
  string_digits = num.to_s.chars

  sum = 0
  string_digits.each do |digit_char|
    sum += digit_char.to_i
  end
  sum == 7
end

def magic_numbers(count)
  magic_nums = []
  i = 1
  until magic_nums.size == count
    magic_nums << i if is_magic_number?(i)
    i += 1
  end
  magic_nums
end
