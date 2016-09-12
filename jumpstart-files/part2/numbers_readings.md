# Numbers

## Introduction

Ruby has several different types of objects for representing numbers. We're going to focus on two:
  * `Fixnums`
  * `Floats`

`Fixnums` represent integers: 1, 3, 10, 90332... `Floats` represent numbers with decimal points: 1.3, 10.0, 9.00000001...

---

## Operations

Ruby can perform all the standard mathamatical operations:

  ```ruby
    puts 40 + 2 # Addition:       will print 42
    puts 49 - 7 # Subtraction:    will print 42
    puts 2 * 3  # Multiplication: will print 6
    puts 6 / 2  # Division:       will print 3
    puts 2 ** 3 # Exponentiation: will print 8
  ```

### Integer Division

When we divide two integers in ruby, our answer also *has* to be an integer. For example:

  ```ruby
    puts 6 / 2  # will print 3
    puts 7 / 2  # will print 3, ignoring the remainder of 1
    puts 11 / 3 # will print 3, ignoring the remainder of 2
  ```

**Try this in pry!**

Ruby only calculates the number of whole times that a divisor can divide another number. Aka.. it rounds down.

### The Modulo Operator

If we are interested in the remainder, we can use the modulo operator:

  ```ruby
    puts 6 % 2 # will print 0, 6 is divided evenly by 2
    puts 7 % 2 # will print 1, there is a remainder of 1 when 7 is divided by 2
    puts 11 % 3 # will print 2, there is a remainder of 2 when 11 is divided by 3
  ```

Again, **try this yourself in pry!**

To force a floating-point answer, we can make one of our operands a `Float`:

  ```ruby
    puts 7.0 / 2 # will print 3.5
    puts 7 / 2.0 # will print 3.5
  ```

### Shorthand

Ruby has a nice shorthand for combining arithmetic with variable assignment:

Long Expression | Shorthand
----------------|-----------
`a = a + b`     | `a += b`
`a = a - c`     | `a -= c`
`a = a * d`     | `a *= d`
`a = a / e`     | `a /= e`

  ```ruby
    a = 5
    a -= 2
    puts a # ==> 3
  ```

---

## Order of Operations

So far, we have seen expressions with one operator. What happens if we chain more than one together? Let's try this in `pry`:

  ```ruby
    puts 4 - 2 * 5
  ```

Just like in mathematics, ruby follows a pre-determined order when deciding which operations to carry out first. Remember this one from algebra? The mnemonic is:

`PEMDAS` --> "Please Excuse My Dear Aunt Sally"

Letter | Operation
-------|-----------
P      | Parentheses
E      | Exponentiation
M      | Multiply
D      | Divide
A      | Addition
S      | Subtraction

The table above specifies the order in which mathematical operations are carried out. Parentheses have the highest precedence. addition/subtraction, the lowest.

---

## Other Useful Methods

Class    | Method      | Definition
---------|-------------|-----------
`Float`  | `#round(n)` | rounds a float to `n` decimal places
`Fixnum` | `#odd?`     | returns true / false if a number is odd
`Fixnum` | `#even?`    | returns true / false if a number is even
