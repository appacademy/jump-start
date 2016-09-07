# Variables & Scope Exercises

0. For the following script, draw the variables / pointers and how they interact with objects in memory. Refer to the video in the reading for help!

  ```ruby
    a = 5
    b = a
    c = b * a
    a = 6

    puts a
    puts b
    puts c
  ```

0. Draw the pointers for the following script. Use an asterisk to represent variables of the same name, but different scope. (ex `a*`)

  ```ruby
    def multiply(a, b)
      c = a * b
      return c
    end

    a = 5
    c = a
    b = multiply(a, c)

    puts b
  ```

0. **Mandatory TA Checkpoint!** Call over a TA and show them your diagrams. Explain how the pointers change throughout your scripts.
