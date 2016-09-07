# Return Values

## Introduction

**All methods have a return value.** Meaning, if I set a variable equal to the result of invoking some method, then that variable will have some value.

```ruby
  def multiply(a, b)
    return a * b
  end

  product = multiply(3, 5)

  puts product # ==> 15
```

Above, `product` is a variable that stores the *return value* of the multiply method.

Until now, we have been building methods that `puts` useful information to the terminal. For the majority of this course, we will write methods that are supposed to return a particular value. We can then `puts` the return value to see it.

## Implicit vs Explicit Returns

Ruby has two types of returns: *implicit* and *explicit*.

### Explicit Returns

Methods that have *explicit* returns use the `return` statement. If you don't see the word `return` somewhere in the method, then the method has no explicit returns.

Explicit returns are used to *return early* from a method. This means that once the method hits the `return` statement, it will stop executing!

```ruby
  def say_hi_not_bye
    return "hello!"
    puts "will you see me? byyeee"
  end
```

In the method above, we will never invoke the `puts` method. You should also know that a method can only ever have **1 return value**.

```ruby
  def add_and_multiply(a, b)
    return a + b
    return a * b
  end
```

The above method **doesn't make sense**. We will only ever hit the first return statement.

### Implicit Returns

Since we already noted that **all methods must have a return value**, what happens if we don't write the word `return` in our method?

```ruby
  def multiply(a, b)
    a * b
  end

  product = multiply(3, 5)

  puts product # ==> 15
```

As it turns out, **this works!** If no `return` statement is made, then ruby will default to using the last line evaluated as the return value. You will commonly see methods that use *both* implicit and explicit returns.

```ruby
  def is_billy?(name)
    if name == "billy"
      return true
    end
    false
  end

  puts is_billy?("avi") # ==> false
  puts is_billy?("billy") # ==> true
```

We used a conditional (an `if` statement) in the above code snippet, and we'll get to those soon! But for now, try to focus on the the return value from the method `#is_billy?`. Here, we have both an implicit return *and* an explicit return. If the person in question is in fact billy, then we use an *explicit* return to return true! Otherwise, we use an *implicit* return to return false.
