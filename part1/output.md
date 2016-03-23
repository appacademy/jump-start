# Output

`puts` and `p` are both methods that take an argument and print it. To make our
code more readable, we usually omit the parentheses.

```ruby
# This function prints four phrases, collecting the return value for each. These
# values are returned as an array.
def collect_p_and_puts_return_values
  first_puts = puts "This is shorthand"
  second_puts = puts("for this.")

  first_p = p "The same is true"
  second_p = p("for p.")

  return [first_puts, second_puts, first_p, second_p]
end

collect_p_and_puts_return_values # => [nil, nil, "The same is true", "for p."]
```


`p` is also shorthand for calling `puts` with `#inspect`.

For example:

```ruby

my_array = [1, 2, 3]

puts my_array
# 1
# 2
# 3
# => nil

p my_array
# [1, 2, 3]
# => [1, 2, 3]

```
