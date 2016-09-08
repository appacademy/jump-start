# Type Conversion

## Introduction

We can represent the number 2 in ruby in a variety of different formats:
  * `2`
  * `2.0`
  * `"2"`

Though it may seem strange to represent 2 as a `String`, we often find use cases for this, such as:

Define a method, `#time_string` that accepts 3 arguments: hours, minutes, and seconds (all integers). Convert these integers into one contiguous time string that has the following format:

  ```ruby
    "hh:mm:ss"
  ```

Well.. if we use simple interpolation:

  ```ruby
    "#{hours}:#{minutes}:#{seconds}"
  ```

We might end up with something like this:

  ```ruby
    "12:1:3"
  ```

And this doesn't have the appropriate format! We need something like:

  ```ruby
    "12:01:03"
  ```

To aid us in this challenge, we can use type conversion. Don't worry about solving the above problem now, we'll do it in the exercises!

---

## `to_?`

All three objects: `Fixnums`, `Floats`, and `Strings` have methods that allow us to convert between the types.

For example, if I want to convert from a `String` to a `Fixnum`, I could use the `#to_i` method.

```ruby
  int = "5".to_i
  puts int # ==> 5
```

We can actually convert to/from any and all classes.

```ruby
  5.to_s      # ==> "5"
  5.to_f      # ==> 5.0

  5.3.to_i    # ==> 5
  5.3.to_s    # ==> "5.3"

  "5.6".to_i  # ==> 5
  "5.6".to_f  # ==> 5.6
```

**Test these in pry!**
