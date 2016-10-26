# Conditionals Solutions

0. Write a method `#swap_p`, that accepts a string an argument. If the string argument starts with a "p", then your method should replace it with an underscore, "\_". Otherwise, just return the original string. Assume the string only has lowercase letters.

  ```ruby
    def swap_p(string)
      if string[0] == "p"
        return "_" + string[1..-1]
      end

      string
    end
  ```

0. Write a method, `#pos_or_neg?` that accepts an integer, `n`, as an argument. Your method should return `"positive"` if n > 0, `"negative"`, if n < 0, and `"your number is rather passive"` otherwise.

  ```ruby
    def pos_or_neg?(n)
      if n > 0
        return "positive"
      elsif n < 0
        return "negative"
      end

      "your number is rather passive"
    end
  ```
