# Return Value Exercise Solutions


\#2. Write a method called `#times_three_and_plus_five` that accepts an integer, n, as an argument. Your method should multiply n by 3, and then add 5. For example, `times_three_and_plus_five(4)` should return 17. Do this using an **explicit return**.

  ```ruby
    def times_three_and_plus_five(n)
      return (n * 3) + 5
    end
  ```

\#3. Change your `#times_three_and_plus_five` method to instead use an **implicit** return.

  ```ruby
    def times_three_and_plus_five(n)
      (n * 3) + 5
    end
  ```

\#5. Write a method called `#even_or_odd`, that accepts an integer as an argument. Your method should return the string "even" if the integer is even, and return "odd" if the integer is odd. Follow the pattern used in the `#is_billy?` method from the reading. Also, use the `#even?` and `#odd?` methods we explored in the previous step.

  ```ruby
    def even_or_odd(n)
      if n.even?
        return "even"
      end
      "odd"
    end
  ```
