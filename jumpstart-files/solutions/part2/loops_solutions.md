# Loops Solutions

0. Write a `while` loop that prints out all the numbers from 1 to 25 inclusive.

  ```ruby
    n = 1

    while n <= 25
      puts n
      n += 1
    end
  ```

0. Write an `until` loop that prints out all of the numbers that are less than 20 and are not divisible by 6.

  ```ruby
    n = 1

    until n == 20
      puts n unless n % 6 == 0
      n += 1
    end
  ```

0. Write a method, `#sum_up_to(number)` that, given a number, sums all the numbers from 1 to that number, inclusive. It should use a `while` loop internally.

  ```ruby
    def sum_up_to(number)
      n = 1
      sum = 0

      while n <= number
        sum += n
        n += 1
      end

      sum
    end
  ```

0. Write a method, `print_factors(number)` that prints all of the factors of a number, including 1 and the number itself. You'll need to use a while loop, a conditional statement, and the modulo operator!

  ```ruby
    def print_factors(number)
      possible_factor = 1

      while possible_factor <= number
        puts possible_factor if number % possible_factor == 0
        possible_factor += 1
      end
    end
  ```
