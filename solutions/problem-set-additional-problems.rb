
# Write a method that takes an array of words and returns only the words that are
# anagrams of a given string.

def anagrams(string, array)
  sorted_string = string.chars.sort.join("")
  array.select do |word|
    sorted_string == word.chars.sort.join("")
  end
end

#Tests
puts "\nAnagrams:\n" + "*" * 15 + "\n"
puts anagrams("cat", ["cat"]) == ["cat"]
words = ["cat", "act", "bat", "tac"]
puts anagrams("tca", words) == ["cat", "act", "tac"]
words = ["aaa", "aa", "a"]
puts anagrams("aa", words) == ["aa"]

# ************************************
# Write a boolean function that returns true if the vowels in a given word appear in order

def ordered_vowel_word?(word)
  vowels = "aeiou".chars
  vowels_in_word = word.chars.select do |letter|
    vowels.include?(letter)
  end
  vowels_in_word == vowels_in_word.sort
end

#Tests
puts "\nOrdered Vowel Word:\n" + "*" * 15 + "\n"
puts ordered_vowel_word?("car") == true
puts ordered_vowel_word?("academy") == true
puts ordered_vowel_word?("programmer") == false
puts ordered_vowel_word?("grapefruit") == false

# ************************************
# Write a function that takes an array of words and returns the words whose vowels appear in order

def ordered_vowels(words)
  words.select do |word|
    ordered_vowel_word?(word)
  end
end

puts "\nOrdered Vowels:\n" + "*" * 15 + "\n"
puts ordered_vowels(["are"]) == ["are"]
puts ordered_vowels(["era", "are", "ear"]) == ["are"]
puts ordered_vowels(["hey", "wassup", "hello"]) == ["hey", "wassup", "hello"]
puts ordered_vowels(["firefox", "chrome", "safari", "netscape", "aeiou"]) == ["safari", "aeiou"]

# ************************************
# Write a function that takes two years and returns all the years within that range with no repeated digits.
# Hint: helper method?
# no_repeat_years(2010,2015) -> [2013,2014,2015]

def no_repeat_year(year)
  year_digits = year.to_s.chars
  year_digits == year_digits.uniq
end

def no_repeat_years(first_yr, last_yr)
  (first_yr..last_yr).to_a.select do |year|
    no_repeat_year(year)
  end
end

puts "\nNo Repeat Years:\n" + "*" * 15 + "\n"
puts no_repeat_years(1990, 2000) == []
puts no_repeat_years(1900,1902) == [1902]
puts no_repeat_years(2016, 2020) == [2016, 2017, 2018, 2019]


# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns the letter that occurs most frequently.
# Use a hash within your method to keep track of the letter counts.
#
# I would set up the hash with the line
# hash = Hash.new{|h, k| h[k] = 0}
# This initializes the hash with a block to be run if you try to look up a key that isn't in the hash.  Here, we
# set the value at that key to zero if we haven't already seen it.

def most_frequent_letter(string)
  counts = Hash.new(0)
  string.chars.each do |character|
    counts[character] += 1 unless character == " "
  end
  best_letter = counts.keys.first
  counts.each do |letter, count|
    best_letter = letter if count > counts[best_letter]
  end
  best_letter
end

puts "\nMost Frequent Letter\n" + "*" * 15 + "\n"
puts most_frequent_letter("aaaaa") == "a"
puts most_frequent_letter("aaaaabbbbbb") == "b"
puts most_frequent_letter("we the people in order to form a more perfect union") == "e"


# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns an array of letters that occur more
# than once.  We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def non_unique_letters(string)
  counts = Hash.new(0)
  string.chars.each do |character|
    counts[character] += 1 unless character == " "
  end
  non_uniques = []
  counts.each do |letter, count|
    non_uniques << letter if count > 1
  end
  non_uniques
end

puts "\nNon-Unique Letters\n" + "*" * 15 + "\n"
puts non_unique_letters("abbbcdddde") == ["b", "d"]
puts non_unique_letters("abcde") == []
puts non_unique_letters("aabbccddee") == ["a", "b", "c", "d", "e"]

# ************************************
# Write a method that takes a string of lower case words and returns an array of letters that do not occur in the string.
# This creates a hash containing all the letters as keys and initializes their values (counts) to zero.  This problem
# is different enough from the first problem that we can't initialize our hash the same way, at least not without
# thinking very carefully.  Do you know why?
# We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def missing_letters(string)
  alphabet = {}
  ("a".."z").each do |letter|
    alphabet[letter] = 0
  end
  string.chars do |character|
    alphabet[character] += 1 unless character == " "
  end
  missing_letters = []
  alphabet.each do |letter, count|
    missing_letters << letter if count == 0
  end
  missing_letters
end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]

#write a function primes that an arguement n and returns the first n primes
def is_prime?(number)
  return false if number <= 1
  (2...number).to_a.none?{ |factor| number % factor == 0 }
end


def primes(n)
  primes = []
  number = 0
  until primes.length == n
    primes << number if is_prime?(number)
    number += 1
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

def zero_sum?(array)
  (0...array.length).each do |index1|
    (index1 + 1...array.length).each do |index2|
      return true if array[index1] + array[index2] == 0
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
  indices = [0,1]
  (0...array.length).each do |index1|
    (index1 + 1...array.length).each do |index2|
      indices = [index1, index2] if array[index1] + array[index2] > array[indices[0]] + array[indices[1]]
    end
  end
  indices
end

puts "\nLargest Sum Pair:\n" + "*" * 15 + "\n"
puts largest_sum_pair([1,2,3,4,5]) == [3,4]
puts largest_sum_pair([3,2,1,0,1,2,3]) == [0,6]
puts largest_sum_pair([-2,-1,-1,-2,-3]) == [1,2]
