# Lesson Plan

## Intro to programming (continued)

### Review

Key Concepts:

* Code style
* Indent appropriately
* Snake case
* Spaces—let your code breathe!
* Know the conventions for your programming language
* Keep your code DRY
* Single responsibility principle
* [In-line `if` and `unless`](./inline-if-and-unless.md)

Readings link with Examples (in case you get stuck or need help):
  * [Principles of Good Programming](https://www.artima.com/weblogs/viewpost.jsp?thread=331531)

Exercises:

* The below is valid and correct Ruby. However, the style sucks. Take five minutes and see how many style problems you can fix (including variable naming).

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

Key Concepts:

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

Exercises:

* For each error above, write code that raises that error.  Yes, we want you to write bad code for once :).
  * If you're having trouble, google the error and look for a stackoverflow question.  Type out the relevant parts of the code.

### Advanced arrays

* Initializing arrays: `Array.new(20, 0)` creates an array of twenty `0`s. => `Array.new(size, default_value)`
* You don't just have to index one element, you can index a range of elements!
* `arr[0..10]` (two dots) gives you all of the elements from `0` to and including `10` (the 11th element)
* `arr[0...10]` (three dots) gives you up to BUT NOT INCLUDING `arr[10]`.
* You can index from any start and end index within the range.
* You can even use negative indices! `arr[4..-1]`

Readings link with Examples (in case you get stuck or need help):
* [Advanced Array Refresher](./advanced-arrays.md)

Codecademy link (complete this first if you haven't yet):
  * [Arrays](https://www.codecademy.com/courses/ruby-beginner-en-F3loB/0/1?curriculum_id=5059f8619189a5000201fbcb)
  * [Inclusive and Exclusive Ranges]
  (https://www.codecademy.com/en/courses/ruby-beginner-en-XYcN1/1/2?curriculum_id=5059f8619189a5000201fbcb)

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

Readings link with Examples (in case you get stuck or need help):
* [Ranges Reading](./ranges.md)

Exercises:
  * `puts` an array of all of the numbers between 30 and 50, inclusive.
  * Write a function called `letters_before(character)` that given a character in the alphabet, returns all of the characters that go before it in the alphabet.
  * Write a function called `to_range(array)` that given an ordered array of every value from `start_number` to `end_number`, returns the corresponding range.
    * For example, the `to_range([4, 5, 6, 7]` should return `(4..7)` as a range.

### Boolean enumerable methods
* How to implement with `#each`
* `#any?`
* `#all?`
* `#none?`
* Based on the **return value** of the block! Think of it like a function.

Readings link with Examples (in case you get stuck or need help):
* [Boolean Enumerable Methods Reading](boolean-enumerable-methods.md)

### Advanced enumerables
* `#times`
* `#map`

Readings link with Examples (in case you get stuck or need help):
* [Advanced Enumerables Reading](advanced-enumerables.md)

Exercises:

* Print every number from 1 to 30 using `each` and a range.
* Write a function called `triplify(array)` which given an array of integers, returns a new array with all of the values multiplied by three.
* Write a boolean function called `zeroes?(array)` that checks whether an array of integers contains at least one `0`.
    * First implement this with `#each`, then use a more advanced enumerable boolean method.
* Write a function called `all_odd?(array)` that returns whether all of the integers in an array are odd.
* Write a function called `squares(array)` that, given an array of integers, returns a new array of each number squared.

### Function decomposition
* Break down your functions into as small pieces as possible!
* Single responsibility per function
* This will lower your cognitive load

Readings link with Examples (in case you get stuck or need help):
* [Function Decomposition Reading](function-decomposition.md)


### Hash Maps `{}`
* A.k.a., a dictionary or a map
* Also can conceive of as an array, but with indices other than integers
* Initialized like so: `hash = {}`
* Hash rockets `{ 1 => "one" }`
* Hash keys are all unique
* `nil` values by default

* Important methods:
  * `hash[key]` and `hash[key] = value`
  * `#keys`
  * `#values`
  * `#each do |key, value|`

Readings link with Examples (in case you get stuck or need help):
* [Hash Maps Reading](./hash-maps.md)

Codecademy link (complete this first if you haven't yet):
  * [Hash Maps] (https://www.codecademy.com/en/courses/ruby-beginner-en-F3loB/1/1?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Write a function called `word_lengths(string)` that given a sentence, returns a hash of each of the words and their lengths.
    * E.g., `word_lengths("hello my good good pal")` should return `{ 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }`
  * Write a function called `uniq(array)` that returns only the unique values in an array. (Hint: use a hash!)
  * Write a function called `greatest_val_key(hash)` that takes in a hash with any keys but only integers for values, and returns the key with the largest value.
    * E.g., `greatest_val_key({ "a" => 5, "b" => 6, "c" => 3 })` should return `"b"`

### Custom hash defaults
* Can change the default value using `hash = Hash.new(default_value)`
* Counts pattern! `Hash.new(0)`

Readings link with Examples (in case you get stuck or need help):
* [Custom Hash Defaults Reading](./hash-defaults.md)

Exercises:
  * Write a function called `most_common_number(array)` that takes an array, and returns the number that appears the most times. If there's a tie, just return one of the tied people.
  * Write a function called `least_frequent_word(string)` that takes in a string, and returns the word repeated most infrequently.
    * E.g., `least_frequent_word('hi ho hi hee ho hum ho hum')` should return `"hee"`

# Free Work
