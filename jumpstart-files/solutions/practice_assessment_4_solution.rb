# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself an hour to complete this assessment.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------

# Price is Right
# ------------------------------------------------------------------------------
# Given a list of bids and an actual retail price, return the bid that is closest
# to the actual retail price without going over that price.
#
# Assume there is always at least one bid below the retail price.

def price_is_right(bids, actual_retail_price)
  actual_retail_price.downto(0) do |price|
    return price if bids.include?(price)
  end
end

puts "-------Price is Right-------"
puts price_is_right([200, 2350, 1400, 1600], 1599) == 1400
puts price_is_right([950, 850, 1000, 1], 1300) == 1000


# Total Product Sequence
# ------------------------------------------------------------------------------
# The total product sequence starts with [1, 2, 3] as a "base case" (what you
# start with).  The next number in the sequence is the product of all the numbers
# before it.  Given a number n, find the nth number of the total product sequence.
#
# Assume n must be at least 1

def total_product_sequence(n)
  sequence = [1, 2, 3]

  return sequence[n - 1] if n < 3

  until sequence.length == n
    product_so_far = get_product(sequence)
    sequence.push(product_so_far)
  end

  sequence.last
end

def get_product(sequence)
  product = 1
  sequence.each {|number| product *= number}
  product
end

puts "-------Total Product Sequence-------"
puts total_product_sequence(1) == 1
puts total_product_sequence(2) == 2
puts total_product_sequence(3) == 3
puts total_product_sequence(4) == 6 # 3 * 2 * 1
puts total_product_sequence(5) == 36 # 6 * 3 * 2 * 1
puts total_product_sequence(6) == 1296 # 36 * 6 * 3 * 2 * 1
puts total_product_sequence(8) == 2821109907456 # etc...

# Products Except Me
# ------------------------------------------------------------------------------
#
# Given an array of numbers, calculate all the different products that remain when
# you take each element out of the array.
#
# Examples:
#
# [2, 3, 4] => [12, 8, 6], where:
#   12 because you take out 2, leaving 3 * 4
#   8, because you take out 3, leaving 2 * 4
#   6, because you take out 4, leaving 2 * 3
# ]
#
# [1, 2, 3, 5] => [30, 15, 10, 6], where:
#   30 because you take out 1, leaving 2 * 3 * 5
#   15, because you take out 2, leaving 1 * 3 * 5
#   10, because you take out 3, leaving 1 * 2 * 5
#   6, because you take out 5, leaving 1 * 2 * 3
# ]
#
#
#

def products_except_me(numbers)
  products = []
  index = 0

  while index < numbers.length
    product_without = get_product_without(index, numbers)
    products.push(product_without)
    index += 1
  end

  products
end

def get_product_without(index, numbers)
  left_half = numbers[0...index]
  right_half = numbers[index + 1...numbers.length]
  numbers_without = left_half + right_half

  product = 1

  numbers_without.each {|number| product *= number}

  product
end

puts "-------Products Except Me-------"
puts products_except_me([2, 3, 4]) == [12, 8, 6]
puts products_except_me([1, 2, 3, 5]) == [30, 15, 10, 6]
puts products_except_me([7, 2, 1, 4]) == [8, 28, 56, 14]


# Fall and Winter Birthdays
# ------------------------------------------------------------------------------
# Given a list of students and what month their birthday is, return all the pairs
# of students whose birthdays both fall in the second half of the year.  Months
# are numbers, and assume that July (month 7) and later is the second half of
# the year.
#
# Only count pairs once, and work from the beginning of the list to the end.
#

def fall_and_winter_birthdays(students_with_birthdays)
  second_half_birthday_pairs = []

  students_with_birthdays.each_with_index do |first_student_with_birthday, index|
    first_student = first_student_with_birthday.first
    first_birthday = first_student_with_birthday.last
    rest_of_students = students_with_birthdays[index + 1...students_with_birthdays.length]

    rest_of_students.each do |second_student_with_birthday|
      second_student = second_student_with_birthday.first
      second_birthday = second_student_with_birthday.last

      if first_birthday >= 7 && second_birthday >= 7
        second_half_birthday_pairs.push([first_student, second_student])
      end
    end
  end

  second_half_birthday_pairs
end

students_with_birthdays_1 = [
  ["Asher", 6],
  ["Bertie", 11],
  ["Dottie", 8],
  ["Warren", 9]
]

second_half_birthday_pairs_1 = [
  ["Bertie", "Dottie"],
  ["Bertie", "Warren"],
  ["Dottie", "Warren"]
]

students_with_birthdays_2 = [
  ["Asher", 6],
  ["Bertie", 11],
  ["Dottie", 8],
  ["Warren", 9],
  ["Charlie", 7],
  ["Nassim", 4],
  ["Ajit", 10],
]

second_half_birthday_pairs_2 = [
  ["Bertie", "Dottie"],
  ["Bertie", "Warren"],
  ["Bertie", "Charlie"],
  ["Bertie", "Ajit"],
  ["Dottie", "Warren"],
  ["Dottie", "Charlie"],
  ["Dottie", "Ajit"],
  ["Warren", "Charlie"],
  ["Warren", "Ajit"],
  ["Charlie", "Ajit"],
]

puts "-------Fall and Winter Birthdays-------"
puts fall_and_winter_birthdays(students_with_birthdays_1) == second_half_birthday_pairs_1
puts fall_and_winter_birthdays(students_with_birthdays_2) == second_half_birthday_pairs_2


# More than N Factors
# ------------------------------------------------------------------------------
# Given an array of numbers, return all the numbers that have at least N
# factors (including 1 and itself as factors).

# For example, if you were given [1, 3, 10, 16] and wanted to find the numbers
# that had at least five factors, you would return [16] because 16 has five
# factors (1, 2, 4, 8, 16) and the others have fewer than five factors.

def more_than_n_factors(numbers, n)
  numbers_with_more_than_n_factors = []

  numbers.each do |number|
    factors = get_factors(number)
    if factors.length >= n
      numbers_with_more_than_n_factors.push(number)
    end
  end

  numbers_with_more_than_n_factors
end

def get_factors(number)
  factors = []

  1.upto(number) do |number_to_divide_by|
    factors.push(number_to_divide_by) if number % number_to_divide_by == 0
  end

  factors
end

puts "-------More Than N Factors-------"
puts more_than_n_factors([1, 3, 10, 16], 5) == [16]
puts more_than_n_factors([1, 3, 10, 16], 2) == [3, 10, 16]
puts more_than_n_factors([20, 36, 39, 16], 6) == [20, 36]


# One-week Wonders
# ------------------------------------------------------------------------------
# Given a list of songs at the top of the charts, return the songs that only
# stayed on the chart for a week at a time.
#
# Songs CAN reappear on the chart, as long as it's for a week at a time. Only
# count those songs once.
#
# Suggested strategy: find the songs that show up multiple times in a row and
# subtract them out.

def one_week_wonders(songs)
  songs_that_show_up_multiple_times = []

  songs.each_with_index do |song, index|
    next if index == songs.length - 1

    if song == songs[index + 1]
      songs_that_show_up_multiple_times.push(song)
    end
  end

  songs_that_show_up_multiple_times.uniq!

  one_time_songs = songs.select { |song| !songs_that_show_up_multiple_times.include?(song)}
  one_time_songs.uniq
end

top_hits_1 = ["Call Me Maybe", "Protect Ya Neck", "Call Me Maybe", "Protect Ya Neck", "Protect Ya Neck"]
one_week_wonders_1 = ["Call Me Maybe"]

top_hits_2 = ["Beat It", "Beat It", "Careless Whisper", "Beat It", "Baby", "Baby", "Never Gonna Give You Up", "Uptown Funk", "Uptown Funk", "Uptown Funk"]
one_week_wonders_2 = ["Careless Whisper", "Never Gonna Give You Up"]

puts "-------One Week Wonders-------"
puts one_week_wonders(top_hits_1) == one_week_wonders_1
puts one_week_wonders(top_hits_2) == one_week_wonders_2

# Sign Tweakers
# ------------------------------------------------------------------------------
# Given a perfectly respectable business sign, determine if pranksters George
# and Harold can make a vandalized sign out of it using the same or fewer letters.
# Ignore capitalization and punctuation.

def can_tweak_sign?(normal_sign, vandalized_sign)
  normal_letter_counts = Hash.new(0)
  vandalized_letter_counts = Hash.new(0)

  normal_sign.split.each do |word|
    word.each_char { |letter| normal_letter_counts[letter.downcase] += 1 }
  end

  vandalized_sign.split.each do |word|
    word.each_char { |letter| vandalized_letter_counts[letter.downcase] += 1 }
  end

  vandalized_letter_counts.each do |letter, letter_count|
    return false if normal_letter_counts[letter] < letter_count
  end

  true
end

puts "-------Sign Tweakers-------"
puts can_tweak_sign?("Come in and see our pretty armchairs", "Come and see our hairy armpits") == true
puts can_tweak_sign?("Student and teacher art fair starts Wed.", "Teacher farts stain underwear") == true
puts can_tweak_sign?("Choose the bread of life or you are toast", "Teacher farts stain underwear") == false


# Repeated Number Ranges
# ------------------------------------------------------------------------------
# Given a list of numbers, give the start and end indices each time a number shows
# up multiple times in a row.
#

def repeated_number_ranges(numbers)
  ranges = []
  current_index = 0
  start_index = nil

  # start walking
  # set the start index when the next number is the same
  # reset the start index when the next number is different

  while current_index < numbers.length
    if numbers[current_index + 1] == numbers[current_index]
      start_index = current_index if start_index.nil?
    else
      if !start_index.nil? # i.e., if the start index isn't nil and the numbers switched
        ranges.push([start_index, current_index])
        start_index = nil
      end
    end

    current_index += 1
  end

  ranges
end

puts "-------Repeated Number Ranges-------"
puts repeated_number_ranges([1, 1, 2]) == [[0, 1]]
puts repeated_number_ranges([1, 2, 3, 3, 4]) == [[2, 3]]
puts repeated_number_ranges([1, 2, 3, 3, 4, 4]) == [[2, 3], [4, 5]]
puts repeated_number_ranges([1, 1, 1, 2, 3, 3, 4]) == [[0, 2], [4, 5]]
puts repeated_number_ranges([8, 7, 7, 14, 12, 12, 12, 12, 21]) == [[1, 2], [4, 7]]
