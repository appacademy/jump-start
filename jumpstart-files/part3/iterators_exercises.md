# Iterator Exercises

0. Define a method, `#print_10`, that prints the numbers 1 - 10. Do this two different ways:
  * Using `Range#each`
  * Using `#upto`

0. Define a method, `#string_squared(string)`, that prints the string the number of times that it has characters.

  ```ruby
    string_squared('abc')   # ==> prints "abc" 3 times
    string_squared('hello') # ==> prints "hello" 5 times
  ```

0. Define a method, `#collect_thirds(array)`, that iterates through an array and collects every third element. Do this in two different ways:
  * `array.select.with_index`
  * `#step`

  ```ruby
    collect_thirds([3, 4])                      # ==> []
    collect_thirds([3, 4, 5, 7, 6, 4, 2])       # ==> [5, 4]
    collect_thirds([3, 4, 5, 7, 6, 4, 2, 1, 1]) # ==> [5, 4, 1]
  ```
