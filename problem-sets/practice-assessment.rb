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
# capitalization.  If there is a tie return the first word

def word_with_most_repeats(sentence)
end

puts "-------Word With Most Repeats-------"
puts word_with_most_repeats('good luck') == 'good'
puts word_with_most_repeats('what if there is a tie betwixt words') == 'there'


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
  #
  # your code goes here
  #
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
  #
  # your code goes here
  #
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
# Write a Xbonacci function (that works similarly to Fibonacci) where the sum of
# the last X numbers (instead of the last 2 numbers) of the sequence becomes the
# next number in the sequence.
#
# The method will take two inputs: the starting sequence with X number of
# elements and an integer N, and return the first N elements in the given
# sequence.  Take a look at the test cases for examples.
#
# In the code, how_many_numbers_to_sum is the same as X (name your variables
# descriptively!).
#
# In the code, number_of_fibonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_fibonacci_numbers_to_return)
  # how_many_numbers_to_sum = starting_sequence.length

  #
  # your code goes here
  #
end

puts xbonacci([1, 1], 5) == [1, 1, 2, 3, 5]
puts xbonacci([1, 1, 1], 6) == [1, 1, 1, 3, 5, 9]
puts xbonacci([1, 1, 1, 1], 8) == [1, 1, 1, 1, 4, 7, 13, 25]
puts xbonacci([1, 1, 1, 1, 1, 1], 10) == [1, 1, 1, 1, 1, 1, 6, 11, 21, 41]
puts xbonacci([0, 0, 0, 0, 1], 10) == [0, 0, 0, 0, 1, 1, 2, 4, 8, 16]


# ------------------------------------------------------------------------------
# Finished?
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
# ------------------------------------------------------------------------------



