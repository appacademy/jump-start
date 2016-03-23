# Numbers

## Operators

Ruby can do all the usual arithmetic a calculator would do:

```ruby
$ def print_some_arithmetic_results
  puts 40 + 2 # Addition:       will print 42
  puts 49 - 7 # Subtraction:    will print 42
  puts 2 * 3  # Multiplication: will print 6
  puts 6 / 2  # Division:       will print 3
  puts 2**3   # Exponentiation: will print 8
end
```

Notice all of the numbers above are integers (they don't have decimal points).

Computers store integers and floating-point numbers (like `2.5` or `3.333...`) in different ways.

## Integer Division

When we do math in Ruby, our answer will be an integer if all of the inputs were integers. To make this work, ruby uses integer division, ignoring any fractional components (remainders) in the answer:
```ruby
def print_some_integer_division_results
  puts 6 / 2 # will print 3
  puts 7 / 2 # will print 3, ignoring the remainder of 1
  puts 8 / 2 # will print 4
end
```

If we are interested in the fractional component of division, we can use the modulo operator:
```ruby
def print_some_modulo_results
  puts 6 % 2 # will print 0, 6 divides evenly by 2
  puts 7 % 2 # will print 1, there is a remainder of 1 when 7 is divided by 2
  puts 8 % 2 # will print 0, there is no remainder when 8 is divided by 2
end
```

To force a floating-point answer, we can make one of our inputs a float:
```ruby
def print_some_more_division_results
  puts 7.0 / 2 # will print 3.5
  puts 7 / 2.0 # will print 3.5
end
```

## Shorthand

Ruby has a nice shorthand for combining arithmetic with variable assignment:

Long Expression                  | Shorthand
---------------------------------|-----------
`number = number + 1`            | `number += 1`
`number = number - 2`            | `number -= 2`
`number = number * other_number` | `number *= other_number`
`number = number / 3`            | `number /= 3`
**Note**: There are many valid shorthand operators, but these are the most common.

Here are two functions that make use of the shorthand:

```ruby
def number_doubler(number)
  number *= 2 # shorthand for: number = number * 2
  return number
end

def next_smallest_integer(integer)
  integer -= 1 # shorthand for: integer = integer - 1
  return integer
end
```
