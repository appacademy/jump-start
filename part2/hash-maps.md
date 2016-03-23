# Hash Maps


Here's an example of how we can put build hashes and access their data.
```ruby
  pantry = {
      "eggs" => 12,
      "tomatoes" => 3,
      "peppers" => 5
  }                      #=> {"eggs"=>12, "tomatoes"=>3, "peppers"=>5}

  pantry["onions"] = 2   #=> {"onions" => 2}
  pantry["eggs"]         #=> 12
  pantry["kielbasa"]     #=> nil
  pantry.keys            #=> ["eggs", "tomatoes", "peppers", "onions"]
  pantry.values          #=> [12, 3, 5, 2]
```

Here's a function that iterates over a hash with `each`:
```ruby
# This function takes an inventory as a hash,
# in the form { item => quantity }. It then prints an inventory.
# Here's sample output for the input { "eggs" => 12, "tea" => 1 }:
# eggs: 12
# tea: 1
def print_inventory(inventory)
  inventory.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end
```
