# --------------------------
# --------------------------
# WORKING WITH FILES
# --------------------------
# --------------------------

# --------------------------
# INPUT/OUTPUT BASICS
# --------------------------

# Getting information into the program and outputting information from the program

input = gets
"Hello Ruby!"
# => "\"Hello Ruby!\"\n"

input
# => "\"Hello Ruby!\"\n"

input.chomp
# Chomp removes any line breaks if they are the last character
# => "\"Hello Ruby!\""
"Hello Ruby!".chop
# Chop removes the last character, whatever it is
# => "Hello Ruby"

input = gets.chomp
"Hello Ruby"
# => "\"Hello Ruby!\""
# No line breaks

# gets: waits for user input--a single line ending in a return
# chomp: removes any line ending ("\n", "\r", "\r\n")
# chop: would remove ANY final character (chomp is usually better)
input = gets.chomp

# print: outputs a string with no line return
# puts: outputs a string with a line return
print "You just told me: " +input + "."


# Use gets inside a loop for more user input
result = ""
until result == "quit"
  print " > "
  result = gets.chomp
  puts "I heard: #{result}"
end
puts "Goodbye!"


# --------------------------
# FILE SYSTEM BASICS
# --------------------------

# File Paths
# --------------------------

File.join('shared','lib','my_file.rb')
# Returns shared/lib/my_file.rb (Unix/OSX)
# Returns shared\lib\my_file.rb (windows)

# File Permissions (Unix)
# --------------------------

# chmod -   change permissions
# chown -   change file owner


# --------------------------
# FILE PATHS
# --------------------------

# Absolute path
# --------------------------
# /Users/jason_ball/Dropbox/Dev/RUBY/RUBY_essentials/exercise_files/10_Notes/08_Working with Files.rb

# Use forward slashes, even on Windows
puts "/Users/kevin/Desktop/ruby_sandbox"
# File.join ensures platform independence
puts File.join('', 'Users', 'kevin', 'Desktop', 'ruby_sandbox')


# Relative path
# --------------------------
# 08_Working with Files.rb

# ..      move to parent directory
# .       current directory

# __FILE__ is THIS file
puts __FILE__

# expand_path will convert a relative path to an absolute path
# in this case, it returns the full path the file
puts File.expand_path(__FILE__)

# relative paths are easiest when you start with
# this file's directory
puts File.dirname(__FILE__)

# .. "moves back" one directory
puts File.join(File.dirname(__FILE__), '..', "Exercise\ Files")


# --------------------------
# ACCESSING FILES
# --------------------------


# Creating Files
# --------------------------

# Create a file, Instantiate a file object, give it instructions
file = File.new('my_file.txt', 'w')
# write data to the file
file.close


# Opening Files
# --------------------------

# Provide a file with a block of instructions
File.open('my_file.txt', 'r') do |file|
  # read data from the file
end


# Closing Files
# --------------------------

file.close


# File Access Modes
# --------------------------

# r, w, a, r+, w+, a+

# r     Read from start (file must already exist)
# w     Truncate/Write from start (will overwrite if already exists)
# a     Append/Write from the end
# r+    Read/Write (file must already exist)



# --------------------------
# WRITING TO FILES
# --------------------------





# --------------------------
# READING FROM FILES
# --------------------------

# --------------------------
# FILE POINTER
# --------------------------

# --------------------------
# RENAMING & DELETING FILES
# --------------------------

# --------------------------
# WORKING WITH DIRECTORIES
# --------------------------

# --------------------------
# EXAMINING FILE DETAILS
# --------------------------
