
def welcome(name="World")
	puts "Hello #{name}!"
  return 1 + 1
end

def add(n1=0, n2=0)
	puts n1 + n2
end

def longest_word(words=[])
  longest_word = words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  return longest_word
end

def over_five?(value=nil)
	if value.to_i > 5
    return "Over 5"
  else
    return "Under 5"
  end
end

welcome("Mary")

add(2, 2)

fruits = ['apple', 'pear', 'banana', 'plum']
longest_word(fruits)

over_five?(112 / 18)
