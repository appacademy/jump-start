# String Solutions

\#3. Write a method `#capitalize` that accepts a string as an argument and capitalizes the first letter of the string. Note: Do not use the built in method `String#capitalize`

  ```ruby
    def capitalize(string)
      first_letter = string[0]
      end_of_string = string[1..-1]

      first_letter.upcase + end_of_string
    end
  ```

\#4. Write a method, `#shout_then_whisper` that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this:

```ruby
  shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"
```

  ```ruby
    def shout_then_whisper(string1, string2)
      shout = string1.upcase
      whisper = string2.downcase

      "#{shout}!! ... #{whisper}"
    end
  ```

\#5. Write a method, `#how_long?` that accepts a string as an argument. Your method should return a new string in the format:

  ```ruby
    how_long?("I am a sentence :)") == "Your string is 18 characters long"
  ```

  ```ruby
    def how_long?(string)
      character_count = string.length
      "Your string is #{character_count} characters long"
    end
  ```

\#6. Write a method, `#hyphenify` that accepts a string as an argument. Your method should remove all the spaces and replace them with hyphens.

  ```ruby
    def hyphenify(string)
      string.gsub(" ", "-")
    end
  ```
