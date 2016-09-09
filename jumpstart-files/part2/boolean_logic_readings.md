# Boolean Logic

## Introduction

We're going to introduce several concepts in this reading. Three types of ruby objects:
  * `true`
  * `false`
  * `nil`

We'll also talk about **comparators**, such as "does a equal b?", or "is c greater than d?".

Then, we'll introduce **logical operators** such as `and`, `or`, and `not`.

Finally, we'll discuss the concepts of **truthiness** and **falseness**.

## Booleans

Booleans are `true` and `false`. That's it. They are their own objects, with their own methods! For example:

  ```ruby
    true.to_s # ==> "true"
  ```

Boolean objects are the *return value* of comparator methods. One that we've already seen is the `==` method. Again, the *return value* of the `==` method is either `true` or `false`.

  ```ruby
    1 == "1"            # ==> false
    "pizza" == "pizza"  # ==> true
    false == false      # ==> true
    true == "true"      # ==> false
  ```

**Test these in pry!**

Since `==` is a *method* with a *return value* you can capture that return value in a variable and use it elsewhere.

```ruby
  result = (1 == 1)
  puts result # ==> true
```

## `nil`

`nil` is another object in ruby. It represents nothingness. `nil` also has it's own methods!

  ```ruby
    nil.to_i # ==> 0
  ```

`nil` is often the return value of a method **if you ask for something that doesn't exist.** For example, *what is the 4th character in a 3-character string?*

```ruby
  "abc"[3] # ==> nil
  # remember, indices are 0-based, so "abc"[3] is
  # asking for the 4th character
```

**Test this in pry!**

### Boolean Methods

Rubyists customarily name "boolean methods" with a question mark at the end. A "boolean method" is just a method whose return value is either `true` or `false`. Some examples of built-in boolean methods include:

  ```ruby
    5.even?                    # ==> false
    5.odd?                     # ==> true
    "abc".starts_with?("ab")   # ==> true
    "abc".is_a?(String)        # ==> true
  ```

---

## Comparators

Ruby has several comparator methods that allow us to compare two objets. Remember, the return value of a comparator method is either `true` or `false`!

Method| Example        | Result  
------|----------------|---------
`==`  | `nil == false` | `false`
`<`   | `3 < 4`        | `true`
`>`   | `"B" > "A"`    | `true`
`<=`  | `"C" <= "B"`   | `false`
`>=`  | `9 >= 9`       | `true`

**Test these in pry!** Note: you can compare strings by alphabetical order using `<`, `>`, `<=`, or `>=`. Also note that any two objects can be compared using `==`, but only some objects can be compared using the `<`, `>`, `<=`, or `>=`. For example:

  ```ruby
    "string" >= 5
  ```

This comparison will throw an error. It doesn't make sense! How do you compare a string to an integer?

---
## Logical Operators

Logical operators are like the `+`, `-`, `*`, and `/` of the boolean world! We can operate on booleans in 3 primary manners:

### And: `&&`

The **and** operator (`&&`) combines two boolean values. If *both* of them are true, it evaluates to true. If either or both of them are false, it evaluates to false:

  ```ruby
    puts true && true     # ==> true
    puts true && false    # ==> false
    puts false && true    # ==> false
    puts false && false   # ==> false
  ```

**Test these in pry!**

### Or: `||`

The **or** operator (`||`) evaluates to true if *one or both* of the boolean values is true. It only evaluates to false if both of the booleans are false:
  ```ruby
    puts true || true     # ==> true
    puts true || false    # ==> true
    puts false || true    # ==> true
    puts false || false   # ==> false
  ```

**Test these in pry!**

### Not: `!`

  The **not** operator (`!`) for boolean values works like a negative sign does for numbers. It returns the opposite of the value directly to its right:

  ```ruby
    puts !true    # ==> false
    puts !false   # ==> true
  ```

**Test these in pry!**

---
## Truthiness and Falseness

In ruby, we can say that all objects are *truthy* except for two:
  * `false`
  * `nil`

We can determine the truthiness of an object by using a "double-bang"

  ```ruby
    !!true      # ==> true
    !!false     # ==> false
    !!nil       # ==> false
    !!"string"  # ==> true
    !!5         # ==> true
  ```

**Test these in pry!**

The *truthiness* of an object will come into play when using logical operators as well:

  ```ruby
    true && nil   # ==> false
    true && "abc" # ==> true
    5 & "abc"     # ==> true

    true || nil   # ==> true
    nil || false  # ==> false
    "abc" || nil  # ==> "abc"
    5 || "abc"    # ==> 5
  ```

**Try these in pry!**

Note that the `&&` operator **always** return `true` or `false`.. nothing else. The `||` operator, however, will return *the first truthy value* or false.
