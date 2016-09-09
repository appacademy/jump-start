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

`A`    | `B`   | `!A`  | `A && B` | `A` \|\| `B`
-------|-------|-------|----------|-------------
`true` |`true` |`false`|`true`    | `true`
`true` |`false`|`false`|`false`   | `true`
`false`|`true` |`true` |`false`   | `true`
`false`|`false`|`true` |`false`   | `false`

Fill out the following truth table:

`A`    | `B`   | `!A && B`  | `!(A || B)` | (`A` && `B`) || !B
-------|-------|------------|-------------|--------------------
`true` |`true` |            |             |
`true` |`false`|            |             |
`false`|`true` |            |             |
`false`|`false`|            |             |
