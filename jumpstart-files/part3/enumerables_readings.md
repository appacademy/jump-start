# Enumerables

## Introduction

The `Enumerable` module contains a set of methods that are 'mixed in' to various other classes. You don't have to understand how this works, but you need to know where and how to use `Enumerable` methods.

The `Enumerable` methods are *extremely* useful methods that can be used with ruby collections. All of the following can use `Enumerable` methods:
  * Arrays
  * Ranges
  * Hashes

Generally, if the object has an `#each` method, then it probably has access to the `Enumerable` module.

For example, let's say you have an array of integers and you want to double each value. There's a handy `Enumerable` method we can use, called `#map`:

  ```ruby
    [1, 2, 3].map { |el| el * 2 } # ==> [2, 4, 6]
  ```

You should take a minute to review the [documentation][documentation] for the `Enumerable` module. Glance over the list of methods in the grey box on the left-hand side of the page. Try to guess what these methods might do!

### Code Blocks

Code blocks used with `Array` and `Range` `Enumerable` methods use a single argument, but code blocks used with `Hash` `Enumerable` methods use two arguments: one for keys and 1 for values.

  ```ruby
    [1, 2, 3].select { |el| ... }          # ==> single argument in code block
    (0...100).select { |el| ... }          # ==> single argument in code block
    {"a" => "b"}.select { |key, val| ... } # ==> two arguments in code block
  ```

---

## Useful Methods

#### `#map`
  Returns an array with each element in the original collection is "mapped" by the given code block

  ```ruby
    squares = (1..5).map { |el| el ** 2 } # ==> [1, 4, 9, 16, 25]
  ```

#### `#select`
  Returns a new collection but only with the elements whose code block evaluated to `true`

  ```ruby
    dictionary = {
      "apple" => "fruit",
      "ant" => "a bug",
      "banana" => "yellow fruit",
      "cat" => "fluffy animal"
    }

    a_words = dictionary.select do |key, val|
      key.start_with?("a")
    end

    p a_words # ==> { "apple" => "fruit", "ant" => "a bug"}
  ```

#### `#reject`
  Returns a new collection but omits the the elements whose code block evaluated to `true`

  ```ruby
    no_tens = (1..100).reject do |el|
      el % 10 == 0
    end
  ```

#### `#any?`
  Returns `true` / `false` based on whether *any* of the elements in the collection force the code block to evaluate `true`

  ```ruby
    words = ["pan", "pot", "spatula", "knife", "fork"]
    words.any? { |kitchen_item| kitchen_item == "knife" } # ==> true

    # At least one of the words is "knife"
  ```

#### `#all?`
  Returns `true` / `false` based on whether *all* of the elements in the collection force the code block to evaluate `true`

  ```ruby
    objects = [2, 4, 9, "5", 6]
    objects.all? { |obj| obj.is_a?(Integer) }
    # ==> false

    # Not all of the objects are Integers
  ```

#### `#none?`
  Returns `true` / `false` based on whether *none* of the elements in the collection force the code block to evaluate `true`

  ```ruby
    numbers = [12, 14, 16, 23]
    objects.none? { |n| n < 10 } # ==> true

    # None of the numbers are less than 10
  ```

#### `#count`
  Counts the number of elements that evaluate `true` for a particular code block

  ```ruby
    [1, 4, 5, 4, 3, 5, 6, 7].count { |n| n.even? } # ==> 3

    # There are 3 even numbers in the array
  ```


#### `#with_index`
  Some enumerable methods are chainable with the `#with_index` method. Let's say we wanted to map an array to a new value where `n` \~\~> `n * index(n)`

  We could accomplish this using the `#with_index` method.

  ```ruby
    result = [1, 5, 6, 8].map.with_index do |el, idx|
      el * idx
    end

    result # ==> [0, 5, 12, 24]
  ```


**Try these in pry!**

[documentation]: http://ruby-doc.org/core-2.3.1/Enumerable.html
