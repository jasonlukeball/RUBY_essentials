# --------------------------
# --------------------------
# MODULES
# --------------------------
# --------------------------

# Modules are wrappers around Ruby code
# Modules are used in conjunction with classes

# Reasons to use Modules:

# Namespaces
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


