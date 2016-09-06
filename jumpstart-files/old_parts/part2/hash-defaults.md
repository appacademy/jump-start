# Hash Defaults

Here's an example showing how we can set a hash's default value to something more useful than `nil`. This example shows a very useful pattern.
```ruby
# This function takes an array of letter grades,
# returning a hash with each grade as the key and the number off
# occurrences of the grade in the array as the value.
def grade_counts(class_letter_grades)
  grade_counts = Hash.new(0)

  class_letter_grades.each do |letter_grade|
    grade_counts[letter_grade] += 1
  end

  grade_counts
end

math_grades = ["A", "B", "A", "A", "C", "F"] #=> ["A", "B", "A", "A", "C", "F"]
math_counts = grade_counts(math_grades)      #=> {"A"=>3, "B"=>1, "C"=>1, "F"=>1}
math_counts["A"]                             #=> 3
math_counts["D"]                             #=> 0
math_counts["platypus"]                      #=> 0
```
