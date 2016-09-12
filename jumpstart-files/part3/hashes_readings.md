# Hashes

## Introduction

Complete the [CodeAcademy Hashes][hashes] section if you haven't yet.

Hashes are used for storing key-value pairs. Like arrays, they are an extremely common and useful data structure. Get familiar with them!

A common example of a `Hash` object is a dictionary, where the words are the `keys` in the `Hash`, and the `values` are the definitions.

  ```ruby
    dictionary = {
      "apple" => "a delicious fruit",
      "cat" => "a cute animal",
      "dog" => "a best friend",
      "human" => "not as cute as cats.."
    }

    dictionary["dog"] # ==> "a best friend"
  ```

[hashes]: https://www.codecademy.com/en/courses/ruby-beginner-en-F3loB/1/1?curriculum_id=5059f8619189a5000201fbcb

---
## Basic Structure

Hashes are defined using curly braces:

  ```ruby
    hash = {}
  ```

Inside of the curly braces, we can add key-value pairs. The syntax must follow:

  ```
    key => value
  ```

The symbol uses in the above expression, `=>`, is called a *hash rocket*. It is used to separate key-value pairs. Multiple sets of key-value pairs must be separated by a comma.

  ```ruby
    hash = {
      "key1" => "value1",
      "key2" => "value2",
    }
  ```

  So far, we've only used strings as our keys and values, but we can actually use *any ruby object* as either a key or value -- even other hashes! The following is a perfectly valid hash:

  ```ruby
    valid_hash = {
      5 => "five",
      [] => "array",
      "hash" => {"a" => "b"}
    }
  ```

---
## Bracket Methods

Just like with strings and arrays, ruby hashes have bracket methods. These methods will be the primary mechanism for setting and retrieving values from hashes. For example:

  ```ruby
    hash = {}
    hash[5] = "five"

    p hash      # ==> {5 => "five"}
    p hash[5]   # ==> "five"
  ```

**Test this in pry!**

Asking for a key that doesn't exist in the hash will give you nil.

```ruby
  hash = {1: "one"}
  p hash[5]   # ==> nil
```

### Uniqueness

Note that `keys` in hashes **must be uniq**. If you try to add a new key-value pair where the key already exists, then the old key-value pair will be overwritten.

```ruby
  hash = {3 => "three"}
  hash[3] = "velociraptor"

  p hash[3]   # ==> "velociraptor"
```

---
## `#each`

Hashes in ruby have an `#each` method, just like arrays! This allows us to iterate over the entire collection and do something for each key-value pair.

  ```ruby
    dictionary = {
      "apple" => "a delicious fruit",
      "cat" => "a cute animal",
      "dog" => "a best friend",
      "human" => "not as cute as cats.."
    }

    dictionary.each do |key, value|
      puts "The definition of #{key} is: '#{value}'"
    end

  ```

**Note:** the code block passed to the each method is designed to accept *two arguments*, one for the `key` and one for the `value`.

**Test this in pry!**

---
## Other Useful Methods

Method        | Definition
--------------|-----------
`#keys`       | Returns an array of all the keys
`#values`     | Returns an array of all the values
`#length`     | Returns the number of key-value pairs
`#include?`   | Returns `true` / `false` if the hash has a `key` matching the argument
`#delete`     | Deletes the specified key (and value) from the hash

**Test these in pry!**
