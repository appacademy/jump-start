# Array Solutions

0. Write a method, `#first_n_evens(n)` that returns an array of the first n even numbers, starting from 0.

  ```ruby
    def first_n_evens(n)
      result = []
      even_num = 0

      while result.length < n
        result << even_num
        even_num += 2
      end

      return result
    end
  ```

0. Write a method, `#reverse(array)` that reverses an array in-place; don't create any new arrays, and don't use `array.reverse`!

  ```ruby
    def reverse(array)
      left_idx = 0
      right_idx = array.length - 1

      until left_idx >= right_idx
        array[left_idx], array[right_idx] = array[right_idx], array[left_idx]

        left_idx += 1
        right_idx -= 1
      end

      array
    end
  ```

0. Write a method, `#rotate(array, shift)` that, given an array and an integer (shift), rotates the array in-place by the shift amount.
  * Hint: some combination of `#shift`/`#push` or `#unshift`/`#pop` should come in handy here.

  ```ruby
    def rotate(array, shift)
      shift_count = 0

      while shift_count < shift
        array.unshift(array.pop)
        shift_count += 1
      end

      array
    end
  ```

0. Write a method, `#all_uniqs(array1, array2)` that, given two arrays, produces a new array of only elements unique to `array1` and elements unique to `array2`. Don't worry about the order of the elements in the output array.

  ```ruby
    def all_uniqs(array1, array2)
      uniques = []

      array1.each do |el|
        uniques << el unless array2.include?(el)
      end

      array2.each do |el|
        uniques << el unless array1.include?(el)
      end

      uniques
    end
  ```
