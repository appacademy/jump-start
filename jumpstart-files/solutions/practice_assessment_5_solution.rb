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
  answer = Hash.new
  str.each_char do |c|
    first_index  = first_occurence(str, c)
    last_index  = last_occurence(str, c)
    answer[c] = [first_index]
    answer[c] << last_index if last_index != first_index
  end
  answer
end

def first_occurence(str, c)
  str.index(c)
end

def last_occurence(str, c)
  str.length - str.reverse.index(c) - 1
end


##################


# Anagrams are two words with the exact same letters.
# Write a method that take two strings and returns true if they are anagrams
# and false if they are not.

def anagrams?(str1, str2)
  characters = str1.split("")
  characters.all? do |c|
    str1.count(c) == str2.count(c)
  end
end


##################


# An abundant number is a number that is less than the sum of its divisors,
# not including itself.

# Ex. 12's divisors are 1, 2, 3, 4, 6, which sum to 16
# 16 > 12 so 12 is an abundant number.

# Write a method that takes a number and returns true if the number is abundant
# otherwise, return false.


def abundant?(num)
  sum(divisors(num)) > num
end

def divisors(num)
  (1...num).select { |n| num % n == 0 }
end

def sum(array)
  sum = 0
  array.each { |num| sum += num }
  sum
end


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
  prisoners = n
  sweets = m

  prisonerToWarn = (id + sweets - 1) % prisoners
  prisonerToWarn == 0 ? prisoners : prisonerToWarn
end


##################

# Write a method, #build_power_plants, that will take in two arguments. The
# first of which is the number of cities that need to be powered. The cities
# are arranged in a line and are equidistant from eachother.
#   The second argument will be the range of each powerplant (the number of cities
# in each direction a plant can reach and power). So, a range of 1 means that each
# plant can only reach the cities on either side of it. A range of 0 means that the
# plants can only power the city they are built in.
#
#   Your method should dictate which cities' powerplants need to be built such
# that all of the cities have power, and the least number of cities have powerplants
# as possible.
#
#   Output an array of the cities, with 0 representing a city without a powerplant
# and 1 representing a city with one.
#
# For example:
# build_power_plants(3, 2) means that there are three cities, and each powerplant
# will have a range of two cities. Therefore your method should output the array
# { 0, 1, 0 ]


def build_power_plants(number_of_cities, plant_range)
  return Array.new(number_of_cities, 1) if plant_range < 1 || number_of_cities < 2

  cities = Array.new(number_of_cities, 0)

  curr_idx = plant_range
  until curr_idx > cities.length
    cities[curr_idx] = 1
    curr_idx += plant_range * 2 + 1
  end

  cities
end
