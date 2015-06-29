# --------------------------
# --------------------------
# CODE BLOCKS
# --------------------------
# --------------------------



# Anything between do and end is a multi-line code block
1.upto(5) do | number |
  puts number
end


# Single line code block
1.upto(5){ |number| puts number }


# variables created within the bloc are not accessible outside that bloc
# eg cannot use 'number' here, it will fail
# variables created within a block are called 'block variables'
# inside a bloc you can still use 'local variables' which were created outside the bloc


# FIND
# --------------------------

names_array = ["Jason", "Msh", "Fiona", "Jason"]


# find
# ---------
names_array.find { |this_name| this_name == "Jason" }
# => "Jason"


# find_all
# ---------
names_array.find_all{|this_name| this_name == "Jason"}
# => ["Jason", "Jason"]

names_array.find_all{|this_name| this_name != nil}
# => ["Jason", "Msh", "Fiona", "Jason"]


# any?
# ---------
names_array.any?{|this_name| this_name == "Jason"}
# returns a boolean
# => true


# all?
# ---------
names_array.all? {|this_name| this_name == "Jason"}
# Do all names in names_array == "Jason" ?
# returns a boolean
# => false


# delete_if
names_array.delete_if{|this_name| this_name == "Jason"}
# removes all "Jason" objects from the array


# MERGE
# --------------------------
# Used for merging hashes together

hash1 = { "a" => 111, "b" => 222 }
# => {"a"=>111, "b"=>222}
hash2 = { "b" => 333, "c" => 444 }
# => {"b"=>333, "c"=>444}

hash1.merge(hash2)
# Takes both hashes and merges them together
# If there are conflicting keys ("b" in hash2) the second one will win
# => {"a"=>111, "b"=>333, "c"=>444}

# Conflict resolution blocks
hash1.merge(hash2) {|key,old,new| new}
# new wins
hash1.merge(hash2) {|key,old,new| new}
# old wins

hash1.merge(hash2) do |key, old, new|
  # Start conflict resolution
  if old < new
    old
  else
    new
  end
end
# old ("b" => 222) is less than new ("b" => 333)
# old wins


# none of this actually modifies the original hashes, it returns a new hash
# if we want to actually update the hash use a ! as below
hash1.merge!(hash2)


# COLLECT (also known as 'map')
# --------------------------

array = [1,2,3,4,5]
# => [1, 2, 3, 4, 5]
array.collect {|index| index* 10 }
# => [10, 20, 30, 40, 50]
# Takes all items in array and multiplies
# returns a new array, does not alter original




# SORT
# --------------------------

# <=>
# Comparison Operator
# Used to compare two values

# 1 <=> 2
# Returns -1
# Results are:
# -1  (Less than)
# 0   (Equal to)
# 1   (Greater than)

array = [3,1,5,2,4]

array.sort
# => [1, 2, 3, 4, 5]

array.sort.reverse
# => [5, 4, 3, 2, 1]


fruits = ['banana', 'apple', 'orange', 'pear', 'pineapple']

fruits.sort
# Sorts Alphabetically (Ascending)
# => ["apple", "banana", "orange", "pear", "pineapple"]

fruits.sort.reverse
# Sorts Alphabetically (Descending)
# => ["pineapple", "pear", "orange", "banana", "apple"]

fruits.sort {|fruit1,fruit2| fruit1.length <=> fruit2.length}
# Sorts numerically by character length (low to high)
# => ["pear", "apple", "orange", "banana", "pineapple"]

fruits.sort {|fruit1,fruit2| fruit1.length <=> fruit2.length}.reverse
# Sorts numerically by character length (high to low)
# => ["pineapple", "orange", "banana", "apple", "pear"]

fruits.sort_by { |fruit| fruit.length}
# Another shorthand way to sort by length


# NONE OF THIS AFFECTS THE ORIGINAL fruits ARRAY
# TO FORCE UPDATE TO ARRAY ADD THE ! CHARACTER

fruits
# => ["banana", "apple", "orange", "pear", "pineapple"]

fruits.sort_by! { |fruit| fruit.length}
# => ["pear", "apple", "banana", "orange", "pineapple"]

fruits
# => ["pear", "apple", "banana", "orange", "pineapple"]


# TO SORT HASHES, RUBY TURNS THE HASH INTO AN ARRAY

hash = {"c" => 222, "a" => 555, "d" => 111, "b" => 333}

hash.sort
# Returns an Array
# => [["a", 555], ["b", 333], ["c", 222], ["d", 111]]

hash.sort {|item1,item2| item1[0] <=> item2[0]}
# Sorts the hash by their keys alphabetically
# => [["a", 555], ["b", 333], ["c", 222], ["d", 111]]

hash.sort {|item1,item2| item1[1] <=> item2[1]}
# Sorts the hash by their values
# => [["d", 111], ["c", 222], ["b", 333], ["a", 555]]



# INJECT
# --------------------------

# Inject means accumulate
# Inject uses a block variable as a place to put the accumulation, most people name this 'memo'


(1..10).inject{|memo,number| memo + number}
# 1+2+3+4+5+6+7+8+9+10 = 55
# => 55

fruits = ['apple', 'pear', 'banana', 'plum']
# => ["apple", "pear", "banana", "plum"]

longest_word = fruits.inject do |memo, fruit|
  if memo.length > fruit.length
    memo
  else
    fruit
  end
end
# => "banana"



