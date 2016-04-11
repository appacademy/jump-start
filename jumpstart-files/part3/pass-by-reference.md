# Pass-By-Reference


Notice how the variable nyse always refers to the same string here, even after the function reassigns work_addres to the white house:
```ruby
nyse = "11 Wall Street"

# This function takes a previous work address and prints a change of address
# form for a newly elected president. The function returns nil.
# Here's a sample output:
# I no longer work here: 11 Wall Street
# Now, I work here: 1600 Pennsylvania Avenue
#
def get_elected(work_address)
  puts "I no longer work here: #{work_address}"

  work_address = "1600 Pennsylvania Avenue"

  puts "Now, I work here: #{work_address}"
end

get_elected(nyse)                                 #=> nil

nyse                                              #=> "11 Wall Street"
                                                  #   **Note** hasn't changed.
```
