# Hash Exercises

0. Write a method, `#word_lengths(string)` that, given a sentence, returns a hash of each of the words and their lengths.

  ```ruby
    word_lengths("hello my good good pal") =
      { 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }
  ```

0. Write a method, `#uniq(array)` that returns an array with only the unique values in the array. (Hint: use a hash!) Don't use the `Array#uniq` method here.

  ```ruby
    uniq([1, 1, 2, 3])          # ==> [2, 3]
    uniq([1, 3, 4, 3, 2, 5, 4]) # ==> [1, 2, 5]
  ```

0. Write a method, `#greatest_key_by_val(hash)` that takes in a hash with any keys but only integers for values, and returns the key with the largest value.

  ```ruby
    greatest_key_by_val({ "a" => 5, "b" => 6, "c" => 3 }) # ==> "b"
  ```
