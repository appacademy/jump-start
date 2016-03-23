# Advanced Enumerable Methods

Ruby's `times` is a nice way to write a loop that will stop after a number of iterations.
```ruby
# This method takes a quantity of pushups to perform and prints
# the platoon's responses. Here's a sample output for input of 2:
#
# Platoon (in unison): Sir, yes sir!
# Platoon: 1!
# Platoon: 2!
# Hup!
# Hup!
# Hup!
#
def drop_and_give_me(quantity)
  puts "Platoon (in unison): Sir, yes sir!"

  quantity.times do |index|
    puts "Platoon: #{index + 1}!"
  end

  3.times do
    puts "Hup!"
  end
end
```
What is the return value of the method in the example above? Why?

`Enumerable#map` evaluates the block for each successive item in the collection, storing the results in an array.

```ruby
# This function takes a percentage,
# returning the corresponding letter grade
def letter_grade(percentage)
  letters = ("A".."D").to_a

  letters.each.with_index do |letter, index|
    return letter if percentage >= 90 - 10 * index
  end

  "F"
end

# This function takes an array of grades as percentages,
# returning a new array of their corresponding letter grades.
def grade_class(class_percentages)
  class_percentages.map do |student_percentage|
    letter_grade(student_percentage)
  end
end

grade_class([ 92.5, 88, 50, 64, 0, 70]) #=> ["A", "B", "F", "D", "F", "C"]
```
