def welcome
	puts "Hello Ruby!"
end

def add
	puts 1 + 1
end

# Underscore between words, like variable names
def longest_word
  words = ['apple', 'pear', 'banana', 'plum']
  longest_word = words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

# Method names can have question marks in them
# Useful for tests and booleans
def over_five?
	value = 30
	puts value > 5 ? 'Value IS Over 5' : 'Value is NOT over 5'
end

=begin
  print "welcome returned: "
  welcome
  puts ""

  print "add returned: "
  add
  puts ""

  print "longest_word returned: "
  longest_word
  puts ""

  print "over_five? returned: "
  over_five?
  puts ""
=end
