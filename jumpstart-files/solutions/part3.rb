### Answers for some of Part 3 Exercises

def longest_run_digit(number)
  number_as_string = number.to_s
  result = number_as_string[0]
  longest_run = 1
  this_run = 1
  (1...number_as_string.length).each do |index|
    if number_as_string[index] == number_as_string[index - 1]
      this_run += 1
    else
      if this_run > longest_run
        longest_run = this_run
        result = number_as_string[index - 1]
      end
      this_run = 1
    end
  end
  if this_run > longest_run
    longest_run = this_run
    result = number_as_string[-1]
  end
  result.to_i
end

def all_words_pair(string)
  words = string.split(/ /)
  result = []
  for index1 in 0...words.length - 1
    for index2 in (index1 + 1)...words.length
      result << [words[index1], words[index2]]
    end
  end
  result
end

def any_make_yahtzee?(words)
  0.upto(words.length - 1) do |index1|
    0.upto(words.length - 1) do |index2|
      if words[index1] + words[index2] == "yahtzee"
        return true
      end
    end
  end
  false
end

def longest_word(words)
  words.max_by(&:length)
end

def longest_word(words)
  words.max_by{|x| x.length}
end

def is_prime?(number)
  number > 1 && (2..number**0.5).to_a.count{|n| number % n == 0} == 0
end

def list_primes(n)
  (2..n).select{|number| is_prime?(number)}
end
