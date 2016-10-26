# Range Exercises

0. Define a method, `#alphabet_slice(range)`, that accepts a range of integers as an argument. Use the range to slice a string of characters representing the alphabet. Remember, the `String#slice` method can accept a range as an argument!

  ```ruby
    def alphabet_slice(range)
      alphabet = ("a".."z").to_a.join
      alphabet[range]
    end
  ```

0. Define a method, `#alphabet_without(array)`, that accepts an array of letters as an argument. Your method should return an array of all the characters in the alphabet, but exclude the characters in the input array.

  ```ruby
    def alphabet_without(array)
      alphabet = ("a".."z").to_a
      array.each { |letter| alphabet.delete(letter) }
      alphabet
    end
  ```

0. Define a method, `#evens_below(integer)`, that accepts an integer as an argument. Your method should return an array of all the even numbers (starting at 0) that are less than (but not equal to) the integer argument.

  ```ruby
    def evens_below(integer)
      evens = []
      (0...integer).each do |n|
        evens << n if n.even?
      end

      evens
    end
  ```

0. Define a method, `#to_range(array)` that, given an array of integers, constructs a range covering the span of integers in the array argument.

  ```ruby
    def to_range(array)
      min = array.min
      max = array.max
      (min..max)
    end
  ```
