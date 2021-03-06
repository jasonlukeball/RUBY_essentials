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

# Global      $my_variable
# Class       @@my_variable
# Instance    @my_variable
# Local       my_variable
# Block       my_variable


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
# => 1 + 1 = 2

"hello world".capitalize
# => "Hello world"
# Capitalise first word

"hello world".upcase
# => "HELLO WORLD"
# Uppercase

"HELLO WORLD".downcase
# => "hello world"
# lowercase

"HELLO WORLD".reverse
# => "DLROW OLLEH"
# Reverse

"HELLO WORLD".length
# => 11
# Length

"HELLO WORLD".reverse.downcase
# => "dlrow olleh"
# Reverse & Lowercase


# --------------------------
# ARRAYS
# --------------------------

my_array = ["a", "b", "c"]
# New Array

my_array[0]
# Get first value

my_array[0] = "A"
# Replace first value

my_array << "d"
# Append to array

my_array.clear
# Empty Array

my_array = nil
# Delete Array

my_array = []
# New empty array



# Array Methods
# --------------------------

my_array.inspect
# inspect the contents of the array

my_array.to_s
# Convert array to string

my_array.join
# Merge all values in array into a string

my_array.join(", ")
# Merge all values in array into a string (separate with comma and space)

x = "1,2,3,4,5"
# => "1,2,3,4,5"

x.split(",")
# => ["1", "2", "3", "4", "5"]
# Makes x (string) into an array

my_array.sort
# Sorts array

my_array.reverse
# Reverse sort

my_array.uniq
# Generates a new array with only unique value from my_array

my_array.uniq!
# Gets unique values from my_array and updates my_array to this new unique set

my_array.delete_at(2)
# Deletes the value at position 2

my_array.delete("myValue")
# Delete value by name

my_array.push("something")
# Another method to append an array

my_array.pop
# Delete the last item from the array

my_array.shift("myValue")
# Take the value out of the array

my_array.unshift
# Put the value back into the array


my_array1 + my_array2
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


my_hash.keys
# Returns all key names for this hash

my_hash.length
my_hash.size
# Count of key value pairs

my_hash.to_a
# Convert hash to an array

my_hash.clear
my_hash = {}
# Clear hash

my_hash["DOB"] = "21/11/1981"
# Add a new value to the hash



# --------------------------
# SYMBOLS
# --------------------------

# A symbol is a label used to represent a piece of data
# Symbols are only stored in memory one time, any reuse always writes to the same block in memory

:my_symbol
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
# Does my_array include the value '2' ?
# Returns true

x = nil
x.nil?
# Does x == nil ?
# Returns True

my_hash = {"first_name" => "jason"}
my_hash.has_key?("first_name")
# Does the hash contain the key "first_name" ?
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