# Methods with arguments typically use parentheses.
# Methods without arguments typically do not.
# Parentheses are optional in both cases.

def say_something(argument)
	puts argument
end

def add(argument1,argument2)
	puts (argument1 + argument2)
end

def longest_word(words)
  longest_word = words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

def over_five?(value)
	puts value > 5 ? 'Over 5' : 'Not over 5'
end


say_something("Hello Ruby!")

add(1,120)

words = ['apple', 'pear', 'banana', 'plum']
longest_word(words)

value = 3
over_five?(value)

