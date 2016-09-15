require 'byebug'
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

# Greatest Common Factor
# ------------------------------------------------------------------------------
# Return the greatest number which is a factor of both inputs.
#
# The greatest common factor of 6 and 10 is 2
# the greatest common factor of 10 and 15 is 5

def greatest_common_factor(first_number, second_number)
  first_number_factors = get_factors(first_number)
  second_number_factors = get_factors(second_number)
  max_factor = 1

  first_number_factors.each do |first_factor|
    if second_number_factors.include?(first_factor) && first_factor > max_factor
      max_factor = first_factor
    end
  end

  max_factor
end

def get_factors(number)
  factors = []

  (1..number).each do |number_to_divide_by|
    factors.push(number_to_divide_by) if number % number_to_divide_by == 0
  end

  factors
end

# puts "-------Greatest Common Factor-------"
# puts greatest_common_factor(6, 10) == 2
# puts greatest_common_factor(10, 15) == 5
# puts greatest_common_factor(4, 7) == 1
# puts greatest_common_factor(4, 8) == 4

# Panoramic Pairs
# ------------------------------------------------------------------------------
# You have a panoramic view in front of you, but you only can take a picture of
# two landmarks at a time (your camera is small).  You want to capture every
# pair of landmarks that are next to each other.
#
# Given an array of landmarks, return every adjacent pair from left to right.
# Assume the panorama wraps around.

def panoramic_pairs(landmarks)
  pairs = []

  landmarks.each_with_index do |landmark, index|
    if index == landmarks.length - 1
      neighbor_index = 0
    else
      neighbor_index = index + 1
    end

    neighbor = landmarks[neighbor_index]
    pairs.push([landmark, neighbor])
  end

  pairs
end

# puts "-------Panoramic Pairs-------"

# landmarks_1 = ["House", "Horse"]
# pairs_1 = [["House", "Horse"], ["Horse", "House"]]

# # puts panoramic_pairs(landmarks_1) == pairs_1

# landmarks_2 = ["Tree", "Mountain", "Ocean", "Cottage"]
# pairs_2 = [["Tree", "Mountain"], ["Mountain", "Ocean"], ["Ocean", "Cottage"], ["Cottage", "Tree"]]

# puts panoramic_pairs(landmarks_2) == pairs_2


# Two Degrees of Separation
# ------------------------------------------------------------------------------
# You have a hash that represents all of Facebook (lookit you).  Each key is the
# name of a person on facebook, and each value is an array of all their friends.
# Assume everyone on Facebook has a different name.
#
# Given Facebook and the name of a person, return an array of all the friends
# of their friends. Do not include the original person or their immediate friends.

def two_degrees_away(facebook, name)
  two_degree_friends = []
  first_degree_friends = facebook[name]

  first_degree_friends.each do |first_degree_friend|
    second_degree_friends = facebook[first_degree_friend]

    second_degree_friends.each do |second_degree_friend|
      if second_degree_friend != name && !first_degree_friends.include?(second_degree_friend)
        two_degree_friends.push(second_degree_friend)
      end
    end
  end

  two_degree_friends
end


# puts "-------Two Degrees of Separation-------"

# facebook_1 = {
#   "Harry Potter" => ["Ron Weasley"],
#   "Ron Weasley" => ["Harry Potter", "Fred Weasley"],
#   "Fred Weasley" => ["Ron Weasley"]
# }

# friends_1 = ["Fred Weasley"]

# puts two_degrees_away(facebook_1, "Harry Potter") == friends_1


# facebook_2 = {
#   "Mark Zuckerberg" => ["Eduardo Saverin", "Dustin Moskovitz", "Sean Parker"],
#   "Eduardo Saverin" => ["Mark Zuckerberg", "Tyler Winklevoss", "Cameron Winklevoss", "Dustin Moskovitz"],
#   "Tyler Winklevoss" => ["Eduardo Saverin"],
#   "Cameron Winklevoss" => ["Eduardo Saverin"],
#   "Dustin Moskovitz" => ["Mark Zuckerberg", "Eduardo Saverin"],
#   "Sean Parker" => ["Mark Zuckerberg"]
# }

# friends_2 = ["Tyler Winklevoss", "Cameron Winklevoss"]

# puts two_degrees_away(facebook_2, "Mark Zuckerberg") == friends_2



# Assign Pods
# ------------------------------------------------------------------------------
# You are a JumpStart TA and you need to assign students to sit with other
# students who are at the same place in the curriculum.
#
# Given a list of students ordered by how far they are in the course and a
# list of pods, return their seat assignments.  Assume you can only seat four
# people per pod.  "Fill up" each pod as you go.  It's OK to have a pod with
# four people and the next pod with one person).  It's OK to have empty pods
# if there aren't enough students.

def assign_pods(students, pods)
  assigned_pods = {}
  pod_index = 0

  pods.each {|pod| assigned_pods[pod] = []}

  students.each do |student|
    current_pod = pods[pod_index]
    if assigned_pods[current_pod].length == 4
      pod_index += 1
      current_pod = pods[pod_index]
    end

    assigned_pods[current_pod].push(student)
  end

  assigned_pods
end

# puts "-------Assign Pods-------"

# students_1 = [
#   "Scott",
#   "Asher",
#   "Julie",
#   "Rick",
#   "Jeff",
#   "Brooke",
#   "Sandra",
#   "Jim",
#   "Pete",
#   "Marta",
#   "Tanna"
# ]

# pods_1 = [
#   "Fremont",
#   "Berkeley",
#   "San Ramon"
# ]


# expected_pod_assignment_1 = {
#   "Fremont" => ["Scott", "Asher", "Julie", "Rick"],
#   "Berkeley" => ["Jeff", "Brooke", "Sandra", "Jim"],
#   "San Ramon" => ["Pete", "Marta", "Tanna"]
# }

# students_2 = [
#   "Scott",
#   "Asher",
#   "Julie",
#   "Rick",
#   "Jeff",
#   "Brooke",
#   "Sandra",
#   "Jim",
#   "Pete",
#   "Marta",
#   "Tanna",
#   "Fred",
#   "George"
# ]

# pods_2 = [
#   "Fremont",
#   "Berkeley",
#   "San Ramon",
#   "Oakland"
# ]


# expected_pod_assignment_2 = {
#   "Fremont" => ["Scott", "Asher", "Julie", "Rick"],
#   "Berkeley" => ["Jeff", "Brooke", "Sandra", "Jim"],
#   "San Ramon" => ["Pete", "Marta", "Tanna", "Fred"],
#   "Oakland" => ["George"]
# }

# puts assign_pods(students_1, pods_1) == expected_pod_assignment_1
# puts assign_pods(students_2, pods_2) == expected_pod_assignment_2


# Remove Letter 'A'
# ------------------------------------------------------------------------------
# Given a list of words, remove all the occurrences of the letter 'a' in those
# words.

def remove_letter_a(words)
  non_a_words = []

  words.each do |word|
    word_without_a = ""

    word.each_char do |char|
      word_without_a += char unless char == "a"
    end

    non_a_words.push(word_without_a)
  end

  non_a_words
end


# puts "-------Remove Letter 'A'-------"
# words_1 = ["blueberry", "apple", "banana", "peach"]
# without_a_1 = ["blueberry", "pple", "bnn", "pech"]

# words_2 = ["syllabus", "smirk", "salamander", "saaaaaaa"]
# without_a_2 = ["syllbus", "smirk", "slmnder", "s"]

# puts remove_letter_a(words_1) == without_a_1
# puts remove_letter_a(words_2) == without_a_2
