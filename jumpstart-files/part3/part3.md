# Lesson Plan

### Scope
* Functions and blocks each introduce new scopes
* A scope is basically an environment where variables are accessible (think inside a function vs outside of it)
* A **local variable** is only defined within its scope
* You should generally not name a local variable the same as the function or as another variable in scope, because it causes a namespace conflict. (I.e., the older variable will no longer be accessible.)


---

#### `Exercises`

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

---

### Pass-by-reference
* When you pass a variable into a function or a method, the original variable always continues to refer to the same object.
* A variable is just a **pointer**. Think of it as just writing down the address of a building into an address book.
* Re-assigning the same variable within another scope doesn't mutate the original object, it just changes that scope's address book.
* Writing stuff into your address book doesn't actually change where buildings live! It's just your own form of book-keeping.
* More concretely, all Ruby objects live in memory. And they'll still live in memory unless you explicitly mutate them.

Readings link with examples (in case you get stuck or need help):
* [Pass-by-reference Reading](./pass-by-reference.md)

### Mutation

Readings link with examples (in case you get stuck or need help):
* [Mutation Reading](./mutation.md)

---

#### `Exercises`
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

After you've made your guesses, test all the code above by running it.

### Advanced iteration
* Iterating with complex logic—while loops!
* Looking forward or backward

Readings link with examples (in case you get stuck or need help):
* [Advanced Iteration Reading](./advanced-iteration.md)


---

#### `Exercises`
  * Write a function called `longest_run_digit(number)` that returns the digit that has the longest run of consecutive repeats in a number. For example, `longest_run_digit(10555223)` should return `5`.

---

### Nested iteration

* Looping within a loop. First element touches every element, second element touches every element, etc.
* Think like the hands of a clock!
* Beware of edge conditions. Should your two iterators ever be equal? Should they ever be 0? Should they reach the end of the array?
* Generate all pairs
* Look at [bubble sort](https://en.wikipedia.org/wiki/Bubble_sort#/media/File:Bubble-sort-example-300px.gif) and get a feel for how it works.  Pay special attention to the animation.  Pay less attention to the text on the wikipedia page, although you can reference it if you want.  Make sure you go through at least two passes of the whole array when watching the animation.
* Nested iteration is one of the most important concepts you need to handle on the assessment, so we want to give you a lot of practice with it.

Readings link with examples (in case you get stuck or need help):
* [Nested Iteration Reading](./nested-iteration.md)

---

#### `Exercises`
  * Write a function called `all_word_pairs(string)` that given a string, returns an array of every possible pair of words.
    * Each pair should only appear once. For example, `all_word_pairs("cat yogurt phone")` should return `[["cat", "yogurt"], ["cat", "phone"], ["yogurt", "phone"]]`.
    * Using comments, write out an approach in pseudocode first.
  * Write a function called `any_make_yahtzee?(array)` that given an array, determines whether the concatenation of any two strings makes the string "yahtzee".
    * E.g., with the input `["yah", "car", "build", "tzee"]`, it should return `true`. With the input `["yahtz", "fish", "y"]` it should return false.
  * Put a debugger inside the inner loop of the `color_mixer` function from the reading (just above the line where the colors are being shoveled into the `mixes` array). Run the function using the input: ["beige", "white", "tan"] and write out on a piece of paper what you expect `first_color` and `second_color` to be each time the function pauses at the debugger. Then use the debugger to check your answer before using `c` to move to the next iteration.
  * Write a function called `clock` that cycles through every minute of the day and prints out every half hour.  Include the AM and PM.
    * You should have two loops: one outer loop for hours (0 through 23) and one for minutes (0 through 59).  You shouldn't need seconds.
    * For example:

```ruby
clock

# => 00:00 AM
# => 00:30 AM
# => 01:00 AM
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

  * Use nested iteration with ruby's `#each_with_index` method to solve the following problem:

```ruby
# write a function smallest_pair_product that takes an array of integers and returns the
# 2 unique indices whose elements multiply to the smallest number. Formatted [earlier_index, later_index].  Assume none of the elements are 0.

puts smallest_pair_product([1,2,3,4,5]) == [0,1]
puts smallest_pair_product([3,2,1,1,2,3]) == [2,3]
puts smallest_pair_product([-2,-1,-1,-2,-3]) == [1,2]

```
---


### Enumerables++

There are lots of crazy and powerful things you can do with advanced enumerable methods. Check out the Ruby documentation on `Enumerable` if you are curious, but here are a few of the more common methods:

* in-line blocks: `do` => `{`, `end` => `}`
* `#select` and `#reject`
* `#count`
* `#reduce`
* `#max_by`
* One-line `is_prime?`

Readings link with examples (in case you get stuck or need help):
* [Enumerables++ Reading](./enumerables++.md)

---

#### `Exercises`
  * Use enumerable methods to add up all the numbers that are not equal to 2 in an array. Do NOT modify the original array.
  * Use the `#max_by` method to find the longest string in an array of strings.
  * Write an `is_prime?` function in one line using enumerable methods.
  * Write a one line function that lists all primes less than or equal to the argument passed in. Use enumerable methods in combination with your `is_prime?` function.

---

### More array methods

* `reverse`
* `min` and `max`
* `sort`
* `uniq` removes all duplicate elements.
* `shuffle` puts the elements in a random order.

Readings link with examples (in case you get stuck or need help):
* [More Array Methods Reading](./more-array-methods.md)

---

#### `Exercises`

  * Write a function called `range_of(array)` which returns the difference between the smallest and the greatest value of the array.
  * Write a function called `greatest_uniq(array)` which returns the greatest unique (non-duplicated) number in the array.
  * Write a function called `greatest_three(array)` which given an unordered array, returns the greatest three values.

---

### More string methods

* You can multiply strings. `"Ha" * 3` outputs ``"HaHaHa"``
* `reverse` will return a string with all the characters in the opposite order.
* `gsub(this, for_that)` provides search and replace functionality for strings.
* `sub(this, for_that)` replaces only first occurrence
* `empty?` is a Ruby-like way of checking to see if the string equals the empty string: `str == ""`.

Readings link with examples (in case you get stuck or need help):
* [More String Methods Reading](./more-string-methods.md)

---

#### `Exercises`

  * Write a function called `lotrify(string)` translates passages from The Hobbit into the Lord of the Rings. It should replace all occurrences of the string "Bilbo" with the string "Frodo".
  * Write an `is_palindrome?(string)` function that checks to see if the string reads the same backwards as it does forwards. It should not count spaces or be case sensitive.
  * Write a function called `longest_palindrome(string)` that given a string, finds the longest substring of that string that is a palindrome.

---


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

---

#### `Exercises`
  * Go back to `reverse` (Part 1) and `bubble_sort!` (Part 3) and see where you can refactor to use parallel assignment.
