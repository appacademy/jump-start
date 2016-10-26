# Numbers Solutions

0. Write a method, `#division_plus_remainder`, that accepts two integers, `big_int` and `small_int`, as arguments. Your method should find the number of times `small_int` completely divides into `big_int`, and then add the remainder that's left over. For example, `divisor_plus_remainder(7, 2)` should equal `4`.

  ```ruby
    def division_plus_remainder(big_int, small_int)
      quotient = big_int / small_int
      remainder = big_int % small_int
      quotient + remainder
    end
  ```

0. Write a method `#divide_two_places`, that accepts two floats, `big_float` and `small_float`, as arguments. Your method should divide `big_float` / `small_float` and round to two decimal places.

  ```ruby
    def divide_two_places(big_float, small_float)
      quotient = big_float / small_float
      quotient.round(2)
    end
  ```

0. Test your order of operations knowledge! You don't need to write any code here! Use `pry` to test your answer.  Solve this expression:

  ```
    5 + 3 * 3 ** 2 + ( 9 - 2 ** 2 ) ** 2
  ```

  **Answer: 57**
