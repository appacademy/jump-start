# String Refresher

Here's a quick refresher on a few String methods:
```ruby
"Hey you!".length                                     #=> 8
"answer to life the universe and everything".length   #=> 42
"Hey!".upcase                                         #=> "HEY!"
"Hey!".downcase                                       #=> "hey!"
"bar" + "it" + "one"                                  #=> "baritone"
"#{5**2} or #{4 + 2} to #{8 / 2}"                     #=> "25 or 6 to 4"
"you"[2]                                              #=> "u"
movie_title = "Apocalypse Now"                        #=> "Apocalypse Now"
movie_title[11] = "C"                                 #=> "C"
movie_title                                           #=> "Apocalypse Cow"
"/Users/dak/clients/empire/projects/death_star.tar".split("/")
#=> ["", "Users", "dak", "clients", "empire", "projects", "death_star.tar"]
```
