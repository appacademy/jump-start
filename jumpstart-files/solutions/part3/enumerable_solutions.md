# Enumerable Solutions

0. Write a method, `#words_with_a(array)`, that accepts an array of strings as an argument. It should return the number of strings that have an 'a' in them.

  ```ruby
    def words_with_a(array)
      array.count { |string| string.include?("a") }
    end
  ```

0. Write a method, `#odds(array)`, that accepts an array of integers as an argument. It should return an array containing only the odd numbers.

  ```ruby
    def odds(array)
      array.select { |n| n.odd? }
    end
  ```

0. Write a method, `#triple(array)`, that accepts an array of integers as an argument. It should return a new array with every element tripled.

  ```ruby
    def tripple(array)
      array.map { |el| el * 3 }
    end
  ```

0. Write a method, `#odd_value_and_position(array)`, that accepts an array of integers as an argument. It should return a new array of all the elements whose value and position (index) in the original array are odd.

  ```ruby
    def odd_value_and_position(array)
      array.select.with_index { |el, idx| el.odd? && idx.odd? }
    end
  ```
