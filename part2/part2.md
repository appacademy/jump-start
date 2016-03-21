# Lesson Plan

## Intro to programming (continued)

### Review

### Code style
* Indent appropriately
* Snake case
* Spaces—let your code breathe!
* Know the conventions for your programming language
* Keep your code DRY
* Single responsibility principle

### In-line `if` and `unless`
* With great power comes great responsibility. I think you're ready.
* You don't have to do this:
```ruby
  def even?(num)
    if num % 2 == 0
      return true
    end
  end
```
* You can do this instead:
```ruby
  def even?(num)
    return true if num % 2 == 0
  end
```
OR
```ruby
  def even?(num)
    return true unless num % 2 == 1
  end
```
(In reality, you should just return `num % 2 == 1`)
* Only do this for **one line** conditionals. Otherwise, use the long form.
* [Many more](https://www.artima.com/weblogs/viewpost.jsp?thread=331531)

Exercises:

* The below is valid and correct Ruby. However, the style sucks. See if you can fix the style problems and variable naming.

```ruby
def  hello_world
puts "Hello, world!" end
```

```ruby
  def is_prime num
  n = 2
  while n < num
      if (num%n==0)
        return (false)
      end
      n = n + 1
    end
    return true
  end
```


### Reading a stack trace
Too many `end`s:
```
unexpected keyword_end, expecting end-of-input
```

Typo or out of scope variable:
```
NameError: undefined local variable or method `n' for main:Object
```

You got a `nil` where you didn't expect one:
```
NoMethodError: undefined method `+' for nil:NilClass
```

Incorrect method name (or method doesn't exist):
```
NoMethodError: undefined method `reverse' for 45:Fixnum
```

Always follow the line numbers! Stack traces don't lie.
```
NoMethodError: undefined method `capitalize' for nil:NilClass
	from /home/appacademy/projects/tmp/test.rb:18:in `greet_user'
	from /home/appacademy/projects/tmp/test.rb:14:in `third'
	from /home/appacademy/projects/tmp/test.rb:10:in `second'
	from /home/appacademy/projects/tmp/test.rb:4:in `first'
	from (irb):41
	from :0
```

### Advanced arrays
* Initializing arrays: `Array.new(20, 0)` creates an array of twenty `0`s. => `Array.new(size, default_value)`
* You don't just have to index one element, you can index a range of elements!
* `arr[0..10]` (two dots) gives you all of the elements from `0` to and including `10` (the 11th element)
* `arr[0...10]` (three dots) gives you up to BUT NOT INCLUDING `arr[10]`.
* You can index from any start and end index within the range.
* You can even use negative indices! `arr[4..-1]`

```ruby
def except_first_and_last(array)
  array[1...-1]
end

eighty = Array.new(4, 20)             #=> [20, 20, 20, 20]
eighty[0] -= 5                        #=> 15
eighty[-1] += 5                       #=> 25
eighty                                #=> [15, 20, 20, 25]
forty = except_first_and_last(eighty) #=> [20, 20]
```

Exercises:
  * Initialize an array of 100 elements with a default value of `"yes"`, and then set every other value to `"no"`.
  * Now take that array and `puts` the subarray of only the first 10 elements (don't over-index!)
  * Then `puts` the last 10 elements.

### Ranges
* Defined in parentheses, just like subarrays: `(0..4)` or `(20...100)`
* Ranges can only go up
* Use `#to_a` to convert to an array
* Can also use characters! Watch your quotation marks though.
* Can `#each` over a range

```ruby
def dance_instructor
  (5..8).each do |count|
    puts count
  end
end

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
```

Exercises:
  * `puts` an array of all of the numbers between 30 and 50, inclusive.
  * Write a function called `letters_before(char)` that given a character in the alphabet, returns all of the characters that go before it in the alphabet.
  * Write a function called `to_range(arr)` that given an ordered array of every value from `n` to `m`, returns the corresponding range.
    * For example, the `to_range([4, 5, 6, 7]` should return `(4..7)` as a range.

### Boolean enumerable methods
* How to implement with `#each`
* `#any?`
* `#all?`
* `#none?`
* Based on the **return value** of the block! Think of it like a function.

`Enumerable#any?` will return true if the block evaluates to true for any element in the collection. As soon as an element makes the block return true, `#any?` will return true without checking the remaining elements.
```ruby
def any_even?(numbers)
  numbers.any? |number|
    number % 2 == 0
  end
end
```

`Enumerable#all?` will return true if the block evaluates to true for every element in the collection. As soon as an element makes the block return false, `#all?` will return false without checking the remaining elements.
```ruby
def all_positive?(numbers)
  numbers.all? do |number|
    number >= 0
  end
end
```

`Enumerable#none?` will return true if the block evaluates to false for every element in the collection. As soon as an element makes the block return true, `#none?` will return false without checking the remaining elements.
```ruby
def all_positive?(numbers)
  numbers.none? do |number|
    number < 0
  end
end
```

**Note** These methods give us a lot of flexibility to craft very readable conditions. If your condition is confusing, think about whether using a different boolean method would make it clearer.

### Advanced enumerables
* `#times`
* `#map`

Ruby's `times` is a nice way to write a loop that will stop after a number of iterations.
```ruby
def drop_and_give_me(quantity)
  puts "Platoon (in unison): Sir, yes sir!"

  quantity.times do |idx|
    puts "Platoon: #{idx + 1}!"
  end

  3.times do
    puts "Hup!"
  end
end
```

`Enumerable#map` evaluates the block for each successive item in the collection, storing the results in an array.
```ruby
def letter_grade(percentage)
  letters = ("A".."D").to_a

  letters.each.with_index do |letter, idx|
    return letter if percentage >= 90 - 10 * idx
  end

  "F"
end

def grade_class(class_percentages)
  class_percentages.map do |student_percentage|
    letter_grade(student_percentage)
  end
end

grade_class([ 92.5, 88, 50, 64, 0, 70]) #=> ["A", "B", "F", "D", "F", "C"]
```

Exercises:

* Print every number from 1 to 30 using `each` and a range.
* Write a function called `triplify(arr)` which given an array of integers, returns a new array with all of the values multiplied by three.
* Write a boolean function called `zeroes?(arr)` that checks whether an array of integers contains at least one `0`.
    * First implement this with `#each`, then use a more advanced enumerable boolean method.
* Write a function called `all_odd?(arr)` that returns whether all of the integers in an array are odd.
* Write a function called `squares(arr)` that, given an array of integers, returns a new array of each number squared.

### Function decomposition
* Break down your functions into as small pieces as possible!
* Single responsibility per function
* This will lower your cognitive load


### Hash Maps `{}`
* A.k.a., a dictionary or a map
* Also can conceive of as an array, but with indices other than integers
* Initialized like so: `hash = {}`
* Hash rockets `{ 1 => "one" }`
* Hash keys are all unique
* `nil` values by default

* Important methods:
  * `hash[key]` and `hash[key] = val`
  * `#keys`
  * `#values`
  * `#each do |k, v|`


```ruby
pantry = {
    "eggs" => 12,
    "tomatoes" => 3,
    "peppers" => 5
}                      #=> {"eggs"=>12, "tomatoes"=>3, "peppers"=>5}

pantry["onions"] = 2   #=> {"onions" => 2}
pantry["eggs"]         #=> 12
pantry["kielbasa"]     #=> nil
pantry.keys            #=> ["eggs", "tomatoes", "peppers", "onions"]
pantry.values          #=> [12, 3, 5, 2]

def print_inventory(inventory)
  inventory.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end
```

Exercises:
  * Write a function called `word_lengths(str)` that given a sentence, returns a hash of each of the words and their lengths.
    * E.g., `word_lengths("hello my good good pal")` should return `{ 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }`
  * Write a function called `uniq(arr)` that returns only the unique values in an array. (Hint: use a hash!)
  * Write a function called `greatest_val_key(hash)` that takes in a hash with any keys but only integers for values, and returns the key with the largest value.
    * E.g., `greatest_val_key({ "a" => 5, "b" => 6, "c" => 3 })` should return `"b"`

### Custom hash defaults
* Can change the default value using `hash = Hash.new(default_value)`
* Counts pattern! `Hash.new(0)`

```ruby
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

Exercises:
  * Write a function called `most_common_number(arr)` that takes an array, and returns the number that appears the most times. If there's a tie, just return one of the tied people.
  * Write a function called `least_frequent_word(str)` that takes in a string, and returns the word repeated most infrequently.
    * E.g., `least_frequent_word('hi ho hi hee ho hum ho hum')` should return `"hee"`

# Free Work
