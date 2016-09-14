# Enumerable Exercises

0. Write a method, `#words_with_a`, that accepts an array of strings as an argument. It should return the number of strings that have an 'a' in them.

  ```ruby
    words_with_a(["enumerables", "are", "cake!"]) == 3
    words_with_a(["this", "is", "a", "string"]) == 1
    words_with_a(["ruby"]) == 0
  ```

0. Write a method, `#odds`, that accepts an array of integers as an argument. It should return an array containing only the odd numbers.

  ```ruby
    odds([1,2,3,4,5,6]) == [1,3,5]
    odds([2,4,6]) == []
  ```

0. Write a method, `#triple`, that accepts an array of integers as an argument. It should return a new array with every element tripled.

  ```ruby
    triple([1,2,3,4,5,6]) == [3,6,9,12,15,18]
  ```

0. Write a method, `#odd_value_and_position`, that accepts an array of integers as an argument. It should return a new array of all the elements whose value and position (index) in the original array are odd.

  ```ruby
    odd_value_and_position([0,1,2,3,4,5]) == [1,3,5]
    odd_value_and_position([1,2,3,4,5]) == []
  ```
