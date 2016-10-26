# Hash Solutions

0. Write a method, `#word_lengths(string)` that, given a sentence, returns a hash of each of the words and their lengths.

  ```ruby
    def word_lengths(string)
      result = {}
      words = string.split

      words.each do |word|
        result[word] = word.length
      end

      result
    end
  ```

0. Write a method, `#uniq(array)` that returns an array with only the unique values in the array. (Hint: use a hash!) Don't use the `Array#uniq` method here.

  ```ruby
    def uniq(array)
      counter = Hash.new(0)

      array.each do |el|
        counter[el] += 1
      end

      uniques = []
      counter.each do |key, val|
        uniques << key if val == 1
      end

      uniques
    end
  ```

0. Write a method, `#greatest_key_by_val(hash)` that takes in a hash with any keys but only integers for values, and returns the key with the largest value.

  ```ruby
    def greatest_key_by_val(hash)
      current_best_val = nil
      current_best_key = nil

      hash.each do |key, val|
        if current_best_val.nil? || val > current_best_val
          current_best_val = val
          current_best_key = key
        end
      end

      current_best_key
    end
  ```
