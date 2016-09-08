# String Exercises

0. Visit the official documentation for using [Ruby Strings](http://ruby-doc.org/core-2.2.0/String.html). Get *very* familiar with this page -- you'll be visiting it frequently! Use the examples and explanations on this page to help you do the next step.

0. Open `pry`. Create some strings and try **each** of the following methods:
  * `#length`
  * `#upcase`
  * `#downcase`
  * `#delete`
  * `#count`
  * `#gsub`
  * `#start_with?`
  * `#reverse`

0. Write a method `#capitalize` that accepts a string as an argument and capitalizes the first letter of the string. Note: Do not use the built in method `String#capitalize`

  ```ruby
    capitalize("yahoo!") == "Yahoo!"
  ```

0. Write a method, `#shout_then_whisper` that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this:

  ```ruby
    shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"
  ```

0. Write a method, `#how_long?` that accepts a string as an argument. Your method should return a new string in the format:

  ```ruby
    how_long?("I am a sentence :)") == "Your string is 18 characters long"
  ```

0. Write a method, `#hyphenify` that accepts a string as an argument. Your method should remove all the spaces and replace them with hyphens.

  ```ruby
    hyphenify("I am a sentence!") == "I-am-a-sentence!"
  ```
