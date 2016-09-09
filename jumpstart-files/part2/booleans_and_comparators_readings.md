# Booleans and Comparators

## Introduction

We're going to introduce several concepts in this reading. Three types of ruby objects:
  * `true`
  * `false`
  * `nil`

We'll also talk about making comparisons, such as "a equals b", or "c is greater than d".

## Booleans

Booleans are `true` and `false`. That's it. They are their own objects, with their own methods!! For example:

  ```ruby
    true.to_s # ==> "true"
  ```

Boolean objects are the *return value* of comparator methods. One that we've already seen is the `==` method. Again, the *return value** of the `==` method is either `true` or `false`.

  ```ruby
    1 == "1"            # ==> false
    "pizza" == "pizza"  # ==> true
    false == false      # ==> true
    true == "true"      # ==> false
  ```

**Test these in pry!**

Since `==` is a *method* with a *return value* I can even capture that return value in a variable and use it elsewhere.

```ruby
  result = (1 == 1)
  puts result # ==> true
```

### Bang

The `!` (bang) operator -- also known at 'not' -- will convert between the two booleans.

```ruby
  !true # ==> false
  !false # ==> true
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

Rubyists customarily name "boolean methods" with a question mark at the end. A "boolean method" is just a method whose return value is either `true` or `false`. Some that examples of build in methods include:

  ```ruby
    5.even?                    # ==> false
    5.odd?                     # ==> true
    "apple".starts_with?("ap") # ==> true
    3.9.is_a?(Float)           # ==> true
  ```
  
---

## Comparators

Ruby has several comparator methods that allow us to compare two objets here are a few of them:

Method| Example        | Result  
------|----------------|---------
`==`  | `nil == false` | `false`
`<`   | `3 < 4`        | `true`
`>`   | `"B" > "A"`    | `true`
`<=`  | `"C" <= "C"`   | `true`
`>=`  | `9 >= 8`       | `true`

**Test these in pry!** Note: you can compare strings by alphabetical order using `<`, `>`, `<=`, or `>=`.
