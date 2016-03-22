# Lesson Plan

## Instructions

Please do every exercise.

Reference the linked material when you get stuck or need help.

Prioritize doing the exercises (correctly) over doing the readings.  We want you to struggle with problems and then fill in your knowledge.

It's OK to go "I don't understand the question".  That's when you should read the linked material.

## Intro to programming

### Zen and the art of programming

* A computer will always do exactly what you tell it to, no more and no less.
* There's no bullshitting in programming. Your program either works or it doesn't, and no amount of cleverness or importance will change that.

In order to be a great software engineer, there are certain tangental skills that must be cultivated:

* Logical Reasoning
* Numerical Reasoning
* Procedural Reasoning
* Curiosity
* Debugging
* **Patience**

One of the primary goals of the course is to provide you with the a foundation and resources to develop these skills.

### The Complexity of Programming

*The art of programming is the art of organizing complexity, of mastering multitude and avoiding its bastard chaos as effectively as possible.*

-Edsger Dijkstra

Once you start implementing programs of a sufficient complexity, you will find that it is very easy to make mistakes. Unlike computers, the human brain does not always think in perfect logic or arithmetic. The software engineers of the past quickly realized this and started developing techniques and structures to manage the complexity of their programs: variables, good style, abstraction and decomposition, objects and classes. Don't worry if some of those words seem unfamiliar. We will explore them all and more in the course.

## Initial Exercises

* [Terminal Command Cheat Sheet](../terminal-commands.txt)

* [IRB Tutorial](./irb.md)


## Functions

Key concepts:

* The building blocks of all programs
* `def` and `end`
* Function arguments
* Watch your indentation!
* Functions can call other functions

**Note**: When you're writing a function, indent with two spaces, not four.  Python uses four spaces, but ruby uses two spaces.

Also, when you're writing a function, never use single letters for variable names.  Always write out the full name of the variable.

For example, instead of:

```ruby
def add_two_numbers(a, b)
  return a + b
end

```

You should be writing:

```ruby
def add_two_numbers(first_number, second_number)
  return first_number + second_number
end

```

More example functions:

```ruby
def print_out_yo_dawg # this is a function
  puts "yo dawg"
end

def multiply(first_number, second_number) # this is another function
  return first_number * second_number
end

def squared_product(first_number, second_number) # this function calls another function (multiply) inside
  squared_product = multiply(first_number, second_number) * multiply(first_number, second_number)

  return squared_product
end

```

Codecademy link (complete this first if you haven't yet):
* [Functions/ Methods](https://www.codecademy.com/courses/ruby-beginner-en-ET4bU/0/1?curriculum_id=5059f8619189a5000201fbcb)


Exercises:
  * Write a function called `hello_world` will `puts` the string `"Hello world!"` to the screen.
  * Write a function called `print_thrice(number)` that, given a number, will print out the number three times.
  * Write a function called `print_thrice_thrice(number)` that, given a number, will call `print_thrice` with that number three times (for 9 total prints).

## Numbers

Key concepts:

* Mathematical operators
* Integer division (`/`)
* Modulo (`%`)
* `+=`, `-=`, `/=` etc.

[Numbers Bonus Reading](./advanced_conditionals.md)

Codecademy link (complete this first if you haven't yet):
* [Math operators] (https://www.codecademy.com/en/courses/ruby-beginner-en-d1Ylq/0/4?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Write a function called `times_three_and_plus_five(number)` that takes a number, multiplies it by 3, and then adds 5. For example, `times_three_and_plus_five(4)` should output 17.
  * Write a function called `even_or_odd(number)` that prints `"even"` if the number is even, and prints `"odd"` if the number is odd.
  * Write a function called `division_plus_remainder(big_number, small_number)` that finds the number of times `small_number` completely divides into `big_number`, and then adds the remainder that's left over. For example, `divisor_plus_remainder(7, 2)` should equal `4`.
  * Write a function called `is_factor_of(big_number, small_number)` that returns `true` if `small_number` is a factor of `big_number`, and `false` if it is not.

## Booleans and loops

Key concepts:

* Booleans are `true` and `false`.  That's it.
* `while` loops — `while(condition)`, do stuff, `end`
* Conditionals and control flow
  * `elsif` and `else`
* Comparators that produce booleans: `==`, `<`, `>`, `>=`, `<=`

Here are a few code examples that use the key concepts above.

This first example isn't practical--it just prints a bunch of boolean values--but it lets us review comparators:
```ruby
def print_some_comparator_results
  puts 1 == 1 # true
  puts 1 < 1  # false
  puts 1 < 2  # true
  puts 1 >= 2 # false
  puts 2 >= 2 # true
  puts 2 <= 3 # true
end
```

Here's a more practical function that uses a comparator:
```ruby
# This function returns true if the input is odd.
def odd_integer?(integer)
  return integer % 1 == 1
end
```

This function employs a while-loop, which we use to do similar work repeatedly:
```ruby
# This function prints "T-Minus, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, Liftoff!",
# each on a new line.
def countdown
  counter = 10

  puts "T-Minus"

  while counter > 0
    puts counter
    counter -= 1
  end

  puts "Liftoff!"
end
```

Here's a more complicated function that combines a while-loop with if-elsif-else branching:
```ruby
# This function prints:
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# I can't stop this feeling...
def blue_swede_intro
  beat = 0
  bar = 0

  while bar < 4
    if beat % 2 == 0
      print "Ooga-" #print is like puts, but it doesn't make a newline afterward
    elsif beat == 1
      print "Chaka "
    else
      puts "Ooga"
    end

    if beat == 3
      beat = 0
      bar += 1
    else
      beat += 1
    end
  end

  puts "I can't stop this feeling..."
end
```

Codecademy links (complete these first if you haven't yet):
* [While loop] (https://www.codecademy.com/courses/ruby-beginner-en-XYcN1/0/1?curriculum_id=5059f8619189a5000201fbcb)
* [Conditionals] (https://www.codecademy.com/courses/ruby-beginner-en-NFCZ7/0/2?curriculum_id=5059f8619189a5000201fbcb)
* [Comparators] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/1/1?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Write a `while` loop that prints out all the numbers from 1 to 25 inclusive.
  * Write a function called `print_up_to(number)` that given a number, prints out all the numbers from 1 to that number, inclusive. It should use a `while` loop internally.
  * Write a function called `print_factors(number)` that prints all of the factors of a number, including 1 and the number itself.
    * Hint: use your `is_factor_of(big_number, small_number)` function.

## Implicit and explicit returns

Key concepts:

* `return` jumps all the way out of the function

The code example below determines whether a number is a power of 2 (`2`, `4`, `8`, `16`, ... `2**n`).

For all powers of two, we should be able to divide them in half over and over and eventually get 1. This function takes a number and keeps dividing it in half until it reaches one. If the function gets to an odd number before reaching one, it knows right away that it is not a power of two, so it uses an explicit return to stop the function and return false.
```ruby
# This function takes an integer input and returns whether it's a power of two.
def silly_power_of_two?(number)

  while number > 1
    if number % 2 == 1        # return false if the number is not evenly
      return false            # divisible by two.
    end

    number /= 2               # divide the number by two.
  end

  number == 1                 # implicitly return the result of the comparator
end
```

Exercise:
  * Write a function `largest_factor(number)` that returns the largest factor of a number. Adapt your `print_factors` method to use a `while` loop starting at `number - 1`, and return immediately once you find a number that's a factor.
  * Write a function `is_prime?(number)` that returns a boolean depending on whether the number is prime. A reminder: a prime number only has two factors: 1 and itself.
    * Once you've written it, see if you can use an early `return` on numbers that you know for sure aren't prime, without having to check every possible factor.


## Advanced Conditionals

Key concepts:
* `while` vs. `until`
* `if` vs. `unless`
* Logical operators (`&&` = and, `||` = or, `!` = not)
* Parenthesization
* Truth tables

[Advanced Conditionals Bonus Reading](./advanced_conditionals.md)

We can make our code easier to read by replacing any "`if`-not" conditions with `unless` and "`while`-not" with `until`
```ruby
# This function takes a numeric input and returns true if it's 0 or greater.
def positive?(number)
  number >= 0
end

positive?(-1) # => false
positive?(0)  # => true
positive?(1)  # => true

# This function takes a numeric input and returns its absolute value.
def absolute_value(number)
  if !positive?(number)
    number *= -1
  end

  number
end

absolute_value(-4) # => 4
absolute_value(24) # => 24

# Here's the same function using unless instead of if-not
def absolute_value(number)
  unless positive?(number)
    number *= -1
  end

  number
end

absolute_value(-3) # => 3
absolute_value(13) # => 13
```

We can rewrite our silly_power_of_two? function from before, using what we've learned.
```ruby
# This function takes an integer input and returns true if it's an odd number.
def odd?(number)
  number % 2 == 1
end

odd?(2) # => false
odd?(3) # => true

# This function takes an integer input and returns true if it's a power of 2.
def silly_power_of_two?(number)

  until number <= 1 || odd?(number)
    number /= 2               # divide the number by two.
  end

  number == 1
end

silly_power_of_two?(16) # => true
silly_power_of_two?(12) # => false
```

Codecademy links (complete these first if you haven't yet):
* [Until loop] (https://www.codecademy.com/en/courses/ruby-beginner-en-XYcN1/0/3?curriculum_id=5059f8619189a5000201fbcb)
* [Unless] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/3/3?curriculum_id=5059f8619189a5000201fbcb)
* [Logical Operators] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/2/1?curriculum_id=5059f8619189a5000201fbcb)


Exercise:
  * Complete these truth tables. Write it out on pencil and paper in your notebook.

x  | y   | z   | x && y &#124;&#124; z |  x && (y &#124;&#124; z)
-----|-----|-----|-----------------------|--------------------------
true |true |false|                       |
true |false|false|                       |
false|true |false|                       |
false|false|false|                       |


  x  | y   | z   | x &#124;&#124; y && z |  x &#124;&#124; (y && z)
-----|-----|-----|-----------------------|-------------------------
true |true |false|                       |
true |false|false|                       |
false|true |false|                       |
false|false|false|                       |
  * Using pen and paper, see if you can figure out the value of these conditionals:
    1. `False || (True || False)`
    2. `(True && False) || False`
    3. `(True || False) && (False && True)`
    4. `3 == 5 || 4 % 2 > 2`
    5. `6 + 4 <= 10 && 5 != 6`
    6. `(6 != 6 || (1 == 10 % 3)) && (3 + 5 < 6)`
  * Write an `until` loop that prints out all of the numbers that are less than 20 and are not divisible by 6.

## Strings

Key concepts:

* String methods
  * `#length`
  * `#upcase`
  * `#downcase`
  * `+`
  * `#{}` interpolation
  * `string[index]` to look up the character at an index
  * `string[index] = letter` to assign a character at an index
  * `#split(character_to_split_on)` to split a string into an array of parts


Here's a quick refresher on a few String methods:
```ruby
"Hey you!".length                                     #=> 8
"answer to life the universe and everything".length   #=> 42
"Hey!".upcase                                         #=> "HEY!"
"Hey!".downcase                                       #=> "hey!"
"bar" + "it" + "one"                                  #=> "baritone"
"#{5**2} or #{4 + 2} to #{8 / 2}"                     #=> "25 or 6 to 4"
"you"[2]                                              #=> "u"
movie_title = "Apocalypse Now"                        #=> "Apocalypse Now"
movie_title[11] = "C"                                 #=> "C"
movie_title                                           #=> "Apocalypse Cow"
"/Users/dak/clients/empire/projects/death_star.tar".split("/")
#=> ["", "Users", "dak", "clients", "empire", "projects", "death_star.tar"]
```


Codecademy link (complete this first if you haven't yet):
  * [String methods](https://www.codecademy.com/en/courses/ruby-beginner-en-d1Ylq/1/2?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Crack open irb and make a sample string.  Play around with each of the above methods on the string.
  * Write a function `capitalize(string)` that takes in a string, capitalizes the first letter of the string, and returns the string.
  * Write a function `shout_then_whisper(string1, string2)` that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this:
    * `shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"`

## Arrays

Key Concepts:
  * Array methods
    * `#length` or `#size` or `#count`
    * `array[index]`
    * `array[index] = val`
    * `#first`
    * `#last`
    * `#include?(value)`
    * `#push(value)` to add a value onto the end (also `<<`)
    * `#pop` to pop off a value from the end
    * `#unshift(value)` to stick a value onto the beginning
    * `#shift` to shift off a value from the beginning
    * `#join(separator)` to join an array of strings, separated by a delimiter


Here's a quick refresher on a few Array methods:
```ruby
["Anakin", "Luke", "Leia"].length    #=> 3
[].size                              #=> 0
[0, 1, 2].count                      #=> 3
["ice", "ice", "baby"].count("ice")  #=> 2
droids = ["C-3PO", "R2-D2", "MSE-6"] #=> ["C-3PO", "R2-D2", "MSE-6"]
droids[0]                            #=> "C-3PO"
droids[2]                            #=> "MSE-6"
droids[-1]                           #=> "MSE-6"
droids[-3] = "BB-8"                  #=> "BB-8"
droids                               #=> ["BB-8", "R2-D2", "MSE-6"]
droids.first                         #=> "BB-8"
droids.last                          #=> "MSE-6"
droids.include?("R2-D2")             #=> true
droids.include?("Chewie")            #=> false
```

Here's how we can use `push` (`<<`), `pop`, `unshift`, and `shift`
```ruby
numerals = ["IV", "V"]               #=> ["IV", "V"]
numerals.push("VI")                  #=> ["IV", "V", "VI"]
numerals << "I"                      #=> ["IV", "V", "VI", "I"]
one = numerals.pop                   #=> "I"
numerals                             #=> ["IV", "V", "VI"]
numerals.unshift(one)                #=> ["I", "IV", "V", "VI"]
one = numerals.shift                 #=> "I"
numerals                             #=> ["IV", "V", "VI"]
["H", "d", "r"].join("o")            #=> "Hodor"
```

Codecademy link (complete this first if you haven't yet):
  * [Arrays](https://www.codecademy.com/courses/ruby-beginner-en-F3loB/0/1?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Write a function `first_n_evens(n)` that returns an array of the first N many even numbers, starting from 0.
  * Write a function `reverse(array)` that reverses an array in-place.
  * Write a function `rotate(array, shift)` that given an array, rotates it in-place by the shift amount. E.g., `rotate([1, 2, 3, 4], 2)` should produce `[3, 4, 1, 2]`. `rotate([5, 6, 7], -1)` should produce `[6, 7, 5]`.
    * Hint: a combination of `#shift`, `#unshift`, `#pop` and `#push` should come in handy here.
  * Write a function `all_uniqs(array1, array2)` that given two arrays, produces a new array of only elements unique to `array1` and elements unique to `array2`. E.g., `all_uniqs([2, 5, 7], [1, 2, 7])` should return `[1, 5]`

## Iteration

Key concepts:

* Iteration and blocks (`each`)
* Blocks — `do` `|argument1, argument2|`, then code stuff, then `end`
* `array.each_with_index` yields `|element, index|`
* `string.chars.each_with_index` gives you the same


Here's a basic example of iteration using `each`:
```ruby
# This function prints out several delicious shrimp dishes.
# Here is a sample output:
#
# Shrimp kabobs
# Shrimp creole
# Shrimp gumbo
# Shrimp soup
# Shrimp stew
# Shrimp burger
# Shrimp sandwich
# That - that's about it.
#
def fruit_of_the_sea
  dishes = ["kabobs", "creole", "gumbo", "soup", "stew", "burger", "sandwich"]

  dishes.each do |dish|
    puts "Shrimp " + dish
  end

  puts "That - that's about it."
end
```

Here's a more interesting example using `each_with_index`:
```ruby
# This function prints out even-indexed elements of an array of famous Stevens.
# It returns the whole array. Here is a sample output:
#
# Steven Spielberg
# Steven McQueen
# Steven Tyler
#
def even_stevens
  surnames = ["Spielberg", "Seagal", "McQueen", "Fernandez", "Tyler", "Gerrard"]

  surnames.each_with_index do |surname, index|
    if index % 2 == 0
      puts "Steven " + surname
    end
  end
end
```

This is a more practical `each_with_index` example:
```ruby
# This function takes a force and a distance as input and returns a torque.
def torque(force, distance)
  force * distance
end

torque(5, -2) # => -10

# This function takes an array of forces and the index of the pivot point. It
# returns the sum of torques around that pivot point.
def net_torque(forces, pivot_index)
  net_torque = 0

  forces.each_with_index do |force, index|
    distance = index - pivot_index
    net_torque += torque(force, distance)
  end

  net_torque
end
loaded_beam = [4, -1, 0, 1, 3]
net_torque(loaded_beam, 1) # => 7
net_torque(loaded_beam, 2) # => 0
net_torque(loaded_beam, 3) # => -7
```

This example uses `chars` to turn a string into an array of characters, so it can iterate over each character:
```ruby
# This function takes a team_name and prints a cheer for that team. Here is a
# sample output for the input "ducks":
#
# Give me a D!
# Give me a U!
# Give me a C!
# Give me a K!
# Give me a S!
# Go ducks!
#
def cheer_squad(team_name)
  team_name.chars.each do |letter|
    puts "Give me a " + letter.upcase + "!"
  end

  puts "Go " + team_name + "!"
end
```

Codecademy link (complete this first if you haven't yet):
  * [Iterators and Blocks](https://www.codecademy.com/en/courses/ruby-beginner-en-XYcN1/2/1?curriculum_id=5059f8619189a5000201fbcb)

Exercises:
  * Write a function called `vowels(string)` that returns an array of every vowel in the string.
    * Use the `String#chars` method, which returns an array of characters. Then use an `each` over the chars.
  * Write a function called `odd_elements(array)` that prints out every other element (those with odd indices). Use `each_with_index`.
  * Write a function called `zip_with_indices(array)` that given an array, converts each element into a tuple (array with two items) with its index.
    * E.g., `zip_with_indices([3, 20, 8]) == [[3, 0], [20, 1], [8, 2]]`

## `nil`

* Everything returns something in Ruby, including control flow
* Specifically, it often returns `nil`
* Chances are, if you're getting a `nil`, you're doing something wrong

Here's an example of code that implicitly returns `nil`, because the last thing to get evaluated in the function (`puts`), returns `nil`:
```ruby
# This function takes a catchphrase as an argument, prints it, and returns nil.
def print_catchphrase(catchphrase)
  puts catchphrase
end

return_value = print_catchphrase("Bazinga!") #=> nil
```

Here are two functions that try to decrease a quantity by five. `if`-`elsif` branches will return the value of the branch that gets evaluated. If no branch is evaluated (none of the conditions were true), `nil` is returned:
```ruby
# This function takes an integer and if the integer is greater than or equal to
# five, it returns five less than the integer. Otherwise, it returns nil.
def take_five(initial_quantity)
  if initial_quantity >= 5
    initial_quantity - 5
  end
end

take_five(9) #=> 4
take_five(2) #=> nil
```
In the example above, if the initial_quantity was less than five, the function returned nil because the `if` condition evaluated to false.

In this second example, the method adds an `elsif` branch so it can return the initial_quantity again if it was less than five.
```ruby
# This function takes an integer argument. If the integer is greater than or
# equal to five, it returns five less than the integer. Otherwise, if the
# integer is greater than zero, it returns the integer itself. Integer inputs
# that are not greater than zero cause the function to return nil.
def try_to_take_five(initial_quantity)
  if initial_quantity >= 5
    initial_quantity - 5
  elsif initial_quantity > 0
    initial_quantity
  end
end

try_to_take_five(9) #=> 4
try_to_take_five(2) #=> 2
try_to_take_five(0) #=> nil
```

## Output

Key concepts:

* `p` and `puts`
  * `p` returns the thing you're printing, `puts` returns `nil`

`puts` and `p` are both methods that take an argument and print it. To make our
code more readable, we usually omit the parentheses.
```ruby
# This function prints four phrases, collecting the return value for each. These
# values are returned as an array.
def collect_p_and_puts_return_values
  first_puts = puts "This is shorthand"
  second_puts = puts("for this.")

  first_p = p "The same is true"
  second_p = p("for p.")

  return [first_puts, second_puts, first_p, second_p]
end

collect_p_and_puts_return_values # => [nil, nil, "The same is true", "for p."]
```

Exercises:

* In irb, make a sample array. `puts` the array. Then `p` the array.  See the difference?

## Advanced iteration

Key concepts:

* `break`
* `next`

`break` and `next` give us some flexibility when using looping constructs. Both `break` and `next` skip over the rest of the code within an iteration of a loop. `next` will then run the loop on the next element in the collection, while `break` stops the loop completely.
```ruby
# This function takes an array of numbers that are all greater than or equal to
# zero. It then returns the smallest number.
def smallest_nonnegative_number(numbers)
  current_smallest = numbers.first

  numbers.each do |number|
    if number > current_smallest  # If the number is bigger than the current
      next                        # smallest number, skip to the next number
    end

    current_smallest = number     # Update the current_smallest

    if current_smallest == 0      # 0 is the smallest possible non-negative
      break                       # number, so if we find a 0, break out of the
    end                           # loop.
  end

  current_smallest
end

some_positive_numbers = [7, 4, 0, 5, 1]             # => [7, 4, 0, 5, 1]
smallest_nonnegative_number(some_positive_numbers)  # => 0
```

* Exercises:
  * Adapt your `odd_elems(array)` function to use `next` to skip over every even-indexed element.
  * Write a function `first_n_primes(n)` that returns the first N many prime numbers. You'll want to use your `is_prime?` function that you wrote earlier. Use `break` in your function.


## Debugging

You might notice that it can be hard to catch the errors you make.  These errors, like misspellings, or being off by one, might feel "silly" or "stupid", but professional software engineers make the same mistakes.  The key is catching them quickly.

The most effective way to catch your errors is to use the debugger.  You had a small taste of this in the pre-curriculum.

The way to put a debugger in your code: stick `byebug` in the middle of a function and run your code.  Make sure you `require 'byebug'` at the top of your file.  For example:

![Byebug](./byebug.png)

In your interviews, we'll be asking you to play the role of debugger (knowing what every variable is at every point in time in a function), so it's important that you know how to use a debugger well.  Debuggers are arguably the most useful tool you can have while learning to program.

For your final assessment, it will be very helpful to know how to use the debugger to fix your errors quickly.

The three most important commands in `byebug`:

- `n` (or `next`): Goes to the next line
- `c` (or `continue`): Goes to the next place byebug lives in the code
- Printing out variable names: `elephants`, `grandma_age`, etc.  You type out the variable name and press enter.

Take a look at how you can use byebug while you're running your code.

![Byebug In Action](./byebug-in-action.gif)

You can find out more about byebug in the "Byebug Commands" section [here][byebug]. Feel free to play around with new commands.

[byebug]: https://github.com/deivid-rodriguez/byebug

* Exercises:

  * Copy and paste the code below into a file.

```ruby
  def company_performance(quarterly_projections, quarterly_profits)
    times_we_beat_projection = 0

    quarterly_projections.each_with_index do |projection, quarter|
      profit = quarterly_profits[quarter]

      if profit > projection
        times_we_beat_projection += 1
      end
    end

    return times_we_beat_projection

  end


  apple_projections = [10000, 25000, 8000, 30000]
  apple_profits = [5000, 26000, 3000, 50000]

  p company_performance(apple_projections, apple_profits)

```

  Run the file.  With pen and paper, write down what `projection`, `profit` and `quarter` are at every iteration of the loop.

  Play around with `n` and `c` in byebug and see how you can jump to the next iteration of a loop.  Remember to `require 'byebug'` at the top if you haven't.

  Move byebug inside and outside the if statement and rerun your code.  How many times should you hit byebug if it's inside the if statement?

  * Copy and paste the code below into a file.

```ruby
def identify_sheep
  sheep = ["Gary", "Adam", "Jacob", "Sam", "Toby", "Billy", "Mandy", "Guinness"]

  index = 0

  while index <= sheep.length
    individual_sheep = sheep[index]
    sheep_with_exclamation_point = individual_sheep + "!"
    puts "This sheep is named #{sheep_with_exclamation_point}"
    index += 1
  end

end

identify_sheep

```


  Run the file and see the error that pops up.

  Find the top line in the list of error lines (the stacktrace) that looks familiar.  Put a debugger (`byebug`) on the line right above the line with the error.  Print out all the variables that are on the line right below your debugger.

  Try to figure out where the error might be coming from and fix it.



## Naming your variables and refactoring

Key concepts:

* Be as expressive and specific as possible
* Break down operations into multiple named steps
* Make your code read like English!

* Exercises:
  * Refactor this tip-calculating function. Try to rename the variables and to make it more expressive, and take advantage of early returns.

```ruby
def ct(x)
  r = 0
  if x < 5
    r = 1
  elsif x < 10
    r = x * 0.18
  else
    r = x * 0.13
  end
  r
end
```

  * Refactor this function that returns the Nth biggest prime number. Don't start by trying to understand what it's doing—first just start renaming the variables. Then, once you see what it's doing, make it use your own `is_prime?` function to pull out some of the complexity and make it more readable!
```ruby
def pr(x)
  c = 0
  n = 2
  while true
    i = 2
    f = true
    while i < n
      if n % i == 0
        f = false
        break
      end
      i += 1
    end
    if f
      c += 1
      if c == x
        return n
      end
    end
    n += 1
  end
end
```
