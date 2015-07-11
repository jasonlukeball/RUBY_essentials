# --------------------------
# --------------------------
# MODULES
# --------------------------
# --------------------------

# Modules are wrappers around Ruby code
# Modules are used in conjunction with classes

# Reasons to use Modules:

# --------------------------
# NAMESPACING
# --------------------------
# Namespaces allow you to have class names which don't conflict
# For example if we had a class names 'Date' and used Date.new, this would conflict with Ruby's default Date class which creates a date

# Wrapping the class Date inside of a Module, keeps things completely separate from any other classes
module DateOfMeeting
  class Date
    # ...
  end
end

# Create a new object from the Date class within the DateOfMeeting Module
meeting = DateOfMeeting::Date.new
puts meeting


# --------------------------
# MIXINS
# --------------------------

# Ruby only allows classes to inherit from one superclass
# If additional functionality is needed, it can be placed into a module and mixed in

# This module contains code that is common to many classes: Person, Teacher & Student
# Rather than writing it out each time within each class, we can create the code once, and then include it into each class
# This is a good practice, because if we need to change the ContactInfo code, we do it in one place, not many

module ContactInfo

  attr_accessor :first_name, :last_name, :city, :state, :zip_code

  def full_name
    return @first_name + " " + @last_name
  end

  def city_state_zip
    csz = @city
    csz += ", #{@state}" if @state
    csz += " #{@zip_code}" if @zip_code
    return csz
  end

end


class Person
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


class Teacher
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


class Student
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


jason = Person.new
jason.first_name = "Jason"
jason.last_name = "Ball"
puts jason.full_name

mr_smith = Teacher.new
mr_smith.first_name = "Rob"
mr_smith.last_name = "Smith"
puts mr_smith.full_name


# --------------------------
# LOAD, REQUIRE & INCLUDE
# --------------------------

# Modules are usually kept in separate files
# Module files serve as code libraries, which are pulled in when required

# Ways to load modules into Ruby

# --------
# LOAD
# --------
# loads in a source file every time it is called

# --------
# REQUIRE
# --------
# loads the source file only once, and knows it has been loaded

# --------
# INCLUDE
# --------
# is used ONLY to include modules, has NOTHING to do with loading files
