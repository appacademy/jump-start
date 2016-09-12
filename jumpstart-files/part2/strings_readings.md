# Strings

## Introduction

We've already seen strings several times! Let's cover them in more detail.

## What is a string?

A `String` is an object that represents a sequence of characters in ruby. Strings can contain anything: letters, numbers, special characters... Here are some examples of strings:
  * `"Hello, World!"`
  * `"123456"`
  * `"!@#$%^&"`

## How to make a string

We can make a string by enclosing a sequence of characters in either single ('') or double ("") quotes. These operate identically, **with one important difference**, interpolation. We'll talk about this more later. It's convenient to have two options for making strings for the following reason:

Let's say we want to make a string that looks like this:

  ```
    phrase = 'This isn't ice cream!'
  ```

Or maybe..

  ```
    other_phrase = "Billy says "I love ruby" a lot."
  ```

Neither of the above code snippets are valid because we're trying to use quotation marks inside the string and ruby is getting confused! Let's use one type of quotation to enclose a string that contains the other type:

```ruby
  phrase = "This isn't ice cream!"
  other_phrase = 'Billy says "I love ruby" a lot.'
```

Much better :)

---

## Concatenation & interpolation

Let's say I have two strings and I want to combine them into one:

  ```ruby
    greeting = "Why, hello there "
    name = "Grace"
  ```

I could do so using string `concatenation`:

  ```ruby
    greeting = "Why, hello there "
    name = "Grace"

    puts greeting + name
  ```

**Test this in pry!**

This works well when the two strings are combined one after another. But what if I want to insert one string somewhere in the middle of another? This is where we'll want to use `interpolation`. An important note:

**interpolation only works with double quoted strings!**

  ```ruby
    name = "Yi"

    puts "Why, hello there #{name}! Have a nice day!"
  ```

**Test this in pry!**

Note that you must use the following symbols: `#{..}` whatever ruby code is contained inside the curly braces is `interpolated` into the string. Here's another example:

```ruby
  puts "5 + 7 is #{5 + 7}"
```

---

## Useful Methods

### Indexing & Slicing

Watch the video!

[![Slice](../video_link.png)](https://vimeo.com/181974255)

Argument   | `#slice` example       | `#[]` example    | Result
-----------|------------------------|------------------|---------
Integer    | `"string".slice(1)`    | `"string"[1]`    | `"t"`
\- Integer | `"string".slice(-2)`   | `"string"[-2]`   | `"n"`
2 Integers | `"string".slice(2, 3)` | `"string"[2, 3]` | `"rin"`
Range      | `"string".slice(2..3)` | `"string"[2..3]` | `"ri"`

**Try this in pry!**

### Other Useful Methods

 Method        | Definition
---------------|-----------
 `#length`     | Returns the number of characters in a string (including spaces!)
 `#upcase`     | Converts all letters to uppercase
 `#downcase`   | Converts all letters to lowercase
 `#delete`     | Returns a copy of the string will characters deleted
 `#count`      | Counts the number of times a particular substring occurs
 `#gsub`       | Replaces all occurrences of one substring with another
 `#start_with?`| Returns true/false if the string starts with a particular sub-string
 `#reverse`    | Reverses a string

#### [String Documentation](http://ruby-doc.org/core-2.2.0/String.html)
