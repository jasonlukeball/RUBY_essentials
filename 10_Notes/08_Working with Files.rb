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

# New File
file = File.new("test_file.txt", "w")
# Write to file
file.puts "Hello from IRB"

# Append to end of file
file << "Hello again from IRB"

# Append a return character
file << "\n"

# Close & Save file
file.close

# File looks like this:
# 1 Hello from IRB
# 2 Hello again from IRB
# 3



# --------------------------
# READING FROM FILES
# --------------------------

# Open the file
file = File.new("test_file.txt", "r")


# Output a line from the file
file.gets.chomp
# Returns a line from the file
# Each time this is run it returns the next line


# Output the entire file, line by line
File.open("test_file.txt", "r") do |file|
  file.each_line {|line| puts line}
end



# --------------------------
# FILE POINTER
# --------------------------


file.pos
# Returns the position of the file pointer, where we are in the file

file.eof?
# Is End Of File?
# Returns true or false

file.rewind
# Takes you back to the beginning of the file
# Same as file.pos = 0



# --------------------------
# RENAMING & DELETING FILES
# --------------------------


# Create a file
File.new("file.txt", "w")

# Rename the file
File.rename("file.txt", "file_renamed.txt")

# Delete the file
File.delete("File_renamed.txt")


# --------------------------
# COPYING FILES
# --------------------------

# Must use fileutils to do this
require 'fileutils'
FileUtils.cp("test.txt","test2.txt")


# --------------------------
# WORKING WITH DIRECTORIES
# --------------------------


File.expand_path(File.dirname(__FILE__))
# Returns current working directory
# => "/Users/jason_ball/Desktop/my_dir"

Dir.pwd
# Print working directory
# => "/Users/jason_ball/Desktop/my_dir"

Dir.chdir("..")
# Go up one directory
# => 0

Dir.pwd
# Print working directory
# => "/Users/jason_ball/Desktop"

Dir.chdir(File.join("", "Users", "jason_ball", "desktop", "my_dir"))
# Navigate to an explicit path
# => 0

Dir.pwd
# Print working directory
# => "/Users/jason_ball/Desktop/my_dir"

Dir.entries(".")
# List all files in current directory
# => [".", "..", ".adobe", ".anyconnect", ".apdisk", ".atom", ".bash_history", ".bash_profile", ".bash_profile.save", ".bashrc", ".cache", ".CFUserTextEncoding", ".config", ".cordova", ".cups", ".DownloadManager", ".dropbox", ".dropbox-two", ".DS_Store", ".flexlmrc", ".gem", ".gitconfig", ".heroku", ".hushlogin", ".irb-history", ".itmstransporter", ".lesshst", ".local", ".mkshrc", ".mplayer", ".mysql_history", ".netrc", ".npm", ".odbcinst.ini", ".profile", ".putty", ".rnd", ".rvm", ".sqlite_history", ".ssh", ".subversion", ".swt", ".TemporaryItems", ".Trash", ".viminfo", ".wireshark", ".wireshark-etc", ".Xauthority", ".Xcode", ".zlogin", ".zshrc", "Applications", "Books", "Creative Cloud Files", "Desktop", "Development", "Documents", "Downloads", "Dropbox", "Google Drive", "InVision", "Library", "Movies", "Music", "Pictures", "Public", "Samsung", "Sites", "Software", "test.txt"]


Dir.entries(".").each do |entry|
  puts entry
end

# Print all files in current directory
# Returns

# .
# ..
# test_file1.txt
# test_file2.txt
# test_file3.txt

Dir.foreach(".") {|entry| puts entry}
# Alternative way to write
=begin
.
..
test_file1.txt
test_file2.txt
test_file3.txt
=> nil
=end

Dir.mkdir('a_new_directory')
# Creates a new directory
# => 0

Dir.delete('a_new_directory')
# Deletes directory (must be empty or will error)
# => 0


# --------------------------
# EXAMINING FILE DETAILS
# --------------------------


File.new("test.txt", "w")
# => #<File:test.txt>

file = File.new("test.txt", "w")
# => #<File:test.txt>

File.exists?(file)
# => true

File.file?(file)
# => true

File.directory?(file)
# => false

File.readable?(file)
# => true

File.writable?(file)
# => true

File.executable?(file)
# => false

File.size(file)
# => 0

File.dirname(file)
# => "."

File.expand_path(file)
# => "/Users/jason_ball/test.txt"

File.basename(file)
# => "test.txt"

File.extname(file)
# => ".txt"

File.atime(file)
# Last Accessed Timestamp
# => 2015-07-20 16:46:33 +1000

File.mtime(file)
# Modified Timestamp
# => 2015-07-20 16:46:58 +1000

File.ctime(file)
# Do not use this
# Last Status Change Timestamp
# => 2015-07-20 16:46:58 +1000
