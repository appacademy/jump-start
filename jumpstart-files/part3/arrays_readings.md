# Arrays

Complete the [Codecademy Arrays][Arrays] section if you haven't yet.

 [Arrays]: https://www.codecademy.com/courses/ruby-beginner-en-F3loB/0/1?curriculum_id=5059f8619189a5000201fbcb

---
# Array Refresher
Here's a quick refresher on a few Array methods:
```ruby
["Anakin", "Luke", "Leia"].length    #=> 3
[].size                              #=> 0
[0, 1, 2].count                      #=> 3
["ice", "ice", "baby"].count("ice")  #=> 2
droids = ["C-3PO", "R2-D2", "MSE-6"] #=> ["C-3PO", "R2-D2", "MSE-6"]
droids[0]                            #=> "C-3PO"
droids[2]                            #=> "MSE-6"
droids[-1]                           #=> "MSE-6"
droids[-3] = "BB-8"                  #=> "BB-8"
droids                               #=> ["BB-8", "R2-D2", "MSE-6"]
droids.first                         #=> "BB-8"
droids.last                          #=> "MSE-6"
droids.include?("R2-D2")             #=> true
droids.include?("Chewie")            #=> false
```

Here's how we can use `push` (`<<`), `pop`, `unshift`, and `shift`
```ruby
numerals = ["IV", "V"]               #=> ["IV", "V"]
numerals.push("VI")                  #=> ["IV", "V", "VI"]
numerals << "I"                      #=> ["IV", "V", "VI", "I"]
one = numerals.pop                   #=> "I"
numerals                             #=> ["IV", "V", "VI"]
numerals.unshift(one)                #=> ["I", "IV", "V", "VI"]
one = numerals.shift                 #=> "I"
numerals                             #=> ["IV", "V", "VI"]
["H", "d", "r"].join("o")            #=> "Hodor"
```

---
## Useful Methods
  * `#length` or `#size` or `#count`
  * `array[index]`
  * `array[index] = val`
  * `#first`
  * `#last`
  * `#include?(value)`
  * `#push(value)` to add a value onto the end (also `<<`)
  * `#pop` to pop off a value from the end
  * `#unshift(value)` to stick a value onto the beginning
  * `#shift` to shift off a value from the beginning
  * `#join(separator)` to join an array of strings, separated by a delimiter
