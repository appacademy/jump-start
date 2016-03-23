# Functions

**Note**: When you're writing a function, indent with two spaces, not four.  Python uses four spaces, but ruby uses two spaces.

Also, when you're writing a function, never use single letters for variable names.  Always write out the full name of the variable.

For example, instead of:

```ruby
def add_two_numbers(a, b)
  return a + b
end

```

You should be writing:

```ruby
def add_two_numbers(first_number, second_number)
  return first_number + second_number
end

```

More example functions:

```ruby
def print_out_yo_dawg # this is a function
  puts "yo dawg"
end

def multiply(first_number, second_number) # this is another function
  return first_number * second_number
end

def squared_product(first_number, second_number) # this function calls another function (multiply) inside
  squared_product = multiply(first_number, second_number) * multiply(first_number, second_number)

  return squared_product
end

```
