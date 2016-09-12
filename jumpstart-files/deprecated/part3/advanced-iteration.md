# Advanced Iteration

```ruby
# This function takes a player's shooting record as an array of "miss"ed and
# "made" shots. It prints the appropriate commentary for each shot using the
# following rules:
# second shot made in a row: print "He's heating up"
# third shot made in a row: print "He's on fire"
# fourth through seventh: print "Boom-shaka-laka!"
# The streak is reset if eight shots in a row are made.

def nba_jam(shots)
  current_streak = 0

  shots.each do |shot|
    if shot == "made"
      current_streak += 1
    else
      current_streak = 0
    end

    if current_streak == 2
      puts "He's heating up"
    elsif current_streak == 3
      puts "He's on fire"
    elsif current_streak > 3 && current_streak < 8
      puts "Boom-shaka-laka!"
    elsif current_streak > 8
      current_streak = 0
    end
  end

end

shaqs_shooting_record = ['made', 'made', 'miss', 'made', 'made', 'made', 'made']
nba_jam(shaqs_shooting_record)
# He's heating up
# He's heating up
# He's on fire
# Boom-shaka-laka!
```
