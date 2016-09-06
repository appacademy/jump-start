# Nil

Here's an example of code that implicitly returns `nil`, because the last thing to get evaluated in the function (`puts`), returns `nil`:
```ruby
# This function takes a catchphrase as an argument, prints it, and returns nil.
def print_catchphrase(catchphrase)
  puts catchphrase
end

return_value = print_catchphrase("Bazinga!") #=> nil
```

Here are two functions that try to decrease a quantity by five. `if`-`elsif` branches will return the value of the branch that gets evaluated. If no branch is evaluated (none of the conditions were true), `nil` is returned:
```ruby
# This function takes an integer and if the integer is greater than or equal to
# five, it returns five less than the integer. Otherwise, it returns nil.
def take_five(initial_quantity)
  if initial_quantity >= 5
    initial_quantity - 5
  end
end

take_five(9) #=> 4
take_five(2) #=> nil
```
In the example above, if the initial_quantity was less than five, the function returned nil because the `if` condition evaluated to false.

In this second example, the method adds an `elsif` branch so it can return the initial_quantity again if it was less than five.
```ruby
# This function takes an integer argument. If the integer is greater than or
# equal to five, it returns five less than the integer. Otherwise, if the
# integer is greater than zero, it returns the integer itself. Integer inputs
# that are not greater than zero cause the function to return nil.
def try_to_take_five(initial_quantity)
  if initial_quantity >= 5
    initial_quantity - 5
  elsif initial_quantity > 0
    initial_quantity
  end
end

try_to_take_five(9) #=> 4
try_to_take_five(2) #=> 2
try_to_take_five(0) #=> nil
```
