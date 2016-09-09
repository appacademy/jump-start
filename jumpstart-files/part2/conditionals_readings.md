# Conditionals

## Introduction

Conditionals are how we tell computers "if this.. do that! otherwise.. do this!" There a are a couple key words to learn:
  * `if`
  * `else`
  * `elsif`
  * `unless`

Let's learn how to use these tools to create powerful code! **This is where things get fun :)**


## `if`

The syntax for using `if` blocks in ruby looks like this:

  ```ruby
    if _______ #this thing is true
      # do something!
    end
  ```

For example, we could say:

  ```ruby
    if 1 == 1
      puts "yup! 1 equals 1"
    end
  ```

`if` statements become even more powerful when we write methods that can do different things.

  ```ruby
    def exclaim_even_or_odd(n)
      if n.odd?
        return "this is odd!"
      end
      "this is even"
    end
  ```

## `else`

The `else` statement is an *optional* add-on to the `if` statement. Let's say we wanted to change our method above to `puts` rather than `return`...

```ruby
  def exclaim_even_or_odd(n)
    if n.odd?
      puts "this is odd!"
    end
    puts "this is even"
  end
```

This won't work as we intended, because "this is even" will always be printed! We could use an `if .. else` statement to accomplish this..

```ruby
  def exclaim_even_or_odd(n)
    if n.odd?
      puts "this is odd!"
    else
      puts "this is even"
    end
  end
```

## `elsif`

In ruby, we have the ability to chain an infinite number of `if` statements together using `elsif`. For example..

  ```ruby
    def do_i_know_you?(name)
      if name == "Pierre"
        return "I know this guy!"

      elsif name == "Kofi"
        return "We are friends!"

      elsif name == "Fatima"
        return "We go wayyy back"

      else
        return "Sorry, I don't know you!"
      end
    end
  ```

## `unless`

Finally, ruby gives us one move conditional to use: `unless`. `unless` is identical to `if !`..

  ```ruby
    unless x #===>>> if !x
    if x     #===>>> unless !x
  ```

We can make `if !` statements read more like English if we refactor them to use `unless`. For example:

  ```ruby
    if !(x == 5)
      # do something...
    end

    unless x == 5
      # do something
    end
  ```

Both conditional statements above are perfectly valid! But read them both aloud and think about which seems more intuitive to work with.

## One-liners

In ruby , we can write *short* conditionals on one line using `if` and `unless`.

  ```ruby
    if x == 10
      puts "yay 10!"
    end
  ```

Can be refactored into...

  ```ruby
    puts "yay 10!" if x == 10
  ```

We can make one-liner `unless` statements too:

  ```ruby
    puts "yay not 10!" unless x == 10
  ```

This is **very** common practice in ruby. Generally, if you can make the conditional fit on one line, put it on one line. Note that you **cannot** use one-lines when writing `if .. else` statements.
