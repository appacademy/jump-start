# REPL Exercises

0. Install `pry` via the instructions in the reading

0. Use pry to figure out what 732 * 114 is
  * Create a variable, x, and then assign it to the last return value by using the underscore, `_`
  * Then, divide x by 4

![Math Demo](./assets/repl/demo_math.png)

0. Capitalize a string by using ruby's `#capitalize` method

![Capitalize Demo](./assets/repl/demo_capitalize.png)

0. Type `Integer.instance_methods`, notice that this returns an `Array` of method names that are available for `Integers`. This output is *really* long. We could use the down arrow to scroll down to the bottom, but that would take forever...
  * Press `Q` to truncate the list get a new pry prompt

![Long List Demo](./assets/repl/demo_list.png)
![Truncated List Demo](./assets/repl/demo_truncated_list.png)

0. Re-run `Integer.instance_methods`
  * Look through the list for methods you haven't seen before. Test them out!
  * Again, use `Q` to truncate the output
  * Repeat the process with `String.instance_methods`
