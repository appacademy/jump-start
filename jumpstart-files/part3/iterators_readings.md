# Iterators

## Introduction

Iterators are loops of a fixed length. Using while loops, we do something while some condition is met. With iterators, we'll just do something N times. These methods can be useful when we know beforehand the number of necessary iterations.

---
## `#times`

Let's tell the computer to do something 7 times:

  ```ruby
    7.times do
      puts "Yee-haw!"
    end
  ```

We can also use code blocks to determine which iteration we're on.

  ```ruby
    7.times do |n|
      puts n
    end
  ```

**Test this in pry!**

---
### `#upto` and `#downto`

Let's count from 10 up to 20.

  ```ruby
    10.upto(20) do |n|
      puts n
    end
  ```

Now, let's count down from 10 to 1.

  ```ruby
    10.downto(1) do |n|
      puts n
    end
  ```

**Test these in pry!**

---
### `#step`

Lastly, let's count from 0 to 100, but in increments of 5.

  ```ruby
    0.step(100, 5) do |n|
      puts n
    end
  ```

**Test this in pry!**
