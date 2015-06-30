# --------------------------
# --------------------------
# METHODS
# --------------------------
# --------------------------

=begin
A method (or message) in object-oriented programming (OOP) is a procedure associated with an object class.
An object is made up of behavior and data. Data is represented as properties of the object and behavior as methods.
Methods are also the interface an object presents to the outside world.
=end


# Methods must be defined before calling them

def hello_ruby
  puts "Hello Ruby!"
end

hello_ruby
# Calls the method

# Returns....
# Hello Ruby!
# => nil


# Including files
# --------------------------

require "methods.rb"
# require loads the file once
# returns true if it has successfully loaded

load "methods.rb"
# The load method includes the named Ruby source file every time the method is executed
# returns true if it has successfully loaded



