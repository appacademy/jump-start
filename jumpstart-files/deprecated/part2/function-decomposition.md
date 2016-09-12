# Function Decomposition

In the example below, `neighbor_sums` decomposes into `neighbors_in_array` and `sum_array`.

```ruby
# This function takes an array and returns a new array where each element is
# replaced by the sum of its neighbors.  Notice the functions it calls.
def neighbor_sums(array)
  array.map.with_index do |number, index|
    neighbors = neighbors_in_array(array, index)
    sum_array(neighbors)
  end
end

# This function returns an array of the values of the elements directly next
# to a given index.
def neighbors_in_array(array, index)
  neighbors = []

  neighbors << array[index - 1] unless index == 0
  neighbors << array[index + 1] unless index == array.length - 1

  neighbors
end

# This function returns the sum of an array.
def sum_array(array)
  sum = 0

  array.each do |number|
    sum += number
  end

  sum
end


neighbor_sums([1, 5, 3, 2, 8, 0, 6])  # => [5, 4, 7, 11, 2, 14, 0]
```
