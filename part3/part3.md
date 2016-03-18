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

Exercises:
  * Write a function called `longest_run_digit(number)` that returns the digit that has the longest run of consecutive repeats in a number. For example, `longest_run_digit(10555223)` should return `5`.

### Nested iteration
* Looping within a loop. First element touches every element, second element touches every element, etc.
* Think like the hands of a clock!
* Beware of edge conditions. Should your two iterators ever be equal? Should they ever be 0? Should they reach the end of the array?
* Generate all pairs
* Look at [bubble sort]() and get a feel for how it works.  On paper, write
* Nested iteration is one of the most important concepts you need to handle on the assessment, so we want to give you a lot of practice with it.

Exercises:
  * Write a function called `all_word_pairs(string)` that given a string, returns an array of every possible pair of words.
  * Write a function called `any_make_yahtzee?(array)` that given an array, determines whether the concatenation of any two strings makes the string "yahtzee".
    *E.g., with the input `["yah", "car", "build", "tzee"]`, it should return `true`. With the input `["yahtz", "fish", "y"]` it should return false.
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

Exercises:

  * Write a function called `range_of(array)` which returns the difference between the smallest and the greatest value of the array.
  * Write a function called `greatest_uniq(array)` which returns the greatest unique (non-duplicated) number in the array.
  * Write a function called `greatest_three(array)` which given an unordered array, returns the greatest three values.

### More string methods

* You can multiply strings. `"Ha" * 3` outputs ``"HaHaHa"``
* `reverse` will return a string with all the characters in the opposite order.
* `gsub(this, for_that)` provides search and replace functionality for strings.
* `sub(this, for_that)` replaces only first occurance
* `empty?` is a Ruby-like way of checking to see if the string equals the empty string: `str == ""`.

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
