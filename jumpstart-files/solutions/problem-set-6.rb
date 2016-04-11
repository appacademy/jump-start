# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself 15 minutes per problem.  When time is up, make sure you don't
# have any unexpected `end`s or infinite loops that would keep your code from
# running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------

# Word With Most Repeats
# ------------------------------------------------------------------------------
# Given a sentence, find which word has the greatest amount of repeated letters.
#
# For example, "I took the road less traveled and that has made all the difference"
# should return "difference" because it has two repeated letters (f and e).
#
# All words will be separated by spaces and there will be no punctuation or
# capitalization.  If there is a tie return the first word.  It doesn't matter
# how many times individual letters repeat, just that they repeat (see the third test
# case).

def word_with_most_repeats(sentence)
  max_repeats = 0
  words = sentence.split
  max_repeated_word = words.first

  words.each do |word|
    number_of_repeats = get_number_of_repeats_in(word)

    if number_of_repeats > max_repeats
      max_repeats = number_of_repeats
      max_repeated_word = word
    end
  end

  max_repeated_word
end

def get_number_of_repeats_in(word)
  repeats = 0
  current_index = 0
  repeated_letters = Hash.new(0)
  last_letter = nil

  until current_index == word.length
    current_letter = word[current_index]

    if current_letter != last_letter
      repeated_letters[current_letter] += 1
      last_letter = current_letter
    end

    current_index += 1
  end

  max_letter_and_count = repeated_letters.max_by {|letter, count| count}

  max_letter_and_count[1]
end


puts "-------Word With Most Repeats-------"
puts word_with_most_repeats('good luck') == 'good'
puts word_with_most_repeats('what if there is a tie betwixt words') == 'there'
puts word_with_most_repeats('ooooooooooh tutu') == 'tutu'


# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  splittable_letters = []

  string.each_char do |letter|
    split_string = string.split(letter)
    length = get_length_of_first_actual_letter(split_string)

    splittable_letters.push(letter) if can_split_string?(split_string, length) && !splittable_letters.include?(letter)
  end

  splittable_letters
end

def get_length_of_first_actual_letter(split_string)
  split_string.each do |split_chunk|
    if split_chunk != ""
      return split_chunk.length
    end
  end

  0
end

def can_split_string?(split_string, length)
  can_split_evenly = true

  split_string.each do |split_chunk|
    if split_chunk != "" && split_chunk.length != length
      can_split_evenly = false
    end
  end

  can_split_evenly
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]


# Isogram Matcher
# ------------------------------------------------------------------------------
# An isogram is a word with only unique, non-repeating letters. Given two isograms
# of the same length, return an array with two numbers indicating matches:
# the first number is the number of letters matched in both words at the same position,
# and the second is the number of letters matched in both words but not in the
# same position.

def isogram_matcher(isogram1, isogram2)
  idx_match = 0
  letter_match = 0

  isogram1.length.times do |i|
    if(isogram1[i] == isogram2[i])
      idx_match += 1
    elsif isogram2.include?(isogram1[i])
      letter_match += 1
    end
  end

  [idx_match, letter_match]
end

puts "-------Isogram Matcher-------"
puts isogram_matcher("an", "at") == [1, 0]
puts isogram_matcher("or", "go") == [0, 1]
puts isogram_matcher("cat", "car") == [2, 0]
puts isogram_matcher("cat", "tap") == [1, 1]
puts isogram_matcher("home", "dome") == [3, 0]
puts isogram_matcher("gains", "snake") == [0, 3]
puts isogram_matcher("glamourize", "blueprints") == [1, 4]
puts isogram_matcher("ultrasonic", "ostracized") == [3, 4]
puts isogram_matcher("unpredictably", "hydromagnetic") == [1, 8]


# Xbonacci
# ------------------------------------------------------------------------------

# Write a Xbonacci function that works similarly to the fibonacci sequence.
# The fibonacci sequence takes the last two numbers in the sequence and adds
# them together to create the next number.
#
# First five fibonacci numbers = [1, 1, 2, 3, 5]
# The fourth fibonacci number (3) is the sum of the two numbers before it
# (1 and 2).
#
# In Xbonacci, the sum of the last X numbers (instead of the last 2 numbers)
# of the sequence becomes the next number in the sequence.
#
# The method will take two inputs: the starting sequence with X number of
# elements and an integer N, and return the first N elements in the given
# sequence.  Take a look at the test cases for examples.
#
# In the code, how_many_numbers_to_sum is the same as X (name your variables
# descriptively!).
#
# In the code, number_of_fibonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)
  how_many_numbers_to_sum = starting_sequence.length

  until starting_sequence.length == number_of_xbonacci_numbers_to_return
    next_xbonacci_number = sum_of_last_n_numbers(starting_sequence, how_many_numbers_to_sum)
    starting_sequence.push(next_xbonacci_number)
  end

  starting_sequence
end

def sum_of_last_n_numbers(starting_sequence, how_many_numbers_to_sum)
  sum = 0
  current_index = starting_sequence.length - 1
  end_index = starting_sequence.length - how_many_numbers_to_sum
  end_index = 0 if end_index < 0

  while current_index >= end_index
    sum += starting_sequence[current_index]
    current_index -= 1
  end

  sum
end


puts "-------Xbonacci-------"
puts xbonacci([1, 1], 5) == [1, 1, 2, 3, 5]
puts xbonacci([1, 1, 1], 6) == [1, 1, 1, 3, 5, 9]
puts xbonacci([1, 1, 1, 1], 8) == [1, 1, 1, 1, 4, 7, 13, 25]
puts xbonacci([1, 1, 1, 1, 1, 1], 10) == [1, 1, 1, 1, 1, 1, 6, 11, 21, 41]
puts xbonacci([0, 0, 0, 0, 1], 10) == [0, 0, 0, 0, 1, 1, 2, 4, 8, 16]


#  Cupcake Solver
#------------------------------------------------------------------------------
# It's Jennifer's birthday today. Jennifer's mom decided to bake different kinds
# of cupcakes for Jennifer's first grade class.  Everybody needs to have an equal
# amount of the different kinds of cupcakes.

# Write a method that takes an array of the counts of the different kinds of
# cupcakes and the number of students in the class, and returns
# the total number of cupcakes that each student in the class
# should get.

# Every student should have equal amounts of the same kind of cupcake.
# No student gets to have more cupcakes than the others.  There can be leftover
# cupcakes.

# An array of [1, 2, 3] means that there's one red velvet cupcake,
# two vanilla cupcakes, and three chocolate cupcakes.

# Example: cupcake_solver([10, 10, 10], 5) == 6  means that there are five
# students in the class, and each student gets to eat six cupcakes, total.


def cupcake_solver(cupcake_counts, number_of_students_in_class)
  total_cupcakes = 0

  cupcake_counts.each do |cupcake_count|
    allotted_number = cupcake_count / number_of_students_in_class
    total_cupcakes += allotted_number
  end

  total_cupcakes
end


puts "-------Cupcake Solver-------"
puts cupcake_solver([10, 10, 10], 5) == 6
puts cupcake_solver([25, 27, 30], 5) == 16
puts cupcake_solver([32, 27, 28], 20) == 3
puts cupcake_solver([32, 27, 28, 24], 20) == 4


# ------------------------------------------------------------------------------

# Finished?
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
# ------------------------------------------------------------------------------
