# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns the letter that occurs most frequently.
# Use a hash within your method to keep track of the letter counts.  
# 
# I would set up the hash with the line
# hash = Hash.new{|h, k| h[k] = 0}
# This initializes the hash with a block to be run if you try to look up a key that isn't in the hash.  Here, we
# set the value at that key to zero if we haven't already seen it.

def most_frequent_letter(str)
  hash = Hash.new{|h, k| h[k] = 0}
end

puts "\nMost Frequent Letter"
puts most_frequent_letter("aaaaa") == "a"
puts most_frequent_letter("aaaaabbbbbb") == "b"
puts most_frequent_letter("we the people in order to form a more perfect union") == "e"


# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns an array of letters that occur more
# than once.  We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def non_unique_letters(str)

end

puts "\nNon-Unique Letters"
puts non_unique_letters("abbbcdddde") == ["b", "d"]
puts non_unique_letters("abcde") == []
puts non_unique_letters("aabbccddee") == ["a", "b", "c", "d", "e"]

# ************************************
# Write a method that takes a string of lower case words and returns an array of letters that do not occur in the string.
# You may find this line helpful for initializing the hash:
# hash = Hash[("a".."z").zip [0] * 26]
# This creates a hash containing all the letters as keys and initializes their values (counts) to zero.  This problem
# is different enough from the first problem that we can't initialize our hash the same way, at least not without
# thinking very carefully.  Do you know why?
# We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def missing_letters(str)
  hash = Hash[("a".."z").zip [0] * 26]
end

puts "\nMissing Letters"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]
