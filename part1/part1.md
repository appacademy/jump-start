 # Lesson Plan

## Instructions

Please read the bullet points, then do every exercise.  You can reference the linked material if you ever need help.

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

##

* The terminal
* IRB

```bash
$ irb
irb(main):001:0> 1 + 1
=> 2
irb(main):002:0> quit
$ _
```

## Functions

Key concepts:

* The building blocks of all programs
* `def` and `end`
* Function arguments
* Watch your indentation!
* Functions can call other functions

Do the codecademy ruby track on functions if you haven't yet.

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

Exercises:
  * Write a function called `hello_world` that will `puts` the string `"Hello world!"` to the screen.
  * Write a function called `print_thrice(num)` that, given a number, will print out the number three times.
  * Write a function called `print_thrice_thrice(num)` that, given a number, will call `print_thrice` with that number three times (for 9 total prints).

## Numbers

Key concepts:

* Mathematical operators
* Integer division (`/`)
* Modulo (`%`)
* `+=`, `-=`, `/=` etc.

Ruby can do all the usual arithmetic a calculator would do:
```bash
$ irb
irb(main):001:0> 40 + 2 # Addition
=> 42
irb(main):002:0> 49 - 7 # Subtraction
=> 42
irb(main):003:0> 2 * 3  # Multiplication
=> 6
irb(main):004:0> 6 / 2  # Division
=> 3
irb(main):005:0> 2 ** 3 # Exponentiation
=> 8
```
```ruby
$ def print_some_arithmetic_results
  puts 40 + 2 # Addition:       will print 42
  puts 49 - 7 # Subtraction:    will print 42
  puts 2 * 3  # Multiplication: will print 6
  puts 6 / 2  # Division:       will print 3
  puts 2**3   # Exponentiation: will print 8
end
```

Notice all of the numbers above are integers (they don't have decimal points).

Computers store integers and floating-point numbers (like `2.5` or `3.333...`) in different ways.

When we do math in Ruby, our answer will be an integer if all of the inputs were integers. To make this work, ruby uses integer division, ignoring any fractional components (remainders) in the answer:
```bash
irb(main):006:0> 6 / 2
=> 3
irb(main):007:0> 7 / 2
=> 3
irb(main):008:0> 8 / 2
=> 4
```
```ruby
def print_some_integer_division_results
  puts 6 / 2 # will print 3
  puts 7 / 2 # will print 3, ignoring the remainder of 1
  puts 8 / 2 # will print 4
end
```

If we are interested in the fractional component of division, we can use the modulo operator:
```bash
irb(main):009:0> 6 % 2
=> 0
irb(main):010:0> 7 % 2
=> 1
irb(main):011:0> 8 % 2
=> 0
```
```ruby
def print_some_modulo_results
  puts 6 % 2 # will print 0, 6 divides evenly by 2
  puts 7 % 2 # will print 1, there is a remainder of 1 when 7 is divided by 2
  puts 8 % 2 # will print 0, there is no remainder when 8 is divided by 2
end
```

To force a floating-point answer, we can make one of our inputs a float:
```bash
irb(main):012:0> 7 / 2.0
=> 3.5
irb(main):013:0> 7.0 / 2
=> 3.5
```
```ruby
def print_some_more_division_results
  puts 7.0 / 2 # will print 3.5
  puts 7 / 2.0 # will print 3.5
end
```

Ruby has a nice shorthand for combining arithmetic with variable assignment.
```bash
irb(main):014:0> number = 1
=> 1
irb(main):015:0> number
=> 1
irb(main):016:0> number += 2
=> 3
irb(main):017:0> number
=> 3
irb(main):018:0> number -= 1
=> 2
irb(main):019:0> number
=> 2
irb(main):020:0> number *= 3
=> 6
irb(main):021:0> number /= 2
=> 3
```

Here are two functions that make use of the shorthand.
```ruby
def number_doubler(number)
  number *= 2 # shorthand for: number = number * 2
  return number
end

def next_smallest_integer(integer)
  integer -= 1 # shorthand for: integer = integer - 1
  return integer
end
```
 Long Expression                  | Shorthand
----------------------------------|-----------
 `number = number + 1`            | `number += 1`  
 `number = number - 2`            | `number -= 2`  
 `number = number * other_number` | `number *= other_number`  
 `number = number / 3`            | `number /= 3`
 **Note**: There are many valid shorthand operators, but these are the most common.

Exercises:
  * Write a function called `times_three_and_plus_five(num)` that takes a number, multiplies it by 3, and then adds 5. For example, `times_three_and_plus_five(4)` should output 17.
  * Write a function called `even_or_odd(num)` that prints `"even"` if the number is even, and prints `"odd"` if the number is odd.
  * Write a function called `division_plus_remainder(big_num, small_num)` that finds the number of times `small_num` completely divides into `big_num`, and then adds the remainder that's left over. For example, `divisor_plus_remainder(7, 2)` should equal `4`.
  * Write a function called `is_factor_of(big_num, small_num)` that returns `true` if `small_num` is a factor of `big_num`, and `false` if it is not.

## Booleans and loops

Key concepts:

* Booleans are `true` and `false`.  That's it.
* `while` loops — `while(condition)`, do stuff, `end`
* Conditionals and control flow
  * `elsif` and `else`
* Comparators that produce booleans: `==`, `<`, `>`, `>=`, `<=`

```ruby
# This function returns true if the input is odd.
def odd_integer?(integer)
  return integer % 1 == 1
end
```
```ruby
def print_some_comparator_results
  puts 1 == 1 # true
  puts 1 < 1 # false
  puts 1 < 2 # true
  puts 1 >= 2 # false
  puts 2 >= 2 # true
  puts 2 <= 3 # true
end
```

```ruby
# This function prints "10, 9, 8, 7, 6, 5, 4, 3, 2, 1, Liftoff!" each on a
# new line.
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

Exercises:
  * Write a `while` loop that prints out all the numbers from 1 to 25 inclusive.
  * Write a function called `print_up_to(num)` that given a number, prints out all the numbers from 1 to that number, inclusive. It should use a `while` loop internally.
  * Write a function called `print_factors(num)` that prints all of the factors of a number, including 1 and the number itself.
    * Hint: use your `is_factor_of(big_num, small_num)` function.

## Implicit and explicit returns

Key concepts:

* `return` jumps all the way out of the function

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
  * Write a function `largest_factor(num)` that returns the largest factor of a number. Adapt your `print_factors` method to use a `while` loop starting at `num - 1`, and return immediately once you find a number that's a factor.
  * Write a function `is_prime?(num)` that returns a boolean depending on whether the number is prime. A reminder: a prime number only has two factors: 1 and itself.
    * Once you've written it, see if you can use an early `return` on numbers that you know for sure aren't prime, without having to check every possible factor.


## Advanced Conditionals

Key concepts:

* `if` vs. `unless`
* Logical operators (`&&` = and, `||` = or, `!` = not)
* Parenthesization
* Truth tables

Ruby's logical operators allow us to manipulate boolean values.

The **not** operator (`!`) for boolean values works like a negative sign does for numbers. It returns the opposite of the value directly to its right:
```ruby
def print_some_not_results
  puts !true    # will print false, because it's the opposite of true
  puts !false   # will print true, because it's the opposite of false
end
```

There is also one more comparator we didn't introduce earlier, the not-equal comparator, `!=`:
```ruby
def print_more_not_results
  puts 1 != 1   # will print false
  puts 1 != 2   # will print true
end
```

The **and** operator (`&&`) combines two boolean values. If *both* of them are true, it evaluates to true. If either or both of them are false, it evaluates to false:
```ruby
def print_some_and_results
  puts true && true     # will print true
  puts true && false    # will print false
  puts false && true    # will print false
  puts false && false   # will print false
end
```

The **or** operator (`||`) evaluates to true if *one or both* of the boolean values is true. It only evaluates to false if both of the booleans are false:
```ruby
def print_some_or_results
  puts true || true     # will print true
  puts true || false    # will print true
  puts false || true    # will print true
  puts false || false   # will print false
end
```

We can use a truth table to summarize all the examples above:

`boolean_one` | `boolean_two` | `!boolean_one` | `boolean_one && boolean_two` | `boolean_one` &#124;&#124; `boolean_two`
------------|-------------|--------------|----------------------------|-------------------------------------
`true`        | `true`        | `false`        | `true`                       | `true`
`true`        | `false`       | `false`        | `false`                      | `true`
`false`       | `true`        | `true`         | `false`                      | `true`
`false`       | `false`       | `true`         | `false`                      | `false`


In Ruby, operators are evaluated in this order:
- `!` (**not**)
- `&&` (**and**)
- `||` (**or**)
```ruby
def print_not_precedence_results
  puts !false && false       # prints false. !false is evaluated first, then &&
end
```

Ruby evaluates logical expressions left-to-right.

The rules of logic allow for "short-circuit" evaluation. This means we don't have to bother checking the right-hand side of a logical expression for both of the following situations:
 - `true  || (anything)` evaluates to `true` no matter what the right-hand side is.
 - `false && (anything)` evaluates to `false` no matter what the right-hand side is.

Ruby uses short-circuit evaluation, so it will not evaluate the right-hand side of a logical expression in either of the cases above.

Let's simplify a complicated expression:
```ruby
!true && (1 < 2) || true  # First we'll evaluate the not operators
false && (1 < 2) || true  # Now we evaluate the and operator
      false      || true  # We see false && (anything) which evaluates to false.
                          # NOTE: Ruby never evaluates (1 < 2)
          true            # Lastly we evaluate the or operator
```

and one more:
```ruby
false && true || true && true || true && false # First we evaluate the &&'s
    false     || true && true || true && false # short-circuited to false
    false     || true && true || true && false # evaluated to true
    false     ||     true     ||     false      # evaluated to false. Now the ||s
             true             ||     false     # evaluated to true
                             true              # short-circuited to true
```

When we combine multiple logical operators, we should use parentheses to ensure the operations occur in the expected order and to make them easier to read:

```ruby
def print_some_combined_results
  puts (true || true) && false    # will print false
  puts true || (true && false)    # will print true
  puts true || true && false      # will print true, but is not easy to read

  puts !(false || true)            # will print false
  puts (!false) || true            # will print true
  puts !false || true              # will print true, but is not easy to read
end
```

We can make our code even easier to read by replacing any "`if`-not" conditions with `unless` and "`while`-not" with `until`
```ruby
# This function takes a numeric input and returns its absolute value.
def absolute_value(number)
  if !(number >= 0)
    number *= -1
  end

  number
end

# Here's the same function using unless instead of if-not
def absolute_value(number)
  unless number >= 0
    number *= -1
  end

  number
end
```

We can rewrite our silly_power_of_two? function from before, using what we've learned.
```ruby
def silly_power_of_two?(number)

  until number <= 1 || number % 2 == 1    
    number /= 2               # divide the number by two.
  end

  number == 1
end
```

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
    1. `F || (T || F)`
    2. `(T && F) || F`
    3. `(T || F) && (F && T)`
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
  * `string[idx]` to look up the character at an index
  * `string[idx] = letter` to assign a character at an index
  * `#split(char_to_split_on)` to split a string into an array of parts

```ruby
"Hey you!".length                                     #=> 8
"answer to life the universe and everything".length   #=> 42
"Hey!".upcase                                         #=> "HEY!"
"Hey!".downcase                                       #=> "hey!"
"bar" + "it" + "one"                                  #=> "baritone"
"#{5**2} or #{4 + 2} to #{8 / 2}"                     #=> "25 or 6 to 4"
"you"[2]                                              #=> "u"
movie_title = "Apocalypse Now"                        #=> "Apocalypse Now"
movie_title[12] = "C"                                 #=> "C"
movie_title                                           #=> "Apocalypse Cow"
"/Users/dak/clients/empire/projects/death_star.tar".split("/")
#=> ["", "Users", "dak", "clients", "empire", "projects", "death_star.tar"]
```


* Exercises:
  * Crack open irb and make a sample string.  Play around with each of the above methods on the string.
  * Write a function `capitalize(str)` that takes in a string, capitalizes the first letter of the string, and returns the string.
  * Write a function `shout_then_whisper(str1, str2)` that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this:
    * `shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"`

## Arrays
* Array methods
  * `#length` or `#size` or `#count`
  * `arr[idx]`
  * `arr[idx] = val`
  * `#first`
  * `#last`
  * `#include?(val)`
  * `#push(val)` to add a value onto the end (also `<<`)
  * `#pop` to pop off a value from the end
  * `#unshift(val)` to stick a value onto the beginning
  * `#shift` to shift off a value from the beginning
  * `#join(separator)` to join an array of strings, separated by a delimiter

```ruby
["Anakin", "Luke", "Leia"].length    #=> 3
[].size                              #=> 0
[0, 1, 2, 3, 4, 5].count             #=> 5
["ice", "ice", "baby"].count("ice")  #=> 2
droids = ["C-3PO", "R2-D2", "MSE-6"] #=> ["C-3PO", "R2-D2", MSE-6"]
droids[0]                            #=> "C-3PO"
droids[2]                            #=> "MSE-6"
droids[-1]                           #=> "MSE-6"
droids[-3] = "BB-8"                  #=> "BB-8"
droids                               #=> ["BB-8", "R2-D2", MSE-6"]
droids.first                         #=> "BB-8"
droids.last                          #=> "MSE-6"
droids.include?("R2-D2")             #=> true
droids.include?("Chewie")            #=> false
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

* Exercises:
  * Write a function `first_n_evens(n)` that returns an array of the first N many even numbers, starting from 0.
  * Write a function `reverse(arr)` that reverses an array in-place.
  * Write a function `rotate(arr, shift)` that given an array, rotates it in-place by the shift amount. E.g., `rotate([1, 2, 3, 4], 2)` should produce `[3, 4, 1, 2]`. `rotate([5, 6, 7], -1)` should produce `[6, 7, 5]`.
    * Hint: a combination of `#shift`, `#unshift`, `#pop` and `#push` should come in handy here.
  * Write a function `all_uniqs(arr1, arr2)` that given two arrays, produces a new array of only elements unique to `arr1` and elements unique to `arr2`. E.g., `all_uniqs([2, 5, 7], [1, 2, 7])` should return `[1, 5]`

## Iteration

Key concepts:

* Iteration and blocks (`each`)
* Blocks — `do` `|arg1, arg2|`, then code stuff, then `end`
* `array.each_with_index` yields `|el, i|`
* `string.chars.each_with_index` gives you the same

```ruby
def fruit_of_the_sea
  dishes = ["kabobs", "creole", "gumbo", "soup", "stew", "burger", "sandwich"]

  dishes.each do |dish|
    puts "Shrimp " + dish
  end

  puts "That - that's about it."
end

def even_stevens
  surnames = ["Spielberg", "Seagal", "McQueen", "Fernandez", "Tyler", "Gerrard"]

  surnames.each_with_index do |surname, idx|
    if idx % 2 == 0
      puts "Steven " + surname
    end
  end
end

def net_torque(forces, pivot_idx)
  net_torque = 0

  forces.each_with_index do |force, idx|
    distance = pivot_idx - idx
    net_torque += force * distance
  end

  net_torque
end

def cheer_squad(team_name)
  team_name.chars.each do |letter|
    puts "Give me a " + letter.upcase + "!"
  end

  puts "Go " + team_name + "!"
end
```



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

```ruby
def print_catchphrase(catchphrase)
  puts catchphrase
end

return_value = print_catchphrase("Bazinga!") #=> nil


def take_five(initial_quantity)
  if initial_quantity >= 5
    initial_quantity - 5
  end
end

take_five(9) #=> 4
take_five(2) #=> nil

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
puts "This is shorthand"  #=> nil
puts("for this.")         #=> nil
p "The same is true"      #=> "The same is true"
p("for p.")               #=> "for p."
```

Exercises:

* In irb, make a sample array. `puts` the array. Then `p` the array.  See the difference?

## Advanced iteration

Key concepts:

* `break`
* `next`

`break` and `next` give us some flexibility when using looping constructs. Both `break` and `next` skip over the rest of the code within an interation of a loop. `next` will then run the loop on the next element in the collection, while `break` stops the loop completely.
```ruby
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
```

* Exercises:
  * Adapt your `odd_elems(arr)` function to use `next` to skip over every even-indexed element.
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

  i = 0

  while i <= sheep.length
    individual_sheep = sheep[i]
    sheep_with_exclamation_point = individual_sheep + "!"
    puts "This sheep is named #{sheep_with_exclamation_point}"
    i += 1
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
