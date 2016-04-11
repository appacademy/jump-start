### In-line `if` and `unless`

* With great power comes great responsibility. You're ready.
* You don't have to do this:
```ruby
  def even?(number)
    if number % 2 == 0
      return true
    end
  end
```
* You can do this instead:
```ruby
  def even?(number)
    return true if number % 2 == 0
  end
```
OR
```ruby
  def even?(number)
    return true unless number % 2 == 1
  end
```
(In reality, you should just return `number % 2 == 0`)
* Only do this for **one line** conditionals. Otherwise, use the long form.
