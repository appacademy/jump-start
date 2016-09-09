# Ranges

## Introduction

Ranges can be used to represent a set of integers or characters. For example, lets say you wanted to create an alphabet. You'll need a collection of all the characters from "a" -- "z". Well, you could use an array..

  ```ruby
    alphabet = ["a", "b", "c", ... "z"]
  ```

but this process is quite annoying. We don't want to have to type out 26 different characters. Behold, the alphabet range:

  ```ruby
    alphabet = ("a".."z")
  ```

And that's it! Ruby knows how to fill in the middle characters for us. All we have to do is specify the upper and lower bounds of the range. Want to know the 16th letter in the alphabet?

```ruby
  alphabet = ("a".."z").to_a
  alphabet[15] # ==> "p"
```

---

## Creating Ranges

Ranges are made by wrapping a lower and upper bound in parentheses and including 2 or 3 dots in between. The number of dots specify whether the range is *inclusive* or *exclusive*.

### Inclusive Ranges

Inclusive ranges are defined using two dots: `(? .. ?)`. Below are some examples of *inclusive* ranges and the values they represent:

  ```ruby
    abc = ("a".."c") # ==> a - c
    digits = (0..9)  # ==> 0 - 9
  ```

Inclusive ranges *include* the upper bound. In the above examples, both "c" and 9 are included in their respective ranges.

### Exclusive Ranges

Exclusive ranges are defined using 3 dots: `(? ... ?)`.

```ruby
  letters = ("d"..."q") # ==> d - p
  digits = (1...5)      # ==> 1 - 4
```

Exclusive ranges *exclude* the upper bound.

## `#to_a`

We cannot directly index a range:

  ```ruby
    alphabet = ("a".."z")
    alphabet[15] # throws error!
  ```

Instead, we can convert a range into an array using the `to_a` method. Doing so allows us to index the collection and ask for specific values.

```ruby
  alphabet = ("a".."z").to_a
  alphabet[10] # ==> "k"
```

## `#each`

Just like arrays, ranges have an `#each` method. This method allows us to execute a code block -- perform some action -- for each element in the range. If we wanted to print every letter of the alphabet...

  ```ruby
    ("a".."z").each do |letter|
      puts letter
    end
  ```

Note the we **don't have to convert the range** to an array in order to use the `#each` method.
