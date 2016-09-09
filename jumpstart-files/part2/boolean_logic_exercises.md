# Boolean Logic Exercises

0. Define a method, `odd_integer?`, that accepts an integer, `n`, as an argument. Your method should return `true` or `false` based on whether `n` is odd or even. Do not use the built in `#odd?` method. Instead, think about how you could use the modulo operator, `%`, to determine whether an integer is odd or even.

  ```ruby
    odd_integer?(5) # ==> true
    odd_integer?(6) # ==> false
  ```

0. Define a method, `before_tarantula?`, that accepts a string as an argument. The method should return `true` if the argument comes before the word "tarantula" alphabetically.

  ```ruby
    before_tarantula?("baboon") # ==> true
    before_tarantula?("tarantula") # ==> false
    before_tarantula?("yak") # ==> false
  ```

0. Here is an example of a truth table:

  A      | B     | !A    | A && B   | A  &#124;&#124;  B
  -------|-------|-------|----------|-------------|
  `true` |`true` |`false`|`true`    | `true`
  `true` |`false`|`false`|`false`   | `true`
  `false`|`true` |`true` |`false`   | `true`
  `false`|`false`|`true` |`false`   | `false`

  Fill out the following truth table:

  A      | B     | !A && B    | !(A &#124;&#124; B) | (A && B) &#124;&#124; !B
  -------|-------|------------|-------------|--------------------|
  `true` |`true` |            |             |
  `true` |`false`|            |             |
  `false`|`true` |            |             |
  `false`|`false`|            |             |

0. Define a method, `#same_type?` that accepts any two objects as arguments. Your method should return true if both objects are the same type (`String`, `Fixnum`, etc.). Otherwise, return false.

  ```ruby
    same_type?(5, "abc")    # ==> false
    same_type?(5, 10)       # ==> true
    same_type?(5.0, 10)     # ==> false
    same_type?(true, false) # ==> false
    same_type?(nil, nil)    # ==> true
  ```

To aid you in solving this problem, you can use the `#class` method, which tells you which class a ruby object belongs to.

  ```ruby
    5.class     # ==> Fixnum
    "abc".class # ==> String
  ```
