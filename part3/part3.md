# Lesson Plan

### Scope
* Functions and blocks each introduce new scopes
* A scope is basically an environment where variables are accessible (think inside a function vs outside of it)
* A **local variable** is only defined within its scope
* You should generally not name a local variable the same as the function or as another variable in scope, because it causes a namespace conflict. (I.e., the older variable will no longer be accessible.)


Exercise:

* Will this function work? Don't run it, just analyze the code mentally.

```ruby
index = 0
def iterate!
  while index < 5
    puts index
    index += 1
  end
end

iterate!
```

* What about this one?

```ruby
array = [1, 2, 3, 4]
sum = 0
array.each do |element|
  sum += element
end
puts sum
```

* And this one?

```ruby
def array_squared(array)
  array.each do |element|
    element *= element
  end
  array
end

array = [1, 2, 3, 4]
puts array_squared(array)
```

### Pass-by-reference
* When you pass a variable into a function or a method, the original variable always continues to refer to the same object.
* A variable is just a **pointer**. Think of it as just writing down the address of a building into an address book.
* Re-assigning the same variable within another scope doesn't mutate the original object, it just changes that scope's address book.
* Writing stuff into your address book doesn't actually change where buildings live! It's just your own form of book-keeping.
* More concretely, all Ruby objects live in memory. And they'll still live in memory unless you explicitly mutate them.

Notice how the variable nyse always refers to the same string here, even after the function reassigns work_addres to the white house:
```ruby
nyse = "11 Wall Street"

# This function takes a previous work address and prints a change of address
# form for a newly elected president. The function returns nil.
# Here's a sample output:
# I no longer work here: 11 Wall Street
# Now, I work here: 1600 Pennsylvania Avenue
#
def get_elected(work_address)
  puts "I no longer work here: #{work_address}"

  work_address = "1600 Pennsylvania Avenue"

  puts "Now, I work here: #{work_address}"
end

get_elected(nyse)                                 #=> nil

nyse                                              #=> "11 Wall Street"
                                                  #   **Note** hasn't changed.
```

### Mutation

* Safe vs. unsafe methods. The bang, `!`, at the end of the method name denotes an unsafe method.
* The bang generally means the method mutates the input.
* Pay attention to whether you need to re-assign your variable, or mutate it in your function.
* Some Ruby objects are **immutable**, which means they cannot mutate. You must create a new and different object and re-assign your variable if you want to change an immutable object.
* Things that are immutable:
  * Booleans (`true`/`false`)
  * `nil`
  * Numbers
* Arrays and hashes are **mutable**. `[1,2,3,[4,5,6],7]` is an array with some immutable elements, and one mutable element. This could make a difference if you are iterating over elements of an array and changing them as you go.
* Here's a rule of thumb for mutability—if you can pass it into a function and change the object, then it's mutable. Otherwise it's not.
* Think about it: can you imagine something immutable, like `true` or `0` changing because you called some function?

    ```ruby
  variable = false
  crazy_function_that_does_crazy_things!(variable)
  puts variable == false # no function can change its value!
    ```

Exercises:
* What will this code do?

```ruby
array = [1,2,3,4]

def destroy_array!(array)
  array = []
end

puts destroy_array!(array)
puts array
```

* And this code?

```ruby
array = [1,2,3,4]

def double_array(original_array)
  doubled_array = original_array
  (0...original_array.length).each do |index|
    doubled_array << original_array[index]
  end
  doubled_array
end

puts double_array(array)
puts array
```

* What about this?

```ruby
def add_all_up_to_number(number)
  (0..number).each do |value|
    number += value
  end
  number
end

n = 5
puts add_all_up_to_number(n)
puts n
```

### Advanced iteration
* Iterating with complex logic—while loops!
* Looking forward or backward

```ruby
# This function takes a player's shooting record as an array of "miss"ed and
# "made" shots. It prints the appropriate commentary for each shot using the
# following rules:
# second shot made in a row: print "He's heating up"
# third shot made in a row: print "He's on fire"
# fourth through seventh: print "Boom-shaka-laka!"
# The streak is reset if eight shots in a row are made.

def nba_jam(shots)
  current_streak = 0

  shots.each do |shot|
    if shot == "made"
      current_streak += 1
    else
      current_streak = 0
    end

    if current_streak == 2
      puts "He's heating up"
    elsif current_streak == 3
      puts "He's on fire"
    elsif current_streak > 3 && current_streak < 8
      puts "Boom-shaka-laka!"
    elsif current_streak > 8
      current_streak = 0
    end
  end

end

shaqs_shooting_record = ['made', 'made', 'miss', 'made', 'made', 'made', 'made']
nba_jam(shaqs_shooting_record)
# He's heating up
# He's heating up
# He's on fire
# Boom-shaka-laka!
```

Exercises:
  * Write a function called `longest_run_digit(number)` that returns the digit that has the longest run of consecutive repeats in a number. For example, `longest_run_digit(10555223)` should return `5`.

### Nested iteration

* Looping within a loop. First element touches every element, second element touches every element, etc.
* Think like the hands of a clock!
* Beware of edge conditions. Should your two iterators ever be equal? Should they ever be 0? Should they reach the end of the array?
* Generate all pairs
* Look at [bubble sort](https://en.wikipedia.org/wiki/Bubble_sort#/media/File:Bubble-sort-example-300px.gif) and get a feel for how it works.  Pay special attention to the animation.  Pay less attention to the text on the wikipedia page, although you can reference it if you want.  Make sure you go through at least two passes of the whole array when watching the animation.
* Nested iteration is one of the most important concepts you need to handle on the assessment, so we want to give you a lot of practice with it.

Here's an example of nested iteration in code:

![Nested Iteration](./nested-iteration.png)

There's one "until" nested inside of another "until".

```ruby
# This function takes an integer number of minutes and an integer number of
# seconds as input and proceeds to count down, printing the remaining number
# of minutes and seconds in the form m:ss, until the time reaches 0:00.
# Here's sample output for the egg_timer(2, 1):
#
# 2:01
# 2:00
# 1:59
# ...
# 0:01
# 0:00
# Time's up!
def egg_timer(minutes, seconds)

  while minutes >= 0

    while seconds >= 0
      puts "#{minutes}:#{'%02d' % seconds}"
      # sleep 1                               # pauses the function for 1 second.

      seconds -= 1
    end

    seconds = 59
    minutes -= 1
  end

  puts "Time's up!"
end
```

There's one `while` nested inside of another `while`.

```ruby
def color_mixer(colors)
  mixes = []

  colors.each do |first_color|
    colors.each do |second_color|
      mixes << "#{first_color}-#{second_color}" unless first_color == second_color
    end
  end

  mixes
end
color_mixer(["red", "blue", "green"]) # => [ "red-blue", "red-green",
#      "blue-red", "blue-green",
#      "green-red", "green-blue"]
```
There's one `each` nested inside of another `each`.

```ruby
adjectives = ["bawdy", "puny", "rank", "saucy", "yeasty", "surly"]
hyphenated = ["beetle-headed", "elf-skinned", "onion-eyed", "swag-bellied"]
nouns = ["lout", "scut", "strumpet", "foot-licker", "bugbear"]

# This function prints every possible insult using three
# arrays of words as input. Using the three arrays above,
# we can generate Shakespearean insults:
# insult_generator(adjectives, hyphenated, nouns)
# You bawdy, beetle-headed, lout!
# You bawdy, beetle-headed, scut!
# You bawdy, beetle-headed, strumpet!
# ...
# You surly, swag-bellied, foot-licker!
# You surly, swag-bellied, bugbear!
#
def insult_generator(first_adjectives, second_adjectives, nouns)
  first_adjectives.each do |first_word|
    second_adjectives.each do |second_word|
      nouns.each do |third_word|
        puts "You #{first_word}, #{second_word}, #{third_word}!"
      end
    end
  end
end

insult_generator(adjectives, hyphenated, nouns)
```


Exercises:
  * Write a function called `all_word_pairs(string)` that given a string, returns an array of every possible pair of words.
  * Write a function called `any_make_yahtzee?(array)` that given an array, determines whether the concatenation of any two strings makes the string "yahtzee".
    * E.g., with the input `["yah", "car", "build", "tzee"]`, it should return `true`. With the input `["yahtz", "fish", "y"]` it should return false.
  * Put a debugger inside the inner loop of the `color_mixer` function from the reading (just above the line where the colors are being shoveled into the `mixes` array). Run the function using the input: ["beige", "white", "tan"] and write out on a piece of paper what you expect `first_color` and `second_color` to be each time the function pauses at the debugger. Then use the debugger to check your answer before using `c` to move to the next iteration.
  * Write a function called `clock` that cycles through every minute of the day and prints out every half hour.  Include the AM and PM.
    * For example:

```ruby
clock

# => 00:00 AM
# => 00:30 AM
# => 01:30 AM
# ...
# => 11:30 AM
# => 12:00 PM
# => 12:30 PM
# ...
# => 11:00 PM
# => 11:30 PM


```
  * Implement `bubble_sort!` on your own now!
    * On paper, write out in english the process that bubble sort takes. Don't worry about writing code yet.
    * Now take that english (we call that english "pseudocode") and turn it into real code
    * Test it out:

    ```ruby
      array_to_sort = [3, 1, 2]
      bubble_sort!(array_to_sort)
      p array_to_sort # should be [1, 2, 3]
    ```


### Enumerables++

There are lots of crazy and powerful things you can do with advanced enumerable methods. Check out the Ruby documentation on `Enumerable` if you are curious, but here are a few of the more common methods:

* in-line blocks: `do` => `{`, `end` => `}`
* `#select` and `#reject`
* `#count`
* `#reduce`
* `#max_by`
* One-line `is_prime?`

Here's an example that uses `count` with a block to get the number of elements that meet a criteria:
```ruby
# This function takes an array of integers and returns the number of them
# that exceed 85.
def number_of_high_scoring_students(class_percentages)
  class_percentages.count do |percentage|
    percentage > 85
  end
end
number_of_high_scoring_students([55, 100, 35, 75, 90]) # => 2
```

Here's an example that uses `select` and a block to filter an array:
```ruby
# This function takes a paragraph of text as a string and returns an array of
# all the four letter words.
def four_letter_words(paragraph)
  paragraph.split.select do |word|
    word.length == 4
  end
end
marc_antony = "Friends, Romans, countrymen, lend me your ears"
four_letter_words(marc_antony) # => ["lend", "your", "ears"]
```

Here's an example using `reject`, returning the items cause the block to return false.
```ruby
# This function takes a hash in the form { item => quantity }, returning
# an array of the items with a quantity of three or less.
def shopping_list(pantry)
  pantry.reject { |item, quantity| quantity > 3 }.keys
end
my_pantry = {"eggs" => 12, "pies" => 1, "rice" => 3}
shopping_list(my_pantry) # => ["pies", "rice"]
```

This example shows `reduce`, which passes the return value from the previous iteration into the next iteration as the variable `sum`
```ruby
# This function takes an array of numbers and returns the mean (average).
# Note: the average is obtained using integer division.
def average_percentage(class_percentages)
  scores_sum = class_percentages.reduce do |sum, percentage|
    sum + percentage                  # The return value of this block
  end                                 # becomes the sum for the next iteration.

  scores_sum / class_percentages.length
end
average_percentage([55, 100, 35, 75, 90])  # => 71
```

This function uses `max_by` to find the item which causes the block to return the highest value.
```ruby
# This function takes an array of numbers and returns the number that would
# be farthest from +5 on a number line.
def farthest_from_five(numbers)
  numbers.max_by do |number|
    (number - 5).abs
  end
end
farthest_from_five([-4, -6, 0, 6, 12])  # => -6
```


Exercises:
  * Use enumerable methods to add up all the numbers that are not equal to 2 in an array. Do NOT modify the original array.
  * Use the `#max_by` method to find the longest string in an array of strings.
  * Write an `is_prime?` function in one line using enumerable methods.
  * Write a one line function that lists all primes less than or equal to the argument passed in. Use enumerable methods in combination with your `is_prime?` function.


### More array methods

* `reverse`
* `min` and `max`
* `sort`
* `uniq` removes all duplicate elements.
* `shuffle` puts the elements in a random order.

Here's a quick demo of some more array methods:
```ruby
[1, 2, 3].reverse        #=> [3, 2, 1]
[1, 2, 3].min            #=> 1
[1, 2, 3].max            #=> 3
[9, 4, 7].sort           #=> [4, 7, 9]
[1, 1, 2].uniq           #=> [1, 2]
["e", "a", "r"].shuffle  #~> ["r", "a", "e"]
```

Exercises:

  * Write a function called `range_of(array)` which returns the difference between the smallest and the greatest value of the array.
  * Write a function called `greatest_uniq(array)` which returns the greatest unique (non-duplicated) number in the array.
  * Write a function called `greatest_three(array)` which given an unordered array, returns the greatest three values.

### More string methods

* You can multiply strings. `"Ha" * 3` outputs ``"HaHaHa"``
* `reverse` will return a string with all the characters in the opposite order.
* `gsub(this, for_that)` provides search and replace functionality for strings.
* `sub(this, for_that)` replaces only first occurrence
* `empty?` is a Ruby-like way of checking to see if the string equals the empty string: `str == ""`.

```ruby
# This function takes a string and encrypts it by replacing every instance of
# "President" with "Eagle".
def secret_service_encrypt(plaintext)
  plaintext.gsub("President", "Eagle")
end
secret_service_encrypt("The President is in the Presidential suite")
#=> "The Eagle is in the Eagleial suite"
```ruby

The `g` in `gsub` is for global, and it replaces all the matches in the string, while `sub` only replaces the first match.
```
"better".sub("e", "i")      #=> "bitter"
"AAA".gsub("A", "").empty?  #=> true
```

Exercises:

  * Write a function called `lotrify(string)` translates passages from The Hobbit into the Lord of the Rings. It should replace all occurrences of the string "Bilbo" with the string "Frodo".
  * Write an `is_palindrome?(string)` function that checks to see if the string reads the same backwards as it does forwards. It should not count spaces or be case sensitive.
  * Write a function called `longest_palindrome(string)` that given a string, finds the longest substring of that string that is a palindrome.


### Parallel assignment

* Assign multiple variables at the same time with `dog1, dog2 = "Rover", "Spot"`.
* This works even if the values on the right side are in an array, and even if there are more values in that array than we need.

```
names = ["Rover", "Spot", "Clifford"]
dog1, dog2, dog3 = names
# dog1 == "Rover"
# dog2 == "Spot"
# dog3 == "Clifford"

song = "Harder, Better, Faster, Stronger"
song = song.downcase.split(", ")
# song == ["harder", "better", "faster", "stronger"]
daft, punk = song
# daft == "harder"
# punk == "better"
```

* You can swap two variables with parallel assignment. For example, swap the position of two array elements with

```
array[i], array[j] = array[j], array[i]
```

* In other, less convenient programming languages, you need a temporary variable to do this swapping.

Exercise:
  * Go back over your old code and see where you can refactor to use parallel assignment. `reverse!` or `five_sort!` are good candidates.
