# Debugging Exercises

Imagine you wrote the following code:

```ruby
def is_palindrome?(word)
  index = 0

  while index < word.length / 2
    start_letter = word[index]
    end_letter = word[word.length - 1 - index]

    if start_letter != end_letter
      return false
    end

    index += 1
  end

  true
end

sample_word = "detartrated"

```

Watch [this video][write-out-video] at 2x and compare it to the code.  We recommend putting this window on the left half of the screen and the youtube video on the right half.  Follow along on a piece of paper.  (The "t" in the `end_letter` row should have been crossed out in the video.)


[write-out-video]: https://youtu.be/MpkXN5V-DqI

## Exercises

### Back and forth

- Given the following code, write out what all the variables are, like in the video above, as you "run" the code in your head.  Write out what the code returns.  Do not run the code on your computer.

```ruby
def includes_a_word_forwards_and_backwards?(sentence)
  words = sentence.split

  first_word_index = 0

  while first_word_index < words.length
    second_word_index = first_word_index + 1

    while second_word_index < words.length
      first_word = words[first_word_index]
      second_word = words[second_word_index]

      return true if first_word == second_word.reverse

      second_word_index += 1
    end

    first_word_index += 1
  end

  false
end

sentence = "i trot to eat a tort"
p includes_a_word_forwards_and_backwards?(sentence)


```

Then compare what you wrote to [the answer.](./write-out-answer-1.md).  You can now run the code on your computer.

### Buggin' out

There is a bug in the following code.  Figure out where it is by writing out all the variables as you "run" the code in your head.  Do not run the code on your computer.

```ruby

def pair_greater_than_n(numbers, n)
  first_index = 0

  while first_index < numbers.length
    second_index = first_index + 1
    first_number = numbers[first_index]

    while second_index <= numbers.length
      second_number = numbers[second_index]

      return true if first_number + second_number > n

      second_index += 1
    end

    first_index += 1
  end

  false
end


sample_numbers = [1, 4, 5]
p pair_greater_than_n(sample_numbers, 6)

```


Then check [the answer](./write-out-answer-2.md).  You can now run the code on your computer.
