
# In All Strings
# ------------------------------------------------------------------------------
# Check if a short_string is a substring of ALL of the long_strings

def in_all_strings?(long_strings, short_string)
  long_strings.all? do |long_string|
    long_string.include?(short_string)
  end
end

puts "---------In All Strings-------"
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "sisa") == true
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "isan") == false
puts in_all_strings?(["gandalf", "aragorn", "sauron"], "sam") == false
puts in_all_strings?(["axe", "ajax", "axl rose"], "ax") == true

# Biodiversity
# ------------------------------------------------------------------------------
# Given an array of specimens, return the biodiversity index, which is defined
# by the following formula: number_of_species^2 times the smallest_population_size
# divided by the largest_population_size.

# In code, biodiversity = number_of_species**2 * smallest_population_size / largest_population_size
#
# ------------------------------------------------------------------------------

def biodiversity_index(specimens)
  population_size = Hash.new(0)
  specimens.each do |specimen|
    population_size[specimen] += 1
  end

  number_of_species = specimens.uniq.length
  smallest_population_size = population_size.values.min
  largest_population_size = population_size.values.max

  number_of_species ** 2 * smallest_population_size / largest_population_size
end


puts "------Biodiversity------"
puts biodiversity_index(["cat"]) == 1
puts biodiversity_index(["cat", "cat", "cat"]) == 1
puts biodiversity_index(["cat", "cat", "dog"]) == 2
puts biodiversity_index(["cat", "fly", "dog"]) == 9
puts biodiversity_index(["cat", "fly", "dog", "dog", "cat", "cat"]) == 3

# For F's Sake
# ------------------------------------------------------------------------------
# Given a string, return the word that has the letter "f" closest to
# the end of it.  If there's a tie, return the earlier word.  Ignore punctuation.
#
# If there's no f, return an empty string.
# ------------------------------------------------------------------------------


def for_fs_sake(string)
  words = string.split
  min_f_distance = nil
  min_f_word = ""

  words.each do |word|
    current_f_distance = find_f_distance(word)
    if current_f_distance && (min_f_distance.nil? || current_f_distance < min_f_distance)
      min_f_distance = current_f_distance
      min_f_word = word
    end
  end

  min_f_word
end

def find_f_distance(word)
  index_at_end = word.length - 1
  index = index_at_end
  punctuation = ["!", ".", "?", "'", ","]
  punctuation_count = 0

  until index < 0
    letter = word[index]
    punctuation_count += 1 if punctuation.include?(letter)

    break if letter == "f" || letter == "F"
    index -= 1
  end

  if index >= 0
    index_at_end - index - punctuation_count
  else
    nil
  end
end

puts "------For F's Sake------"
puts for_fs_sake("puff daddy") == "puff"
puts for_fs_sake("I got a lot of problems with you people! And now you're gonna hear about it!") == "of"
puts for_fs_sake("fat friars fly fish") == "fat"
puts for_fs_sake("the French call him David Plouffe") == "Plouffe"
puts for_fs_sake("pikachu! i choose you!") == ""

# Time Sums
# ------------------------------------------------------------------------------
# Return an array of all the minutes of the day whose digits sum to N.
#
# Use military time, so 1:00 PM is really 13:00 PM.
# ------------------------------------------------------------------------------

def time_sums(n)
  times = []
  hour = 0
  until hour == 24
    minutes = 0

    until minutes == 60
      hour_sum = hour.to_s.split("").map(&:to_i).inject(&:+)
      minutes_sum = minutes.to_s.split("").map(&:to_i).inject(&:+)
      sum = hour_sum + minutes_sum

      padded_hours = hour.to_s.split("")
      padded_minutes = minutes.to_s.split("")

      padded_hours.unshift("0") until padded_hours.length == 2
      padded_minutes.unshift("0") until padded_minutes.length == 2

      times.push(padded_hours.join("") + ":" + padded_minutes.join("")) if sum == n

      minutes += 1
    end
    hour += 1
  end

  times
end

puts "------Tens Time------"

puts time_sums(0) == ["00:00"]
puts time_sums(1) == ["00:01", "00:10", "01:00", "10:00"]
puts time_sums(23) == ["09:59", "18:59", "19:49", "19:58"]
puts time_sums(24) == ["19:59"]

# Censor
# ------------------------------------------------------------------------------
# Write a function censor(sentence, curse_words) that censors the words given.
# Replace the vowels in the curse word with "*".

def censor(sentence, curse_words)
  words = sentence.split(" ")

  asterisked_words = words.map do |word|
    if curse_words.include?(word.downcase)
      asterisked_word(word)
    else
      word
    end
  end

  asterisked_words.join(" ")
end

def asterisked_word(word)
  asterisked_array = word.split("")
  asterisked_array.map! do |letter|
    if ["a", "e", "i", "o", "u"].include?(letter)
      "*"
    else
      letter
    end
  end

  asterisked_array.join("")
end

puts "------Censor------"
puts censor("Darn you Harold you son of a gun", ["darn", "gun"]) == "D*rn you Harold you son of a g*n"
puts censor("Schnikeys I don't give a diddly squat", ["schnikeys", "diddly", "squat"]) == "Schn*k*ys I don't give a d*ddly sq**t"
