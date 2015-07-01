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


# --------------------------
# INCLUDING FILES
# --------------------------

require "methods.rb"
# require loads the file once
# returns true if it has successfully loaded

load "methods.rb"
# The load method includes the named Ruby source file every time the method is executed
# returns true if it has successfully loaded


# --------------------------
# VARIABLE SCOPE
# --------------------------

# Global      $my_variable
# Class       @@my_variable
# Instance    @my_variable
# Local       my_variable
# Block       my_variable


def welcome
  # The local variable "message" only has scope inside the method "welcome"
  # It cannot be used outside the method
  message = "Hello Ruby!"
  puts message
end

puts message
# This will return an error
# NameError: undefined local variable or method `message' for main:Object


# If I want to use a variable from outside the scope I can use an Instance Variable

@message = "Hello!"

def say_hello
  puts @message
end

say_hello



# --------------------------
# ARGUMENTS
# --------------------------

# Arguments are a comma-separated list of values that are passed into methods

# Methods with arguments typically use parentheses.
# Methods without arguments typically do not.
# Parentheses are optional in both cases.


def say_something(the_thing)
  puts the_thing
end

say_something("I'm the argument")
# => "I'm the argument"

say_something()
# An argument is required, if not provided you'll get an error

# ArgumentError: wrong number of arguments (0 for 1)
# from (irb):118:in `say_something'
#         from (irb):122
#         from /Users/jason_ball/.rvm/rubies/ruby-2.2.1/bin/irb:11:in `<main>'



# Multiple arguments are separated via commas

def addition(arg1,arg2)
  puts (arg1 + arg2)
end

addition(100,20)
# => 120


# Argument defaults are used so that there is a default behaviour when calling a method which requires an argument
# And we dont give it one

def say_something2(thing_to_say = "Hello")
  puts thing_to_say
end

say_something2()
# => Hello

say_something2("Hi There")
# => Hi There


# --------------------------
# RETURN VALUES
# --------------------------

