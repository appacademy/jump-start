# Loops

## Introduction

Complete the [CodeAcademy Loops][Loops] section if you haven't yet.


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


[Loops]: https://www.codecademy.com/courses/ruby-beginner-en-XYcN1/0/1?curriculum_id=5059f8619189a5000201fbcb
---

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

## `break` and `next`

`break` and `next` are two keywords that we can use inside of any ruby loop. So far, we only know `while` and `until`, but we'll learn more later and `break` and `next` will apply to them as well!

`break` allows us to exit a loop early, similar to how `return` exits a method early.
`next` will tell our loop to jump to the next iteration.


We could re-write our first `while` loop like so:

  ```ruby
    i = 1
    while true
      break if i > 1000
      puts "oo-la-la"
      i += 1
    end
  ```

The `next` command is good for skipping over irrelevant iterations. Let's say we have the following problem statement:

  *Define a method, sum_odds(n), that accepts an integer, n, as an argument. Sum all the odd integers between 0 and n.*

  ```ruby
    def sum_odds(n)
      i = 0
      sum = 0

      while i <= n
        next if i.even?
        sum += i
      end

      sum
    end
  ```
