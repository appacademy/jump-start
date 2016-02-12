
# Write a function that takes two years and returns all the years within that range with no repeated digits.
# Hint: helper method?
# no_repeat_years(2010,2015) -> [2013,2014,2015]

def repeat_year?(yr)
  yr_string = yr.to_s
  (0...yr_string.length).each do |i|
    (i + 1...yr_string.length).each do |j|
      return true if yr_string[i] == yr_string[j]
    end
  end
  false
end

def no_repeat_years(first_year, last_year)
  (first_year..last_year).to_a.select do |yr|
    !repeat_year?(yr)
  end
end

puts "\nNo Repeat Years:\n" + "*" * 15 + "\n"
puts no_repeat_years(1990, 2000) == []
puts no_repeat_years(1900,1902) == [1902]
puts no_repeat_years(2016, 2020) == [2016, 2017, 2018, 2019]

#write a function primes that an arguement n and returns the first n primes

def is_prime?(num)
  return false if num < 2
  (2...num).to_a.none?{ |factor| num % factor == 0 }
end

def primes(n)
  primes = []
  i = 0
  until primes.length == n
    primes << i if is_prime?(i)
    i += 1
  end
  primes
end

puts "\nPrimes:\n" + "*" * 15 + "\n"
puts primes(0) == []
puts primes(1) == [2]
puts primes(2) == [2,3]
puts primes(6) == [2,3,5,7,11,13]

#write a boolean function zero_sum? that takes an array of intergers and returns
#true if 2 elements in the array sum to zero.

def zero_sum?(arr)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == 0
    end
  end
  false
end

puts "\nZero Sum:\n" + "*" * 15 + "\n"
puts zero_sum?([1, -1]) == true
puts zero_sum?([1,1,0,2,1]) == false
puts zero_sum?([1,1,0,2,1,0]) == true
puts zero_sum?([2,3,4,-3,1]) == true

#write a function largest_sum_pair that takes an array of intergers and returns the
#2 unique indices whose elements sum to the largest number. Formatted [earlier_index, later_index]

def largest_sum_pair(array)
  best_pair = [0,1]
  (0...array.length).each do |i|
    (i + 1...array.length).each do |j|
      best_pair = [i,j] if array[i] + array[j] > array[best_pair.first] + array[best_pair.last]
    end
  end
  best_pair
end

puts "\nLargest Sum Pair:\n" + "*" * 15 + "\n"
puts largest_sum_pair([1,2,3,4,5]) == [3,4]
puts largest_sum_pair([3,2,1,0,1,2,3]) == [0,6]
puts largest_sum_pair([-2,-1,-1,-2,-3]) == [1,2]


#write a function missing_letters that take in a phrase and returns an array of
#letters that are not contained in that phrase

def missing_letters(phrase)
  counts = Hash.new(0)
  phrase.chars.each do |char|
    counts[char] += 1 unless char == " "
  end
  missing = []
  ('a'..'z').each do |letter|
    missing << letter if counts[letter] == 0
  end
  missing
end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]
