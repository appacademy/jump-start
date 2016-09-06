# Loops

Here are a few code examples illustrating the key concepts for loops:

This function employs a while-loop, which we use to do similar work repeatedly:
```ruby
# This function prints "T-Minus, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, Liftoff!",
# each on a new line.
def countdown
  counter = 10

  puts "T-Minus"

  while counter > 0
    puts counter
    counter -= 1
  end

  puts "Liftoff!"
end
```

Here's a more complicated function that combines a while-loop with if-elsif-else branching:
```ruby
# This function prints:
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# Ooga-Chaka Ooga-Ooga
# I can't stop this feeling...
def blue_swede_intro
  beat = 0
  bar = 0

  while bar < 4
    if beat % 2 == 0
      print "Ooga-" #print is like puts, but it doesn't make a newline afterward
    elsif beat == 1
      print "Chaka "
    else
      puts "Ooga"
    end

    if beat == 3
      beat = 0
      bar += 1
    else
      beat += 1
    end
  end

  puts "I can't stop this feeling..."
end
```
