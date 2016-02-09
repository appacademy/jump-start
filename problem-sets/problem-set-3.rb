# ***********************************
# Write a method that takes an array of numbers as input and uses select to return an array only of even numbers

def get_evens(array)
end

puts "\nget_evens"
puts get_evens([1, 2, 3, 4, 5, 6, 7]) == [2, 4, 6]
puts get_evens([2, 4, 6, 8, 10, 12, 14]) == [2, 4, 6, 8, 10, 12, 14]
puts get_evens([1, 3, 5, 7, 9, 11]) == []

# ***********************************
# Write a method that takes an array of numbers as input and uses reject to return an array of number that aren't odd

def reject_odds(array)
end

puts "\nreject odds"
puts reject_odds([1, 2, 3, 4, 5]) == [2, 4]
puts reject_odds([2, 4, 6, 8, 10) == [2, 4, 6, 8, 10]
puts reject_odds([1.1, 3.5, 2.9]) == [1.1, 3.5, 2.9]

# ************************************
# Write a method that uses reduce to sum up the numbers in an array

def array_sum(array)
end

puts "\narray sum"
puts array_sum([]) == 0
puts array_sum([1, 2, 3]) == 6
puts array_sum([5, 5, 5, 5, 5]) == 25
