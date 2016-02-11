# ***********************************
# Write a method that takes an array of numbers as input and uses #select to return an array only of even numbers

def get_evens(array)
  array.select do |el|
    el % 2 == 0
  end
end

puts "\nget_evens"
puts get_evens([1, 2, 3, 4, 5, 6, 7]) == [2, 4, 6]
puts get_evens([2, 4, 6, 8, 10, 12, 14]) == [2, 4, 6, 8, 10, 12, 14]
puts get_evens([1, 3, 5, 7, 9, 11]) == []

# ***********************************
# Write a method that takes an array of numbers as input and uses #reject to return an array of number that aren't odd

def reject_odds(array)
  array.reject do |el|
    el % 2 != 0
  end
end

puts "\nreject odds"
puts reject_odds([1, 2, 3, 4, 5]) == [2, 4]
puts reject_odds([2, 4, 6, 8, 10]) == [2, 4, 6, 8, 10]
#puts reject_odds([1.1, 3.5, 2.9]) == [1.1, 3.5, 2.9]

# ************************************
# Write a method that uses #reduce to sum up the numbers in an array

def array_sum(array)
  array.reduce(0) do |sum, num|
    sum + num
  end
end

puts "\narray sum"
puts array_sum([]) == 0
puts array_sum([1, 2, 3]) == 6
puts array_sum([5, 5, 5, 5, 5]) == 25

# ************************************
# Write a method that takes an array of integers and returns an array of those values doubled.
# This method should *not* modify the original array

def calculate_doubles(array)
  array.map do |el|
    el * 2
  end
end

puts "\nCalculate Doubles"
array = [1, 2, 3, 4, 5]
doubled_array = calculate_doubles(array)
puts array != doubled_array
puts doubled_array == [2, 4, 6, 8, 10]

# ************************************
# Write a method that takes an array of integers and returns an array of those values doubled.
# This method *should* modify the original array

def calculate_doubles!(array)
  array.map! do |el|
    el * 2
  end
end

puts "\nCalculate Doubles (bang)"
array = [1, 2, 3, 4, 5]
calculate_doubles!(array)
puts array == [2, 4, 6, 8, 10]

# ************************************
# Write a method that takes an array of numbers as input and returns the sum of each element multiplied by that elements index.
# For example, [2, 9, 7] would return 23, since (2 * 0) + (9 * 1) + (7 * 2) = 0 + 9 + 14 = 23

def array_sum_with_index(array)
  sum = 0
  array.each_with_index do |num, i|
    sum += ( num * i )
  end
  sum
end

puts "\nArray sum with index"
puts array_sum_with_index([0, 1, 2, 3]) == 14

# ************************************
# Write a method that uses sort to implement the max function.  Your method should take an array as input and return
# the element with the maximum value, calling sort once.

def my_max(array)
  array.sort[-1]
end

puts "\nMy Max"
puts my_max([5, 9, 2, 4, 7]) == 9
puts my_max([1, 4, 9, 19, 3]) == 19

# ************************************
# Write a method that uses sort to implement the min function.  Your method should take an array as input and return
# the element with the minimum value, calling sort once.

def my_min(array)
  array.sort[0]
end

puts "\nMy Min"
puts my_min([5, 9, 2, 4, 7]) == 2
puts my_min([0, -2, -5, -5, 1]) == -5

# ************************************
# Write a method that uses a loop and repeatedly uses Array#min and Array#push (or <<) to return an
# array sorted from least to greatest.  Your method should not call Array#sort

#NB Too challenging for jump-start?

def my_sort_v1(array)
  sorted = []
  until array.length == 0
    sorted << array.delete_at(array.index(array.min))
  end
  sorted
end

puts "\nMy Sort V1"
puts my_sort_v1([5, 2, 6, 3, 1, 4]) == [1, 2, 3, 4, 5, 6]

# ************************************
# Write a method that uses a loop and repeatedly uses Array#max and Array#unshift to return an array
# sorted from least to greatest.  Your method should not call Array#sort

#NB Too challenging for jump-start?

def my_sort_v2(array)
  sorted = []
  until array.length == 0
    sorted.unshift(array.delete_at(array.index(array.max)))
  end
  sorted
end

puts "\nMy Sort V2"
puts my_sort_v2([5, 2, 6, 3, 1, 4]) == [1, 2, 3, 4, 5, 6]

# ************************************
# Write a method that returns the third greatest element in an array

def third_greatest(array)
  array.sort[-3]
end

puts "\nThird Greatest"
puts third_greatest([5, 9, 3, 7, 7, 2, 10]) == 7

# ************************************
# Write a method that takes an array and a number and repeatedly uses delete_at to delete that many elements from the
# front of the array

def delete_first(array, n)
  while n > 0
    n -= 1
    array.delete_at(n)
  end
  array
end

puts "\nDelete first"
p delete_first([1, 2, 3, 4, 5, 6], 1) == [2, 3, 4, 5, 6]
p delete_first([1, 2, 3, 4, 5, 6], 3) == [4, 5, 6]

# ************************************
# Write a method that takes a string of words separated by spaces and returns the longest word.  If there is more
# than one word of that length, it should return the first instance of that word.

def longest_word(string)
  words = string.split
  longest_word = ""
  words.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end
  longest_word
end

puts "\nLongest Word"
puts longest_word("we the people in order to form a more perfect union establish justice ensure domestic tranquility") == "tranquility"
puts longest_word("one two three four five six seven") == "three"

# ************************************
# Write a method that takes a string and counts the number of vowels in the string.  For our purposes, "y" counts as a vowel.
# You might want to use the Array#include? method for this.  The usage is:
# [1, 2, 3, 4, 5].include?(2) => true
# [1, 2, 3, 4, 5].include?("k") => false
# Assume all letters will be lower case

def count_vowels(string)
  count = 0
  vowels = ["a", "e", "i", "o", "u", "y"]
  string.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  count
end

puts "\nCount Vowels"
puts count_vowels("cat dog elephant monkey") == 8
puts count_vowels("abcdefghijklmnopqrstuvwxyz") == 6

# ************************************
# Write a method that takes a string of words separated by spaces and returns a string the same as the original, but
# with five-letter words replaced with "#####"

def redact_five_letter_words(string)
  words = string.split
  redacted = words.map do |word|
    if word.length == 5
      '#####'
    else
      word
    end
  end
  redacted.join(" ")
end

puts "\nRedact Five Letter Words"
puts redact_five_letter_words("one two three four five six seven eight") == "one two ##### four five six ##### #####"
puts redact_five_letter_words("we the people in order to form a more perfect union establish justice ensure domestic tranquility") == "we the people in ##### to form a more perfect ##### establish justice ensure domestic tranquility"

# ************************************
# Write a method that takes a string of words separated by spaces and returns the most common vowel.  If more than one vowel has that count,
# return the one that occurs earliest in the alphabet.  For our purposes, count "y" as a vowel.
# Assume all letters are lower case.
# NB too challenging? Do they know string.count?

def most_common_vowel(str)
  vowels = "aeiouy".split("")
  counts = Hash.new(0)
  str.each_char do |char|
    if vowels.include?(char)
      counts[char] += 1
    end
  end
  most_common = "a"
  vowels.each do |vowel|
    if counts[vowel] > counts[most_common]
      most_common = vowel
    end
  end
  most_common
end

puts "\nMost Common Vowel"
puts most_common_vowel("we the people in order to form a more perfect union establish justice ensure domestic tranquility") == "e"
puts most_common_vowel("cat dog octopus spider") == "o"
