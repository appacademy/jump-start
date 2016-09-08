# Lesson Plan

## Instructions

**Do every exercise.**  Prioritize doing the exercises (correctly) over doing the readings. We want you to struggle with problems and then fill in your knowledge.

Reference the linked material when you get stuck or need help.

It's OK to go "I don't understand the question".  That's when you should read the linked material.


## Terminal

Readings link with examples (in case you get stuck or need help):
* [Terminal Tutorial](../terminal/terminal.md)
* [Terminal Command Cheat Sheet](../terminal-commands.txt)

----

#### `Exercises`

  * Practice using `cd` and `ls` to explore your computer's directory structure. Enter `cd ..` until you go all the way down to the root `/`. Look at the various directories that make up a Linux and OSX computer system.  You'll be fine as long as you don't enter the `rm` command.

  * From your desktop or workspace, make a sample folder (`mkdir sample_folder_name`), and `cd` into it.  `touch` and `cat` are two additional commands that we use a fair amount.  Look them up in google and try them out: e.g., `touch my_file_1`, `echo "Hello world" > my_file_1`, `cat my_file_1`.  After you feel you have a basic understanding of what they do look up the `man` pages and try out some different options.

  * Look at the 'man pages' for one of the commands in the reading and try out some of the different options. `ls` has a ton, for example.

  * Run the last three commands you did, without typing them out.  Use the up arrow and see what happens.

---

## IRB

Readings link with examples (in case you get stuck or need help):
* [IRB Tutorial](./irb.md)

----

#### `Exercises`

* Pop open IRB.
* Initialize an array and push an element into it. (See picture below.)

![IRB Push](./irb-push.png)

As we can see in this example, IRB executes our ruby commands as we type them in line by line. We've successfully initialized our array in a variable and pushed a value into it.

* Map over your array:

![IRB Map](./irb-map.png)

* Use underscore to access the last returned value. Save the results of your previous command like so:

![IRB Underscore](./irb-underscore.png)

* Manipulate a string. Type the following code into IRB and observe the results.

![IRB Downcase](./irb-downcase.png)

* Type multiple lines of code into IRB before it evaluates.  Try typing the following multi-liner into IRB.

![IRB Multiline](./irb-multiline.png)

* Invoke a method in IRB. Copy and paste this method, which lists the factors of a number in descending order, into IRB, and hit enter.

```ruby
  def factors(num)
    return -1 if !num.is_a?(Integer) || num < 1
    (1..num).select { |el| num % el == 0 }.reverse
  end
```

Now you can invoke the method by typing factors() into IRB and passing it any input you want! Try a couple of sample inputs and see what you get.

![IRB Factors](./irb-factors.png)

* Play around in IRB and test out methods that you are not familiar with. Did any of the results surprise you? IRB is one of the best tools for learning how Ruby works and testing newly written code, so you want to become familiar with it. Most importantly, have fun with it! A programmer's curiosity is the greatest asset he/she has in learning :)

---

## Functions

Key concepts:

* The building blocks of all programs
* `def` and `end`
* Function arguments
* Watch your indentation!
* Functions can call other functions

Readings link with examples (in case you get stuck or need help):
* [Functions Reading](./functions.md)


Codecademy link (complete this first if you haven't yet):
* [Functions/ Methods](https://www.codecademy.com/courses/ruby-beginner-en-ET4bU/0/1?curriculum_id=5059f8619189a5000201fbcb)

----

#### `Exercises`

  * Write a function called `hello_world` that will `puts` the string `"Hello world!"` to the screen.
  * Write a function called `print_thrice(number)` that, given a number, will `print` the number three times.
  * Write a function called `print_thrice_thrice(number)` that, given a number, will call `print_thrice` with that number three times (for 9 total prints).

---

## Numbers

Key concepts:

* Mathematical operators
* Integer division (`/`)
* Modulo (`%`)
* `+=`, `-=`, `/=` etc.

Readings link with examples (in case you get stuck or need help):
* [Numbers Reading](./numbers.md)

Codecademy link (complete this first if you haven't yet):
* [Math operators] (https://www.codecademy.com/en/courses/ruby-beginner-en-d1Ylq/0/4?curriculum_id=5059f8619189a5000201fbcb)

----

#### `Exercises`
  * Write a function called `times_three_and_plus_five(number)` that takes a number, multiplies it by 3, and then adds 5. For example, `times_three_and_plus_five(4)` should output 17.
  * Write a function called `even_or_odd(number)` that prints `"even"` if the number is even, and prints `"odd"` if the number is odd.
  * Write a function called `division_plus_remainder(big_number, small_number)` that finds the number of times `small_number` completely divides into `big_number`, and then adds the remainder that's left over. For example, `division_plus_remainder(7, 2)` should equal `4`.
  * Write a function called `is_factor_of(big_number, small_number)` that returns `true` if `small_number` is a factor of `big_number`, and `false` if it is not.

---

#### Video Solution (Optional)

We recommend watching the video below at 2x speed and pausing at new concepts.  **DO NOT WATCH IT UNTIL AFTER YOU'VE DONE THE EXERCISES.**

[TA Video Solution](https://youtu.be/WxVRmB_uRBU)

## Booleans and loops

Key concepts:

* Booleans are `true` and `false`.  That's it.
* `while` loops — `while(condition)`, do stuff, `end`
* Conditionals and control flow
  * `elsif` and `else`
* Comparators that produce booleans: `==`, `<`, `>`, `>=`, `<=`

Readings link with examples (in case you get stuck or need help):
* [Booleans Reading](./booleans.md)
* [Loops Reading](./loops.md)


Codecademy links (complete these first if you haven't yet):
* [While loop] (https://www.codecademy.com/courses/ruby-beginner-en-XYcN1/0/1?curriculum_id=5059f8619189a5000201fbcb)
* [Conditionals] (https://www.codecademy.com/courses/ruby-beginner-en-NFCZ7/0/2?curriculum_id=5059f8619189a5000201fbcb)
* [Comparators] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/1/1?curriculum_id=5059f8619189a5000201fbcb)

----

#### `Exercises`
  * Write a `while` loop that prints out all the numbers from 1 to 25 inclusive.
  * Write a function called `print_up_to(number)` that given a number, prints out all the numbers from 1 to that number, inclusive. It should use a `while` loop internally.
  * Write a function called `print_factors(number)` that prints all of the factors of a number, including 1 and the number itself.
    * Hint: use your `is_factor_of(big_number, small_number)` function.

---

#### Video Solution (Optional)

We recommend watching the video below at 2x speed and pausing at new concepts.  **DO NOT WATCH IT UNTIL AFTER YOU'VE DONE THE EXERCISES.**

[TA Video Solution](https://youtu.be/qksk-8ywhKA)


## Commenting Out Code

Key concepts:

* Hitting `command + /` comments out the current line of code.  On Windows, this is `ctrl + /`.
* Hitting `command + /` on an empty line starts a comment.
* Selecting multiple lines with `shift + up/down arrow`

#### `Exercises`

* Paste the following code into a file and comment out the offending lines using keyboard shortcuts (don't delete them).

```ruby
def print_hello
  adsiofjiodafsj
  raiojtdaiocccpp
  nothisisntgoodcode
  infactitwontrun

  3.times do
    puts "hello"
  end
end


```

* Using comments, write out in pseudocode an approach to the Cats N' Hats problem that you did day 1.  You don't have to write real code off of it.

---

## Implicit and explicit returns

Key concepts:

* `return` jumps all the way out of the function

Readings link with examples (in case you get stuck or need help):
* [Implicit and Explicit Returns Reading](./implicit-returns.md)

----

#### `Exercises`
  * Write a function `largest_factor(number)` that returns the largest factor of a number. Adapt your `print_factors` method to use a `while` loop starting at `number - 1`, and return immediately once you find a number that's a factor.
  * Write a function `is_prime?(number)` that returns a boolean depending on whether the number is prime. A reminder: a prime number only has two factors: 1 and itself.
    * Once you've written it, see if you can use an early `return` on numbers that you know for sure aren't prime, without having to check every possible factor.

---

## Advanced Conditionals

Key concepts:
* `while` vs. `until`
* `if` vs. `unless`
* Logical operators (`&&` = and, `||` = or, `!` = not)
* Parenthesization
* Truth tables

Readings link with examples (in case you get stuck or need help):
* [Advanced Conditionals  Reading](./advanced-conditionals.md)


Codecademy links (complete these first if you haven't yet):
* [Until loop] (https://www.codecademy.com/en/courses/ruby-beginner-en-XYcN1/0/3?curriculum_id=5059f8619189a5000201fbcb)
* [Unless] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/3/3?curriculum_id=5059f8619189a5000201fbcb)
* [Logical Operators] (https://www.codecademy.com/en/courses/ruby-beginner-en-NFCZ7/2/1?curriculum_id=5059f8619189a5000201fbcb)

----

#### `Exercises`
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

---

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

Readings link with examples (in case you get stuck or need help):
* [String Refresher](./strings.md)

Codecademy link (complete this first if you haven't yet):
  * [String methods](https://www.codecademy.com/en/courses/ruby-beginner-en-d1Ylq/1/2?curriculum_id=5059f8619189a5000201fbcb)

  ----

  #### `Exercises`
  * Crack open irb and make a sample string.  Play around with each of the above methods on the string.
  * Write a function `capitalize(string)` that takes in a string, capitalizes the first letter of the string, and returns the string. Note: Do not use the built in method `String#capitalize`
  * Write a function `shout_then_whisper(string1, string2)` that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this:
    * `shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"`

---

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

Readings link with examples (in case you get stuck or need help):
* [Array Refresher](./arrays.md)

Codecademy link (complete this first if you haven't yet):
  * [Arrays](https://www.codecademy.com/courses/ruby-beginner-en-F3loB/0/1?curriculum_id=5059f8619189a5000201fbcb)

  ----

  #### `Exercises`
  * Write a function `first_n_evens(n)` that returns an array of the first N many even numbers, starting from 0.
  * Write a function `reverse(array)` that reverses an array in-place.
  * Write a function `rotate(array, shift)` that given an array, rotates it in-place by the shift amount. E.g., `rotate([1, 2, 3, 4, 5], 2)` should produce `[4, 5, 1, 2, 3]`. `rotate([5, 6, 7], -1)` should produce `[6, 7, 5]`.
    * Hint: a combination of `#shift`, `#unshift`, `#pop` and `#push` should come in handy here.
  * Write a function `all_uniqs(array1, array2)` that given two arrays, produces a new array of only elements unique to `array1` and elements unique to `array2`. E.g., `all_uniqs([2, 5, 7], [1, 2, 7])` should return `[1, 5]`

---

## Iteration

Key concepts:

* Iteration and blocks (`each`)
* Blocks — `do` `|argument1, argument2|`, then code stuff, then `end`
* `array.each_with_index` yields `|element, index|`
* `string.chars.each_with_index` gives you the same

Readings link with examples (in case you get stuck or need help):
* [Iteration Reading](./iteration.md)

Codecademy link (complete this first if you haven't yet):
  * [Iterators and Blocks](https://www.codecademy.com/en/courses/ruby-beginner-en-XYcN1/2/1?curriculum_id=5059f8619189a5000201fbcb)

  ----

  #### `Exercises`
  * Write a function called `vowels(string)` that returns an array of every vowel in the string.
    * Using comments, write out an approach in pseudocode first.
    * Use the `String#chars` method, which returns an array of characters. Then use an `each` over the chars.
  * Write a function called `odd_elements(array)` that prints out every other element (those with odd indices). Use `each_with_index`.
  * Write a function called `zip_with_indices(array)` that given an array, converts each element into a tuple (array with two items) with its index.
    * E.g., `zip_with_indices([3, 20, 8]) == [[3, 0], [20, 1], [8, 2]]`

## `nil`

* Everything returns something in Ruby, including control flow
* Specifically, it often returns `nil`
* Chances are, if you're getting a `nil`, you're doing something wrong

Readings link with examples (in case you get stuck or need help):
* [Nil Reading](./nil.md)

---

## Output

Key concepts:

* `p` and `puts`
  * `p` returns the thing you're printing, `puts` returns `nil`

Readings link with examples (in case you get stuck or need help):
* [Output Reading](./output.md)

----

#### `Exercises`

* In irb, make a sample array. `puts` the array. Then `p` the array.  See the difference?

---

## Advanced iteration

Key concepts:

* `break`
* `next`

Readings link with examples (in case you get stuck or need help):
* [Break and Next Reading](./break-next.md)

----

#### `Exercises`
  * Adapt your `odd_elems(array)` function to use `next` to skip over every even-indexed element.
  * Write a function `first_n_primes(n)` that returns the first N many prime numbers. You'll want to call (use) your `is_prime?` function that you wrote earlier. Use `break` in your function.
    * For example, `first_n_primes(6)` should return `[1, 2, 3, 5, 7, 11]`.
    * Using comments, write out an approach in pseudocode first.

---

## Debugging

Readings link with examples (in case you get stuck or need help):
* [Debugging Reading](./debugging.md)
* [Debugging Lecture](https://vimeo.com/129370279)
  * Watch at up to 2-4x speed.  Install the [chrome extension](https://chrome.google.com/webstore/detail/vimeo-repeat-speed/noonakfaafcdaagngpjehilgegefdima?hl=en)

You might notice that it can be hard to catch the errors you make.  These errors, like misspellings, or being off by one, might feel "silly" or "stupid", but professional software engineers make the same mistakes.  The key is catching them quickly.

The most effective way to catch your errors is to use the debugger.  You had a small taste of this in the pre-curriculum.

The way to put a debugger in your code: stick `byebug` in the middle of a function and run your code.  Make sure you `require 'byebug'` at the top of your file.  For example:

![Byebug](./byebug.png)

In interviews, we ask applicants to play the role of debugger (knowing what every variable is at every point in time in a function).  So it's important that you know how to use a debugger well.  Debuggers are arguably the most useful tool you can have while learning to program.

For your final assessment, it will be very helpful to know how to use the debugger to fix your errors quickly.

The three most important commands in `byebug`:

- `n` (or `next`): Goes to the next line
- `c` (or `continue`): Goes to the next place byebug lives in the code
- Printing out variables: `multiples`, `amount_to_multiple_by`, etc.  You type out the variable name and press enter.

Take a look at how you can use byebug while you're running your code.

![Byebug In Action](./byebug-in-action.gif)

You can find out more about byebug in the "Byebug Commands" section [here][byebug]. Feel free to play around with new commands.

[byebug]: https://github.com/deivid-rodriguez/byebug

----

#### `Exercises`

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

---

## Naming your variables and refactoring

Key concepts:

* Be as expressive and specific as possible
* Break down operations into multiple named steps
* Make your code read like English!

----

#### `Exercises`
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
    * Feel free to pause the code using the debugger so that you know which variable is which.
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
