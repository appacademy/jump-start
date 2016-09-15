
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



# Care Bear Summary
# ------------------------------------------------------------------------------
# You have a calendar of hugs that care bears made (given as a list of
# names by care bears).  Some of them have hugged multiple
# times in a row.
#
# Return a hash where the keys are the care bears and the values are an array
# of all of the start and end days of their hugging streaks.
#
# Days are the index of the calendar array.

def care_bear_summary(calendar_of_hugs)
  final_care_bear_summary = {}
  current_hugger = nil
  start_day = 0

  calendar_of_hugs.each_with_index do |hugger, day|
    if hugger != current_hugger #new hugger
      if day >= 2 #we don't care if the hugger changed on day 0 (from nil) or 1
        yesterdays_hugger = current_hugger # we haven't changed the current_hugger yet
        check_if_end_of_hugging_streak(yesterdays_hugger, calendar_of_hugs, start_day, day, final_care_bear_summary)
      end

      current_hugger = hugger
      start_day = day
    else
      check_if_last_day_hugging_streak(calendar_of_hugs, start_day, day, current_hugger, final_care_bear_summary)
    end
  end

  final_care_bear_summary
end


def check_if_end_of_hugging_streak(yesterdays_hugger, calendar_of_hugs, start_day, day, final_care_bear_summary)
    multiple_hugs_happened = multiple_hugs_happened?(calendar_of_hugs, start_day, day, yesterdays_hugger)
    yesterday = day - 1
    last_streak = [start_day, yesterday]

    summarize(final_care_bear_summary, yesterdays_hugger, last_streak) if multiple_hugs_happened
end

def check_if_last_day_hugging_streak(calendar_of_hugs, start_day, day, current_hugger, final_care_bear_summary)
  last_day = day == calendar_of_hugs.length - 1

  if last_day
    multiple_hugs_happened = multiple_hugs_happened?(calendar_of_hugs, start_day, day + 1, current_hugger)
    last_streak = [start_day, day]

    summarize(final_care_bear_summary, current_hugger, last_streak) if multiple_hugs_happened
  end
end

def multiple_hugs_happened?(calendar_of_hugs, start_day, day, yesterdays_hugger)
  guy_two_days_ago = calendar_of_hugs[day - 2]
  guy_two_days_ago == yesterdays_hugger
end

def summarize(final_care_bear_summary, hugger, last_streak)
  final_care_bear_summary[hugger] ||= []
  final_care_bear_summary[hugger].push(last_streak)
end


puts "-------Care Bear Summary-------"

hug_calendar_1 = [
  "Birthday Bear",
  "Bedtime Bear",
  "Birthday Bear",
  "Birthday Bear",
  "Bedtime Bear"
]

care_bear_counts_1 = {
  "Birthday Bear" => [[2, 3]]
}

hug_calendar_2 = [
  "Birthday Bear",
  "Birthday Bear",
  "Cheer Bear",
  "Bedtime Bear",
  "Bedtime Bear",
  "Birthday Bear",
  "Birthday Bear",
  "Birthday Bear",
  "Bedtime Bear",
  "Friend Bear"
]

care_bear_counts_2 = {
  "Birthday Bear" => [[0, 1], [5, 7]],
  "Bedtime Bear" => [[3, 4]]
}

puts care_bear_summary(hug_calendar_1) == care_bear_counts_1
puts care_bear_summary(hug_calendar_2) == care_bear_counts_2
