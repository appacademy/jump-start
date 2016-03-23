# More String Methods


```ruby
# This function takes a string and encrypts it by replacing every instance of
# "President" with "Eagle".
def secret_service_encrypt(plaintext)
  plaintext.gsub("President", "Eagle")
end
secret_service_encrypt("The President is in the Presidential suite")
#=> "The Eagle is in the Eagleial suite"
```ruby

The `g` in `gsub` is for global, and it replaces all the matches in the string, while `sub` only replaces the first match.
```
"better".sub("e", "i")      #=> "bitter"
"AAA".gsub("A", "").empty?  #=> true
```
