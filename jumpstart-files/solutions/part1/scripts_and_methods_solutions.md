# Scripts and Methods Solutions

\#2. Write a method `#print_thrice`, that accepts a string as an argument. It should `puts` that string 3 times.

  ```ruby
    def print_thrice(string)
      puts(string)
      puts(string)
      puts(string)
    end
  ```

\#3. Write a method, `#print_thrice_thrice`, that also accepts a string as an argument. It should call `print_thrice` with that string three times (for 9 total prints).

  ```ruby
    def print_thrice_thrice(string)
      print_thrice(string)
      print_thrice(string)
      print_thrice(string)
    end
  ```

\#4. Write a method, `#add_multiply_subtract`, that accepts two integers as arguments. Your method should do the following:
  * add the two numbers
  * multiply the two numbers
  * subtract the sum from the product
  * puts the result

  You should create 3 variables (sum, product, difference) to help keep your code neat and clean!

  ```ruby
    def add_multiply_subtract(m, n)
      sum = m + n
      product = m * n
      difference = product - sum
      puts difference
    end
  ```
