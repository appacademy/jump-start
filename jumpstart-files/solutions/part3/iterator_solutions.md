# Iterator Solutions

0. Define a method, `#print_10`, that prints the numbers 1 - 10. Do this two different ways:
  * Using `Range#each`
  * Using `#upto`

  ```ruby
    def print_10_range
      (1..10).each { |n| puts n }
    end

    def print_10_upto
      1.upto(10) { |n| puts n }
    end
  ```

0. Define a method, `#string_squared(string)`, that prints the string the number of times that it has characters.

  ```ruby
    def string_squared(string)
      string.length.times do
        puts string
      end
    end
  ```

0. Define a method, `#collect_thirds(array)`, that iterates through an array and collects every third element. Do this in two different ways:
  * `array.select.with_index`
  * `#step`

  ```ruby
    def collect_thirds_select(array)
      array.select.with_index do |_, idx|
        (idx + 1) % 3 == 0
      end
    end

    def collect_thirds_step(array)
      thirds = []
      last_idx = array.length - 1

      2.step(last_idx, 3) do |idx|
        thirds << array[idx]
      end

      thirds
    end
  ```
