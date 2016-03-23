# Ranges

Here's an example that iterates over a range:
```ruby
# This function prints "5, 6, 7, 8" each on a newline, returning the range (5..8)
def dance_instructor
  (5..8).each do |count|
    puts count
  end
end
```

This example employs a range of characters. Note the method **returns** the string instead of printing it:
```ruby
# This function takes a letter grade as input, returning a reasonable response to the grade.
def report_card_feedback(grade)
  passing_grades = ("A".."D").to_a
  failing_grade  = "F"

  if passing_grades.include?(grade.upcase)
    "That'll do, I guess"
  elsif grade.upcase == failing_grade
    "Try harder"
  else
    "Nice try. #{grade} isn't a real grade!"
  end
end
report_card_feedback("c")        # => "That'll do, I guess"
report_card_feedback("F")        # => "Try harder"
report_card_feedback("Awesome")  # => "Nice try. Awesome isn't a real grade!"
```
