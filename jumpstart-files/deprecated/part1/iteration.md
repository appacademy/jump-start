# Iteration

Here's a basic example of iteration using `each`:
```ruby
# This function prints out several delicious shrimp dishes.
# Here is a sample output:
#
# Shrimp kabobs
# Shrimp creole
# Shrimp gumbo
# Shrimp soup
# Shrimp stew
# Shrimp burger
# Shrimp sandwich
# That - that's about it.
#
def fruit_of_the_sea
  dishes = ["kabobs", "creole", "gumbo", "soup", "stew", "burger", "sandwich"]

  dishes.each do |dish|
    puts "Shrimp " + dish
  end

  puts "That - that's about it."
end
```

Here's a more interesting example using `each_with_index`:
```ruby
# This function prints out even-indexed elements of an array of famous Stevens.
# It returns the whole array. Here is a sample output:
#
# Steven Spielberg
# Steven McQueen
# Steven Tyler
#
def even_stevens
  surnames = ["Spielberg", "Seagal", "McQueen", "Fernandez", "Tyler", "Gerrard"]

  surnames.each_with_index do |surname, index|
    if index % 2 == 0
      puts "Steven " + surname
    end
  end
end
```

This is a more practical `each_with_index` example:
```ruby
# This function takes a force and a distance as input and returns a torque.
def torque(force, distance)
  force * distance
end

torque(5, -2) # => -10

# This function takes an array of forces and the index of the pivot point. It
# returns the sum of torques around that pivot point.
def net_torque(forces, pivot_index)
  net_torque = 0

  forces.each_with_index do |force, index|
    distance = index - pivot_index
    net_torque += torque(force, distance)
  end

  net_torque
end
loaded_beam = [4, -1, 0, 1, 3]
net_torque(loaded_beam, 1) # => 7
net_torque(loaded_beam, 2) # => 0
net_torque(loaded_beam, 3) # => -7
```

This example uses `chars` to turn a string into an array of characters, so it can iterate over each character:
```ruby
# This function takes a team_name and prints a cheer for that team. Here is a
# sample output for the input "ducks":
#
# Give me a D!
# Give me a U!
# Give me a C!
# Give me a K!
# Give me a S!
# Go ducks!
#
def cheer_squad(team_name)
  team_name.chars.each do |letter|
    puts "Give me a " + letter.upcase + "!"
  end

  puts "Go " + team_name + "!"
end
```
