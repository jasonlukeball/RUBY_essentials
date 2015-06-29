# Single line comment

=begin

  Multi line comments are wrapped in =begin & =end tags

=end

# Objects are instances of classes


# --------------------------
# --------------------------
# OBJECT TYPES
# --------------------------
# --------------------------


# --------------------------
# VARIABLES
# --------------------------

# Variables are not not objects
# Variables are named as all lowercase with underscores eg my_variable_name


# Variable scope indicators
# --------------------------

# Lets ruby know the scope of the variable, where it should be available

# Global      $variable
# Class       @@variable
# Instance    @variable
# Local       variable
# Block       variable


# --------------------------
# INTEGERS
# --------------------------

# Fixnum = int
# BigNum = bitint
# Float = decimal

#.class
# Tells you what class the object has

# .abs
# Returns the absolute number

# .next
# Adds 1 to a whole number

# .to_i
# Turn a float into an int

# .to_f
# Turn into into a float

# .floor
# round down to a whole number

# .ceil
# round up to a whole number


# --------------------------
# STRINGS
# --------------------------

# \t
# Tab

# \n
# Line break

# greeting = "Hello"
# "Say #{Greeting}"
# => Say Hello

# puts "1 + 1 = #{ 1 + 1 }"

"hello world".capitalize
# Capitalise first word

"hello world".upcase
# Uppercase

"HELLO WORLD".downcase
# lowercase

"HELLO WORLD".reverse
# Reverse

"HELLO WORLD".length
# Length

"HELLO WORLD".reverse.downcase
# Reverse & Lowercase


# --------------------------
# ARRAYS
# --------------------------

# my_array = ["a", "b", "c"]
# New Array

# my_array[0]
# Get first value

# my_array[0] = "A"
# Replace first value

# my_array << "d"
# Append to array

# my_array.clear
# Empty Array

# my_array = nil
# Delete Array

# my_array = []
# New empty array



# Array Methods
# --------------------------

# my_array.inspect
# inspect the contents of the array

# my_array.to_s
# Convert array to string

# my_array.join
# Merge all values in array into a string
# my_array.join(", ")
# Merge all values in array into a string (separate with comma and space)

# x = "1,2,3,4,5"
# => "1,2,3,4,5"
# x.split(",")
# => ["1", "2", "3", "4", "5"]
# Makes x (string) into an array

# my_array.sort
# Sorts array

# my_array.reverse
# Reverse sort

# my_array.uniq
# Generates a new array with only unique value from my_array

# my_array.uniq!
# Gets unique values from my_array and updates my_array to this new unique set

# my_array.delete_at(2)
# Deletes the value at position 2

# my_array.delete("myValue")
# Delete value by name

# my_array.push("something")
# Another method to append an array

# my_array.pop
# Delete the last item from the array

# my_array.shift("myValue")
# Take the value out of the array

# my_array.unshift
# Put the value back into the array


# my_array1 + my_array2
# Add two arrays together



# --------------------------
# HASHES
# --------------------------

=begin

  my_hash = {
    "first_name"  =>  "jason",
    "last_name"   =>  "ball",
    "age"         =>  33
  }

  puts my_hash

=end


# my_hash.keys
# Returns all key names for this hash

# my_hash.length
# my_hash.size
# Count of key value pairs

# my_hash.to_a
# Convert hash to an array

# my_hash.clear
# my_hash = {}
# Clear hash

# my_hash["DOB"] = "21/11/1981"
# Add a new value to the hash



# --------------------------
# SYMBOLS
# --------------------------

# A symbol is a label used to represent a piece of data
# Symbols are only stored in memory one time, any reuse always writes to the same block in memory

# :my_symbol
# Create a symbol



# --------------------------
# OPERATORS
# --------------------------

=begin

  ==      Equal To
  <       Less Than
  >       Greater Than
  <=      Less Than or Equal To
  =>      Greater Than or Equal To
  !       Not
  !       Not Equal
  &&      And
  ||      Or

  Results are Boolean true/false

=end



my_array = [1,2,3]
my_array.empty?
# Returns false

my_array.include?(2)
# Returns true

x = nil
x.nil?
# Returns True

my_hash = {"first_name" => "jason"}
my_hash.has_key?("first_name")
# Does the hash contain the key?
# Returns true


# --------------------------
# RANGES
# --------------------------

y = 1...10
# => 1...10

[*y]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

alpha = 'a'...'z'
# => a...z

[*alpha]
# => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"]



# --------------------------
# CONSTANTS
# --------------------------

# Are very similar to variables
# Constants are named with CAPITALIZATION
# Anything beginning with a capital letter is considered a constant

hello = "hi there"
# variable

HELLO = "hi there"
# constant



# --------------------------
# --------------------------
# CONTROL STRUCTURES
# --------------------------
# --------------------------


# --------------------------
# CONDITIONALS
# --------------------------


name = "Jason"

if name == "Msh"
  puts "Hi Msh!"
elsif name == "Fi"
  puts "Hi Jason!"
else
  "Hi Someone"
end


puts "Hi Jason" if name == "Jason"
# One Line Conditional

=begin

if thisCondition
  result1
elsif thisCondition
  result2
else
  defaultResult
end

=end


# --------------------------
# CONDITIONALS - SHORTHAND
# --------------------------


# unless
# -----------------
# unless the condition is true, do something

name = "Jason"

unless name == "Jason"
  puts "Hello #{name}"
end

# Could also be written as so
=begin
if name != "Jason"
  puts "Hello #{name}"
end
=end


# case
# -----------------

case
  when name == "Jason"
    puts "Hi Jason"
  when name == "Msh"
    puts "Hi Msh"
  when name == "Fiona"
    puts "Hi Fiona"
  else
    puts "Hello, whoever you are!"
end



# ternary operator
# -----------------

name == "Jason" ? "Hello Jason" : "Hello #{name}"
# boolean ? result1 : result2


# --------------------------
# LOOPS
# --------------------------


x = 0

loop do
  # end condition
  break if x > 10
  # do something
  puts x
  # iterator
  x += 1
end

=begin
  loop do
    end condition
    do something
    increment
  end
=end

# break   = Terminate the whole loop
# next    = Jump to the next loop
# redo    = Redo this loop
# retry   = Start the whole loop over


x = 0

loop do
  # end loop if x == 10
  break if x == 10
  # Skip this iteration if x == 5
  next if x == 5
  # do something
  puts x
  # iterator
  x += 1
end


# WHILE LOOP
# ------------

x = 0

while x <= 10
  # do something
  puts x
  # iterator
  x += 1
end


# UNTIL LOOP
# ------------

x = 0

until x > 10
  # do something
  puts x
  # iterator
  x += 1
end



# --------------------------
# ITERATORS
# --------------------------


# UPTO ITERATION
# ----------------

1.upto(5) do |num|
  puts "Hello " + num.to_s
end
# Hello 1
# Hello 2
# Hello 3
# Hello 4
# Hello 5
# => 1


# EACH ITERATION
# ----------------

names = ["Jason", "Msh", "Fiona"]

names.each do |this_name|
  puts "Hello #{this_name}"
end


# FOR ITERATION
# ----------------

for this_name in names
  puts "Hello #{this_name}"
end



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



# INJECT
# --------------------------



