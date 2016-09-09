# Loops

## Introduction

A common saying in computer science suggests that humans are good at performing tasks that are hard to describe but easy to accomplish, such as: "make a sandwich".

Computers, on the other hand, are good at performing tasks that are easy to describe, but hard to accomplish, such as: "write 'oo-la-la' 1000 times". That task might take you a while.. but introduce 5 lines of code:

  ```ruby
    i = 1
    while i <= 1000
      puts "oo-la-la"
      i += 1
    end
  ```

And you're done! Copy and paste the above loop into pry. Remember to use the `clear` command to clear your terminal afterwards!

## The `while` loop

The `while` loop tells your computer to do something over and over again, but only *while* some condition is true. In the example above, we tell the computer to do something *while* `i <= 1000`. Meaning, as soon as `i` reaches 1001, we stop.

This might beg the question, what if `i` never reaches 1001? Or to phase the question differently, what if our condition never becomes true?

  ```ruby
    while 1 == 1
      # ...
    end
  ```

The above loop will run **forever**, until the end of time. This means we have to design our loops carefully!

**All while loops should perform some operation that trends towards a falsey condition.** In our first example, we increment `i` by one with each iteration.

## The `until` loop

The `until` loop is to the `while` loop, what `unless` is to `if`. In other words, `until` is the same as `while !(..)`. We can re-write the first example using an `until` loop like so:

  ```ruby
    i = 1
    until !(i <= 1000)
      puts "oo-la-la"
      i += 1
    end
  ```

or...

```ruby
  i = 1
  until i > 1000
    puts "oo-la-la"
    i += 1
  end
```

All three approaches are perfectly valid! You should use whichever makes more lexical sense -- whichever reads more like natural English.
