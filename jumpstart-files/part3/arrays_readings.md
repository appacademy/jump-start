# Arrays

## Introduction

Complete the [Codecademy Arrays][Arrays] section if you haven't yet.

Arrays are useful for maintaining *ordered* collections. They are one of the most useful data structures in ruby; learn to use them wisely!

 [Arrays]: https://www.codecademy.com/courses/ruby-beginner-en-F3loB/0/1?curriculum_id=5059f8619189a5000201fbcb

---
## Creating Arrays

We use square brackets to create arrays:

  ```ruby
    array = []
  ```

We commonly refer to the contents of an array as the array's elements.

  ```ruby
    array = [1, 2, 3]
  ```

Here, we would say that the array has three elements. We can add/remove elements from arrays using 4 different methods:

Method    | Action
----------|--------
`#push`   | Add element to right
`#pop`    | Remove element from right
`#unshift`| Add element to left
`#shift`  | Remove element from left

Watch the video!

[![Slice](../video_link.png)](https://vimeo.com/182440643)

**Test these in pry!**

### The Shovel Operator

Since `#push` is such a common method, ruby provides us a shorthand for using it: the *shovel operator*

  ```ruby
    array = []
    array << 5
    p array # ==> [5]
  ```

You will rarely see the `#push` method written out; use the shovel operator instead!

---

## `#slice`

The `#slice` method for arrays works similarly to the `#slice` method for strings. Let's recap:

[![Slice](../video_link.png)](https://vimeo.com/182448670)

---

## `#each`

  The `#each` method is a must-know method when working with collections. `#each` is a looping method, which allowing us to evaluate some *code block* for *each* element in the array. Let's see an example of this:

  ```ruby
    arr = [1, 2, 3, 4]

    arr.each do |el|
      puts el
    end
  ```

### Code Blocks

  In the above code snippet, we use a *code block*. To put it simply, a *code block* is anything between a `do .. end` statement or a `{ .. }`. **Code blocks are not ruby objects**. *Code blocks* are simply a name that we use to identify specific pieces of code -- kind of like 'script' or 'function'.

  Watch the video!

  [![Slice](../video_link.png)](https://vimeo.com/?)

  **Try using each with different code blocks in pry!**

---

## Other Useful Methods

Method        | Definition
--------------|-----------
`#length`     | Returns the number of elements in an array
`#first`      | Returns the first element in an array
`#last`       | Returns the last element in an array
`#include?`   | Returns `true` / `false` if the array contains the argument
`#join`       | Joins all the elements into a string, separated by a delimiter (the argument)

#### Examples
  ```ruby
    names = ["Anakin", "Luke", "Leia"]
    names.length            #=> 3
    names.first             #=> "Anakin"
    names.last              #=> "Leia"
    names.include?("Luke")  #=> true
    names.join(", ")        # ==> "Anakin, Luke, Leia"
  ```

### More Useful Methods

Here are some methods that we *skipped* earlier in the course, but you should learn now!

Class    | Method      | Definition
---------|-------------|-----------
`String` | `#chars`    | Converts a string into an array of single characters
`String` | `#split`    | Converts a string into an array by splitting the array on a particular character

#### Examples
  ```ruby
    sentence = "Wow, I heart ruby!"
    sentence.split(" ")     # ==> ["Wow,", "I", "heart", "ruby!"]
    sentence.chars          # ==> ["W", "o", "w", " ", "I", " ", "h", "e", "a", "r", "t", " ", "r", "u", "b", "y", "!"]
  ```

**Test these in pry!**
