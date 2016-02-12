#Write a function sumation that takes a number and returns the sumation of all positive
#intergers upto and including that number.

def sumation(n)

end

puts "\nSumation:\n" + "*" * 15 + "\n"
puts sumation(0) == 0
puts sumation(1) == 1
puts sumation(2) == 3
puts sumation(15) == 120




#write a function that takes a number n and returns the highest prime factor of
#that number. Hint: Helper function.

def highest_prime_factor(num)

end

puts "\nHighest prime factor:\n" + "*" * 15 + "\n"
puts highest_prime_factor(4) == 2
puts highest_prime_factor(6) == 3
puts highest_prime_factor(28) == 7
puts highest_prime_factor(69842) == 743

#write a boolean function zero_sum? that takes an array of intergers and returns
#true if 2 elements in the array sum to zero.

def zero_sum?(arr)

end

puts "\nZero Sum:\n" + "*" * 15 + "\n"
puts zero_sum?([1, -1]) == true
puts zero_sum?([1,1,0,2,1]) == false
puts zero_sum?([1,1,0,2,1,0]) == true
puts zero_sum?([2,3,4,-3,1]) == true



#write a function missing_letters that take in a phrase and returns an array of
#letters in alphabetical order that are not contained in that phrase

def missing_letters(phrase)

end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]
puts missing_letters("we the people of the united states in order to form a more perfect union") == "bgjkqvxyz".split("")


#Write a function count_primes that takes an array of numbers and returns the count
#of odd numbers in that array
def count_odds(numbers)

end

puts "\nCount Odds\n" + "*" * 15 + "\n"

puts count_odds([]) == 0
puts count_odds([2]) == 0
puts count_odds([1,2]) == 1
puts count_odds([1,2,3,4,5,6]) == 3
puts count_odds([123,42,23,71,0]) == 3

#Write a function hide_letter that takes a phrase and a letter to hide and replaces
#all instances of that letter with an underscore
def hide_letter(phrase, letter)

end

puts "\nHide Letter\n" + "*" * 15 + "\n"
puts hide_letter("abc", "d") == "abc"
puts hide_letter("abc", "b") == "a_c"
puts hide_letter("hello, my name is Haseeb", "e") == "h_llo, my nam_ is Has__b"
