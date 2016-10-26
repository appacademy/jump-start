# Boolean Logic Readings

0. Define a method, `odd_integer?`, that accepts an integer, `n`, as an argument. Your method should return `true` or `false` based on whether `n` is odd or even. Do not use the built in `#odd?` method. Instead, think about how you could use the modulo operator, `%`, to determine whether an integer is odd or even.

  ```ruby
    def odd_integer?(n)
      n % 2 == 1
    end
  ```

0. Define a method, `before_tarantula?`, that accepts a string as an argument. The method should return `true` if the argument comes before the word "tarantula" alphabetically.

  ```ruby
    def before_tarantula?(string)
      string < "tarantula"
    end
  ```

0. Fill out the following truth table:

  A      | B     | !A && B    | !(A &#124;&#124; B) | (A && B) &#124;&#124; !B
  -------|-------|------------|---------------------|--------------------|
  `true` |`true` | `false`    | `false`             | `true`
  `true` |`false`| `false`    | `false`             | `true`
  `false`|`true` | `true`     | `false`             | `false`
  `false`|`false`| `false`    | `true`              | `true`


0. Define a method, `#same_type?` that accepts any two objects as arguments. Your method should return true if both objects are the same type (`String`, `Fixnum`, etc.). Otherwise, return false.

  ```ruby
    def same_type?(object1, object2)
      object1.class == object2.class
    end
  ```
