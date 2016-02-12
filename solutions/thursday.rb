def longest_run_digit(num)
  num_as_string = num.to_s
  result = num_as_string[0]
  longest_run = 1
  this_run = 1
  (1...num_as_string.length).each do |i|
    if num_as_string[i] == num_as_string[i - 1]
      this_run += 1
    else
      if this_run > longest_run
        longest_run = this_run
        result = num_as_string[i - 1]
      end
      this_run = 1
    end
  end
  if this_run > longest_run
    longest_run = this_run
    result = num_as_string[-1]
  end
  result.to_i
end

def all_words_pair(str)
  words = str.split(/ /)
  result = []
  for i in 0...words.length - 1
    for j in (i + 1)...words.length
      result << [words[i], words[j]]
    end
  end
  result
end

def any_make_yahtzee?(words)
  0.upto(words.length - 1) do |i|
    0.upto(words.length - 1) do |j|
      if words[i] + words[j] == "yahtzee"
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

def is_prime?(n)
  n > 1 && (2..n**0.5).to_a.count{|x| n % x == 0} == 0
end

def list_primes(n)
  (2..n).select{|x| is_prime?(x)}
end
