# Advanced Arrays

Here's a quick example to refresh advanced array topics:
```ruby
# This function returns a copy of an array with the
# first and last elements removed.
def except_first_and_last(array)
  array[1...-1]
end

eighty = Array.new(4, 20)             #=> [20, 20, 20, 20]
eighty[0] -= 5                        #=> 15
eighty[-1] += 5                       #=> 25
eighty                                #=> [15, 20, 20, 25]
forty = except_first_and_last(eighty) #=> [20, 20]
```
