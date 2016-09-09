# Conditionals Exercises

0. Write a method `#swap_p`, that accepts a string an argument. If the string argument starts with a "p", then your method should replace it with an underscore, "\_". Otherwise, just return the original string. Assume the string only has lowercase letters.

  ```ruby
    swap_p("billabong")  # ==> "billabong"
    swap_p("porcupine")  # ==> "_orcupine"
  ```

0. Write a method, `#pos_or_neg?` that accepts an integer, `n`, as an argument. Your method should return `"positive"` if n > 0, `"negative"`, if n < 0, and `"your number is rather passive"` otherwise.

  ```ruby
    pos_or_neg?(2)    # ==> "positive"
    pos_or_neg?(-23)  # ==> "negative"
    pos_or_neg?(0)    # ==> "your number is rather passive"
  ```
