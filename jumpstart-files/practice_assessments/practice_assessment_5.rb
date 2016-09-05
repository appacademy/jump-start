# Write a functinon that takes a string and
# returns a hash in which each key is a character in the string
# pointing to an array indicating the index that the character
# first occurs and last occurs.
#
# If the character occurs only once, the array should hold a single index
#
# Example:
#
# str = "banana"
# return {"b" => [0], "a" => [1, 5], "n" => [2, 4]}
# "b" occurs once at index 0
# "a" occurs three times, but the first is at index 1 and the last is at index 5
# "n" occurs three times, but the first is at index 2 and the last is at index 4

def first_last_indices(str)
end


puts "-------First Last Indices-------"
puts first_last_indices("cat") == {"c" => [0], "a" => [1], "t" => [2]}
puts first_last_indices("dude") == {"d" => [0, 2], "u" => [1], "e" => [3]}
puts first_last_indices("banana") == {"b" => [0], "a" => [1, 5], "n" => [2, 4]}
puts first_last_indices("racecar") == {"r" => [0, 6], "a" => [1, 5], "c" => [2, 4], "e" => [3]}


##################


# Anagrams are two words with the exact same letters.
# Write a function that take two strings and returns true if they are anagrams
# and false if they are not.

def anagrams?(str1, str2)
end

puts "-------Anagrams-------"
puts anagrams?("alert", "alter") == true
puts anagrams?("desert", "rested") == true
puts anagrams?("banana", "fofanna") == false
puts anagrams?("meat master", "team stream") == true


# An abundant number is a number that is less than the sum of its divisors,
# not including itself.

# Ex. 12's divisors are 1, 2, 3, 4, 6, which sum to 16
# 16 > 12 so 12 is an abundant number.

# Write a function that takes a number and return true if the number is abundant
# otherwise, return false.


##################


def abundant?(num)
end

puts "-------Abundant-------"
puts abundant?(12) == true
puts abundant?(24) == true
puts abundant?(9) == false
puts abundant?(10001) == false
puts abundant?(20000) == true


##################


# Save the Prisoner!
#
# A jail has n prisoners, and each prisoner has a unique ID number, ranging
# from 1 to n. There are m sweets that must be distributed to the prisoners.
# The jailer decides the fairest way to do this is by sitting the prisoners
# down in a circle (ordered by ascending ID number), and then, starting with
# some random prisoner, distribute one candy at a time to each sequentially
# numbered prisoner until all candies are distributed. For example, if the
# jailer picks prisoner ID=2, then his distribution order would be
# (2,3,4,5,...,n-1,n,1,2,3,4,...) until all m sweets are distributed.
#
# But wait — there's a catch — the very last sweet is poisoned! Can you find and
# print the ID number of the last prisoner to receive a sweet so they can be warned?
#
# n => Number of Prisoners
# m => Number of Sweets
# ID => Starting ID
# save_the_prisoner(N,M,ID)


def save_the_prisoner(n, m, id)
end

puts "-------Save The Prisoners-------"
puts save_the_prisoner(5,2,1) == 2
puts save_the_prisoner(99, 99, 1) == 99
puts save_the_prisoner(49, 98, 2) == 1
puts save_the_prisoner(94431605, 679262176, 5284458) == 23525398


##################


# Write a method, #build_power_plants, that will take in two arguments. The
# first of which is the number of cities that need to be powered. The cities
# are arranged in a line and are equidistant from eachother.
#   The second argument will be the range of each powerplant (the number of cities
# in each direction a plant can reach and power). So, a range of 1 means that each
# plant can only reach the cities on either side of it. A range of 0 means that the
# plants can only power the city they are built in.
#
#   Your function should dictate which cities' powerplants need to be built such
# that all of the cities have power, and the least number of cities have powerplants
# as possible.
#
#   Output an array of the cities, with 0 representing a city without a powerplant
# and 1 representing a city with one.
#
# For example:
# build_power_plants(3, 2) means that there are three cities, and each powerplant
# will have a range of two cities. Therefore your function should output the array
# { 0, 1, 0 ]


def build_power_plants(number_of_cities, plant_range)
end

puts "-------Power Plants-------"
puts build_power_plants(0,1) == []
puts build_power_plants(1,1) == [1]
puts build_power_plants(1,4) == [1]
puts build_power_plants(2,1) == [1, 0] || build_power_plants(2,1) == [0, 1]
puts build_power_plants(2,0) == [1, 1]
puts build_power_plants(3,0) == [1, 1, 1]
puts build_power_plants(3,1) == [0, 1, 0]
puts build_power_plants(3,2) == [1, 0, 0] ||
  build_power_plants(3,2) == [0, 1, 0] ||
  build_power_plants(3,2) == [0, 0, 1]
puts build_power_plants(5,1) == [0, 1, 0, 1, 0] ||
  build_power_plants(5,1) == [1, 0, 0, 1, 0] ||
  build_power_plants(5,1) == [0, 1, 0, 0, 1]
puts build_power_plants(5,2) == [0, 0, 1, 0, 0]
puts build_power_plants(10, 2) == [0, 0, 1, 0, 0, 0, 0, 1, 0, 0]
