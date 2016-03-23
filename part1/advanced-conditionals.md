# Advanced Conditionals

Ruby's logical operators allow us to manipulate boolean values.

## Not: `!`

The **not** operator (`!`) for boolean values works like a negative sign does for numbers. It returns the opposite of the value directly to its right:
```ruby
def print_some_not_results
  puts !true    # will print false, because it's the opposite of true
  puts !false   # will print true, because it's the opposite of false
end
```

There is also one more comparator we didn't introduce earlier, the not-equal comparator, `!=`:
```ruby
def print_more_not_results
  puts 1 != 1   # will print false
  puts 1 != 2   # will print true
end
```

## And: `&&`
The **and** operator (`&&`) combines two boolean values. If *both* of them are true, it evaluates to true. If either or both of them are false, it evaluates to false:
```ruby
def print_some_and_results
  puts true && true     # will print true
  puts true && false    # will print false
  puts false && true    # will print false
  puts false && false   # will print false
end
```

## Or `||`
The **or** operator (`||`) evaluates to true if *one or both* of the boolean values is true. It only evaluates to false if both of the booleans are false:
```ruby
def print_some_or_results
  puts true || true     # will print true
  puts true || false    # will print true
  puts false || true    # will print true
  puts false || false   # will print false
end
```

## Truth Tables
We can use a truth table to summarize all the examples above:

`boolean_one` | `boolean_two` | `!boolean_one` | `boolean_one && boolean_two` | `boolean_one` &#124;&#124; `boolean_two`
------------|-------------|--------------|----------------------------|-------------------------------------
`true`        | `true`        | `false`        | `true`                       | `true`
`true`        | `false`       | `false`        | `false`                      | `true`
`false`       | `true`        | `true`         | `false`                      | `true`
`false`       | `false`       | `true`         | `false`                      | `false`

## Precedence, Order of Operations
In Ruby, operators are evaluated in this order:
- `!` (**not**)
- `&&` (**and**)
- `||` (**or**)

```ruby
def print_not_precedence_results
  puts !false && false       # prints false. !false is evaluated first, then &&
end
```

Ruby evaluates logical expressions left-to-right.


## Short-circuit Evaluation
The rules of logic allow for "short-circuit" evaluation. This means we don't have to bother checking the right-hand side of a logical expression for both of the following situations:
 - `true  || (anything)` evaluates to `true` no matter what the right-hand side is.
 - `false && (anything)` evaluates to `false` no matter what the right-hand side is.

Ruby uses short-circuit evaluation, so it will not evaluate the right-hand side of a logical expression in either of the cases above.

Let's simplify a complicated expression:
```ruby
!true && (1 < 2) || true  # First we'll evaluate the not operators
false && (1 < 2) || true  # Now we evaluate the and operator
      false      || true  # We see false && (anything) which evaluates to false.
                          # NOTE: Ruby never evaluates (1 < 2)
          true            # Lastly we evaluate the or operator
```

and one more:
```ruby
false && true || true && true || true && false # First we evaluate the &&'s
    false     || true && true || true && false # short-circuited to false
    false     ||     true     || true && false # evaluated to true
    false     ||     true     ||     false     # evaluated to false. Now the ||s
             true             ||     false     # evaluated to true
                             true              # short-circuited to true
```

## Parenthesization
When we combine multiple logical operators, we should use parentheses to ensure the operations occur in the expected order and to make them easier to read:

```ruby
def print_some_combined_results
  puts (true || true) && false    # will print false
  puts true || (true && false)    # will print true
  puts true || true && false      # will print true, but is not easy to read

  puts !(false || true)            # will print false
  puts (!false) || true            # will print true
  puts !false || true              # will print true, but is not easy to read
end
```

## `Unless` and `Until`

We can make our code easier to read by replacing any "`if`-not" conditions with `unless` and "`while`-not" with `until`
```ruby
# This function takes a numeric input and returns true if it's 0 or greater.
def positive?(number)
  number >= 0
end

positive?(-1) # => false
positive?(0)  # => true
positive?(1)  # => true

# This function takes a numeric input and returns its absolute value.
def absolute_value(number)
  if !positive?(number)
    number *= -1
  end

  number
end

absolute_value(-4) # => 4
absolute_value(24) # => 24

# Here's the same function using unless instead of if-not
def absolute_value(number)
  unless positive?(number)
    number *= -1
  end

  number
end

absolute_value(-3) # => 3
absolute_value(13) # => 13
```

We can rewrite our silly_power_of_two? function from before, using what we've learned.
```ruby
# This function takes an integer input and returns true if it's an odd number.
def odd?(number)
  number % 2 == 1
end

odd?(2) # => false
odd?(3) # => true

# This function takes an integer input and returns true if it's a power of 2.
def silly_power_of_two?(number)

  until number <= 1 || odd?(number)
    number /= 2               # divide the number by two.
  end

  number == 1
end

silly_power_of_two?(16) # => true
silly_power_of_two?(12) # => false
```
