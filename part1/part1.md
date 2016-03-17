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

## Functions
* The building blocks of all programs
* `def` and `end`
* Function arguments
* Watch your indentation!
* Functions can call other functions

Exercises:
  * Write a function called `hello_world` will `puts` the string `"Hello world!"` to the screen.
  * Write a function called `print_thrice(num)` that, given a number, will print out the number three times.
  * Write a function called `print_thrice_thrice(num)` that, given a number, will call `print_thrice` with that number three times (for 9 total prints).

## Numbers
* Mathematical operators
* Integer division (`/`)
* Modulo (`%`)
* `+=`, `-=`, `/=` etc.

Exercises:
  * Write a function called `times_three_and_plus_five(num)` that takes a number, multiplies it by 3, and then adds 5. For example, `times_three_and_plus_five(4)` should output 17.
  * Write a function called `even_or_odd(num)` that prints `"even"` if the number is even, and prints `"odd"` if the number is odd.
  * Write a function called `division_plus_remainder(big_num, small_num)` that finds the number of times `small_num` completely divides into `big_num`, and then adds the remainder that's left over. For example, `divisor_plus_remainder(7, 2)` should equal `4`.
  * Write a function called `is_factor_of(big_num, small_num)` that returns `true` if `small_num` is a factor of `big_num`, and `false` if it is not.

## Booleans and loops
* Booleans
* `while` loops — `while(condition)`, do stuff, `end`
* Conditionals and control flow
  * `elsif` and `else`
* Comparators that produce booleans: `==`, `<`, `>`, `>=`, `<=`

Exercises:
  * Write a `while` loop that prints out all the numbers from 1 to 25 inclusive.
  * Write a function called `print_up_to(num)` that given a number, prints out all the numbers from 1 to that number, inclusive. It should use a `while` loop internally.
  * Write a function called `print_factors(num)` that prints all of the factors of a number, including 1 and the number itself.
    * Hint: use your `is_factor_of(big_num, small_num)` function.

## Implicit and explicit returns
* `return` jumps all the way out of the function

Exercise:
  * Write a function `largest_factor(num)` that returns the largest factor of a number. Adapt your `print_factors` method to use a `while` loop starting at `num - 1`, and return immediately once you find a number that's a factor.
  * Write a function `is_prime?(num)` that returns a boolean depending on whether the number is prime. A reminder: a prime number only has two factors: 1 and itself.
    * Once you've written it, see if you can use an early `return` on numbers that you know for sure aren't prime, without having to check every possible factor.


## Advanced Conditionals
* `if` vs. `unless`
* `while` vs. `until`
* Logical operators (`&&` = and, `||` = or, `!` = not)
* Parenthesization
* Truth tables

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
* String methods
  * `#length`
  * `#upcase`
  * `#downcase`
  * `+`
  * `string[idx]` to look up the character at an index
  * `string[idx] = letter` to assign a character at an index
  * `#split(char_to_split_on)` to split a string into an array of parts

* Exercises:
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

* Exercises:
  * Write a function `first_n_evens(n)` that returns an array of the first N many even numbers, starting from 0.
  * Write a function `reverse(arr)` that reverses an array in-place.
  * Write a function `rotate(arr, shift)` that given an array, rotates it in-place by the shift amount. E.g., `rotate([1, 2, 3, 4], 2)` should produce `[3, 4, 1, 2]`. `rotate([5, 6, 7], -1)` should produce `[6, 7, 5]`.
    * Hint: a combination of `#shift`, `#unshift`, `#pop` and `#push` should come in handy here.
  * Write a function `all_uniqs(arr1, arr2)` that given two arrays, produces a new array of only elements unique to `arr1` and elements unique to `arr2`. E.g., `all_uniqs([2, 5, 7], [1, 2, 7])` should return `[1, 5]`

## Iteration
* Iteration and blocks (`each`)
* Blocks — `do` `|arg1, arg2|`, then code stuff, then `end`
* `array.each_with_index` yields `|el, i|`
* `string.chars.each_with_index` gives you the same

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

## Output
* `p` and `puts`
  * `p` returns the thing you're printing, `puts` returns `nil`

## Advanced iteration
* `break`
* `next`

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
