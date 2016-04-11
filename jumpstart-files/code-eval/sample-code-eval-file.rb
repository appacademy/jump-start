#Lowest Unique Number [https://www.codeeval.com/open_challenges/103/]

# There is a game where each player picks a number from 1 to 9, writes it on a paper and gives to a guide. A player wins if his number is the lowest unique. We may have 10-20 players in our game.

# INPUT SAMPLE:

# Your program should accept as its first argument an array.

# Example Input: [3, 3, 9, 1, 6, 5, 8, 1, 5, 3]

# OUTPUT SAMPLE:

# Print a winner's position or 0 in case there is no winner. In the example input above the lowest unique number is 6. So player 5 wins.

# Output: 5

def lowest_unique_number(arr)
end

puts lowest_unique_number([3, 3, 9, 1, 6, 5, 8, 1, 5, 3]) == 5
puts lowest_unique_number([9, 2, 9, 9, 1, 8, 8, 8, 2, 1, 1]) == 0

#Word to Digits [https://www.codeeval.com/open_challenges/104/]

# Having a string representation of a set of numbers you need to print this numbers.

# All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"

# INPUT SAMPLE:

# Your program should accept as its first argument a string.

# Example Input: "zero;two;five;seven;eight;four"

# OUTPUT SAMPLE:

# Print numbers in the following way:

# 025784

def word_to_digit(string)
end

puts word_to_digit("zero;two;five;seven;eight;four") == 025784
puts word_to_digit("three;seven;eight;nine;two") == 37892

# Shortest Repetition [https://www.codeeval.com/open_challenges/107/]

# Write a program to determine the shortest repetition in a string.
# A string is said to have period p if it can be formed by concatenating one or more repetitions of another string of length p. For example, the string "xyzxyzxyzxyz" has period 3, since it is formed by 4 repetitions of the string "xyz". It also has periods 6 (two repetitions of "xyzxyz") and 12 (one repetition of "xyzxyzxyzxyz").

# INPUT SAMPLE:

# Your program should accept as its argument a string of up to 80 non-blank characters. E.g.

# "abcabcabcabc"

# OUTPUT SAMPLE:

# Print out the smallest period of the input string. E.g.

# 3


def shortest_repetition(str)
end

puts shortest_repetition("abcabcabcabc") == 3
puts shortest_repetition("bcbcbcbcbcbcbcbcbcbcbcbcbcbc") == 2
puts shortest_repetition("dddddddddddddddddddd") == 1
puts shortest_repetition("adcdefg") == 7

# Morse Code [https://www.codeeval.com/open_challenges/116/]

# You have received a text encoded with Morse code and want to decode it.

# INPUT SAMPLE:

# Your program should accept as its argument a string. Input example is the following:

# example_input_1 = ".- ...- ..--- .-- .... .. . -.-. -..-  ....- ....."

# Each letter is separated by space char, each word is separated by 2 space chars.

# OUTPUT SAMPLE:

# Print out decoded words. E.g.

# example_output_1 = "AV2WHIECX 45"

def morse_code()

end

puts morse_code(".- ...- ..--- .-- .... .. . -.-. -..-  ....- .....") == "AV2WHIECX 45"
puts morse_code("-... .... ...--") == "BH3"


#Hidden Digits [https://www.codeeval.com/open_challenges/122/]

# CHALLENGE DESCRIPTION:

# In this challenge you're given a random string containing hidden and visible digits. The digits are hidden behind lower case latin letters as follows: 0 is behind 'a', 1 is behind ' b ' etc., 9 is behind 'j'. Any other symbol in the string means nothing and has to be ignored. So the challenge is to find all visible and hidden digits in the string and print them out in order of their appearance.

# INPUT SAMPLE:

# Your program should accept as its argument a string. You may assume that there will be no white spaces inside the string. E.g.

# "abcdefghik"

# OUTPUT SAMPLE:

# For each test case print out all visible and hidden digits in order of their appearance. Print out "NONE" in case there is no digits in the string. E.g.

# 012345678

def hidden_digits(str)
end

puts hidden_digits("abcdefghik") == 012345678
puts hidden_digits("Xa,}A#5N}{xOBwYBHIlH,#W") == 05
puts hidden_digits("(ABW>'yy^'M{X-K}q,") == "NONE"
puts hidden_digits("6240488") == 6240488
